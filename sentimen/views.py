from datetime import datetime
from django.http import HttpResponse, JsonResponse
from django.shortcuts import redirect, render
import pandas as pd
from core.preprocessing import Preprocessing
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from django.db.models import Count
from django.db.models import Q
from sentimen.models import Matakuliah, Training, Testing, Pengguna
from django.contrib import messages
from django.conf import settings

from Sastrawi.Stemmer.StemmerFactory import StemmerFactory
# alur
import time
import nltk
import csv
import string, re
# library sastrawi(stemming, normalisasi)
from Sastrawi.StopWordRemover.StopWordRemoverFactory import StopWordRemoverFactory
from Sastrawi.Stemmer.StemmerFactory import StemmerFactory
from sklearn.model_selection import train_test_split
from sklearn.naive_bayes import MultinomialNB
from sklearn.metrics import accuracy_score
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics import f1_score, recall_score, precision_score, confusion_matrix, accuracy_score,classification_report




# Add the following line to the top of your code
from django.core.files.storage import FileSystemStorage

# Create your views here.
# create stemmer
factory = StemmerFactory()
stemmer = factory.create_stemmer()
# Controler Dashboard
def dashboard(request):
    # return HttpResponse(request.session['username'])
    # if(request.session.has_key('isLogin')):
        context = {
            'total_uji': Testing.objects.count(),
            'total_latih': Training.objects.count(),
        }
        return render(request, 'dashboard/dashboard.html', context)
    # else:
    #     messages.warning(request, 'Silahkan login terlebih dahulu')
    #     return redirect('/')
    
# End Controler Dashboard

# logout start
def logout(request):
    try:
      del request.session['isLogin']
      del request.session['username']
    except:
      pass
    return redirect('/')
# end logout function
# start Controller Auth
# Controler Dashboard
def auth(request):
    context = {
        'total_journal': LearningJournal.objects.count(),
        'total_mahasiswa': LearningJournal.objects.values('nim').annotate(count_nim=Count('nim')).count(),
        'total_matkul': Matakuliah.objects.count(),
    }
    return render(request, 'dashboard.html', context)
# end controller auth



# logout start
def logout(request):
    try:
      del request.session['isLogin']
      del request.session['username']
    except:
      pass
    return redirect('/')
# end logout function
# start Controller Auth
# Controler testing
def auth(request):
    context = {
        'total_journal': LearningJournal.objects.count(),
        'total_mahasiswa': LearningJournal.objects.values('nim').annotate(count_nim=Count('nim')).count(),
        'total_matkul': Matakuliah.objects.count(),
    }
    return render(request, 'testing.html', context)
# end controller auth

# Controler Login
def login(request):
    # return HttpResponse("works ",request.session['isLogin'])
    if request.method == "POST":
        # data = {
        #     'email': request.POST.get("email"),
        #     'password': request.POST.get("password"),
        # }
        if request.POST.get('username') == 'admin' and request.POST.get('password') !='admin123':
            messages.warning(request, 'username yang anda masukkan salah. silahkan cek kembali')
            return redirect('login')
        elif request.POST.get('username') != 'admin' and request.POST.get('password') !='admin123':
            messages.warning(request, 'username dan password yang anda masukkan salah. silahkan cek kembali')
            return redirect('login')
        else:
            request.session['username'] = request.POST.get('username')
            request.session['isLogin'] = 1
            # return HttpResponse(request.session['username'])
            return redirect('testing')
            
    
    return render(request, 'login.html')
# End Controler Login




#controller tambah data uji
def add_uji(request):
    if request.method == 'POST' and request.POST.get("jenis") == '2':
          
            file = request.FILES['file']        
            fs = FileSystemStorage()
            filename = fs.save(file.name, file)
            uploaded_file_url = fs.url(filename)
            excel_file = uploaded_file_url
            # print(excel_file) 
            empexceldata = pd.read_csv("."+excel_file,encoding='utf-8')
            # print(type(empexceldata))
            dbframe = empexceldata
            for dbframe in dbframe.itertuples():
                 
                # fromdate_time_obj = datetime.strptime(dbframe.DOB, '%d-%m-%Y')
                obj = Testing.objects.create(username=dbframe.username, komentar=dbframe.komentar)
                # print(type(obj))
                obj.save()
 
            messages.success(request, 'Import Data Latih Berhasil')
            return redirect('data_latih')
    elif(request.method == 'POST'):
        model               = Testing()
        model.username      = request.POST.get("username")
        model.komentar      = request.POST.get("komentar")
        model.save()
        messages.success(request, 'Simpan Data Uji Berhasil')
        return redirect('data_uji')
    return render(request, 'testing/_form.html')
# End Controler Data Latih


# Controler Data uji
def data_uji(request):
    testing_list = Testing.objects
    context = {
            'data': testing_list.all,
        }
    return render(request, 'testing/index.html', context)


# End Controler Data uji
def testing(request):
    no_of_items={}
    feature_set={}
    dataset={}
    if request.method == 'POST':
        komentar = request.POST.get("komentar")
        
        if komentar == '':
            messages.success(request, "Komentar Tidak Boleh Kosong ")
            return redirect('testing')
        else:
            # load data training
            training = Training.objects.all()
            df_preprocessed = pd.DataFrame(list(training.values()))
            preprocess = []
            nilaiProbabilitas = {}
            start_time = time.time()
            tweets = []
            # For each sentence in dataset
            for row in df_preprocessed.iterrows():
                kategori = row[1][3]
                #define cleaning functions for training set
                def get_features(wordlist):
                    wordlist = nltk.FreqDist(wordlist)
                    word_features = wordlist.keys()
                    return word_features

                def get_tweets(tweets):
                    all_words = []
                    for (words, sentiment) in tweets:
                        all_words.extend(words)
                    return all_words
                    
                def take_features(document):
                    features = {}
                    for word in word_features:
                        features['contains(%s)' % word] = (word in document)
                    return features
                words=getFeatureVector(row[1][2])
                tweets.append((words, kategori ))
                    
            # return HttpResponse(tweets)
            word_features = get_features(get_tweets(tweets))

            #build training sets using word_features
            training_set = nltk.classify.apply_features(take_features, tweets)
            # return HttpResponse(tweets)
            #build classifier
            classifier = nltk.NaiveBayesClassifier.train(training_set)
            classifier.show_most_informative_features()
            print("Batas=============")
            classifier.most_informative_features()
            # nltk.classify.naivebayes.demo()
            # return HttpResponse(classifier.classify(take_features(komentar)))
            # Weighted probability of a word for a category
            
            result=classifier.classify(take_features(komentar))
            # class
            # return JsonResponse(result[1])
            
            # return render(request, 'testing/hasil.html')
            # return redirect('data_uji')
            kategori = ''
            positif = result
            negatif = result
            netral = result
            
            if result == 1:
                print ('POSITIF')
                kategori = 'POSITIF'
                # positif = result[1]
            elif result == 2:
                # print ('NEGATIF')
                kategori = 'NEGATIF'
                # negatif = result[2]
            elif result == 3:
                # print ('NEGATIF')
                kategori = 'NETRAL'
            
            vectorizer = TfidfVectorizer()
            # text = 'Perjalanan kali ini ke 1 bersama keluarga yang gokil, Ah mantap! Semoga fasilitas disini semakin bagus'
            text = komentar
            cleaning = clean(text)
            casefold = cleaning.casefold()
            token = casefold.split()
            
            factory = StemmerFactory()
            stemmer = factory.create_stemmer()
            
            stemming = stemmer.stem(casefold)

            factory = StopWordRemoverFactory()
            stopword = factory.create_stop_word_remover()

            stop = stopword.remove(stemming)
        
            # X = vectorizer.fit_transform(stop)
            # tf = vectorizer.transform([stop])
            
            
            # data = stemmer.stem(data)

            context = {
                'cleaning': cleaning,
                'casefolding': casefold,
                'tokenizing':token,
                'stemming':stemming.split(),
                'stopword':stop.split(),
                'probabilitas':nilaiProbabilitas,
                'hasil': result,
                'kategori':kategori,
                'positif':positif,
                'negatif':negatif,
                'netral':netral,
                'waktu':(time.time() - start_time)
            }
            return render(request, 'testing/hasil.html', context)
        
    return render(request, 'testing.html')

#starting the function 
def getFeatureVector(tweet):
    featureVector = []
    st = open('StopWords.txt', 'r')
    stopWords = getStopWordList('StopWords.txt')
    #split tweet into words
    tweet = re.sub('@[^\s]+', '', tweet)
    words = tweet.split()
    for w in words:
        #replace two or more with two occurrences
        w = replaceTwoOrMore(w)
        #strip punctuation
        w = w.strip('\'"?,.')
        #check if the word stats with an alphabet
        val = re.search(r"^[a-zA-Z][a-zA-Z0-9]*$", w)
        #ignore if it is a stop word
        if(w in stopWords or val is None):
            continue
        else:
            
            featureVector.append(stemmed_wrapper(w.lower()))
    # return HttpResponse(featureVector)
    return  featureVector
    # return ' '.join(featureVector)

# data['komen_stemmed'] = data['komen_filtered'].apply(get_stemmed_term)
#starting the function 
def getStopWordList(stopWordListFileName):
#read the stopwords file and build a list
    stopWords = []
    #stopWords.append('TWITTER_USER')
    stopWords.append('URL')

    fp = open(stopWordListFileName, 'r')
    line = fp.readline()
    while line:
        word = line.strip()
        stopWords.append(word)
        line = fp.readline()
    fp.close()
    return stopWords
#end
#starting the function 
def replaceTwoOrMore(s):
    #look for 2 or more repetitions of character and replace with the character itself
    pattern = re.compile(r"(.)\1{1,}", re.DOTALL)
    return pattern.sub(r"\1\1", s)
#end

# stemmed
def stemmed_wrapper(term):
    return stemmer.stem(term)









def process_tweet(tweet):
    tweet = tweet.lower()                                             # Lowercases the string
    tweet = re.sub('@[^\s]+', '', tweet)                              # Removes usernames
    tweet = re.sub('((www\.[^\s]+)|(https?://[^\s]+))', ' ', tweet)   # Remove URLs
    tweet = re.sub(r"\d+", " ", str(tweet))                           # Removes all digits
    tweet = re.sub('&quot;'," ", tweet)                               # Remove (&quot;) 
    tweet = tweet.encode('ascii', 'ignore').decode('ascii')           # remove all emoji
    tweet = tweet.replace('  ',' ')                                   # remove double spasi
    tweet = tweet.replace('   ', ' ')                                 # remove triple spasi
    tweet = tweet.replace('\n', ' ')                                  # remove enter
    tweet = tweet.replace("'", ' ')                                   # remove '
    tweet = re.sub(r"\b[a-zA-Z]\b", "", str(tweet))                   # Removes all single characters
    # for word in tweet.split():
    #     if word.lower() in contractions:
    #         tweet = tweet.replace(word, contractions[word.lower()])   # Replaces contractions
    tweet = re.sub(r"[^\w\s]", " ", str(tweet))                       # Removes all punctuations
    tweet = re.sub(r'(.)\1+', r'\1\1', tweet)                         # Convert more than 2 letter repetitions to 2 letter
    tweet = re.sub(r"\s+", " ", str(tweet))                           # Replaces double spaces with single space    
    return tweet
# controller hapus uji
def uji_delete(request, id):
    if request.method == "GET":
        Testing.objects.filter(id=id).delete()
        messages.success(request, 'Hapus Data Uji Berhasil')
        return redirect('data_uji')
# end controller hapus uji



def uji_edit(request, id):
    if request.method == "GET":
        context = {
            'data': Testing.objects.filter(id=id).first(),
        }
        return render(request, 'testing/_form.html', context)

    elif request.method == "POST":
        data = {
            'username'      : request.POST.get("username"),
            'komentar'      : request.POST.get("komentar"),
        }
        Testing.objects.update_or_create(
                id=request.POST.get("id"),
                defaults=data
        )
        messages.success(request, 'Simpan Data Uji Berhasil')
        return redirect('data_uji')
    


#Controler tambah data latiih
def add_latih(request):
    if request.method == 'POST' and request.POST.get("jenis") == '2':
          
            file = request.FILES['file']        
            fs = FileSystemStorage()
            filename = fs.save(file.name, file)
            uploaded_file_url = fs.url(filename)
            excel_file = uploaded_file_url
            # print(excel_file) 
            empexceldata = pd.read_csv("."+excel_file,encoding='utf-8')
            # print(type(empexceldata))
            dbframe = empexceldata
            for dbframe in dbframe.itertuples():
                 
                # fromdate_time_obj = datetime.strptime(dbframe.DOB, '%d-%m-%Y')
                obj = Training.objects.create(username=dbframe.username, komentar=dbframe.komentar, kategori=dbframe.kategori)
                
                # print(type(obj))
                obj.save()
 
            messages.success(request, 'Import Data Latih Berhasil')
            return redirect('data_latih')
    elif(request.method == 'POST'):
        model               = Training()
        model.username      = request.POST.get("username")
        model.komentar      = request.POST.get("komentar")
        model.kategori      = request.POST.get("kategori")
        model.save()
        messages.success(request, 'Simpan Data Latih Berhasil')
        return redirect('data_latih')
    context = {
            
            
        }
        
    return render(request, 'training/_form.html', context)

def data_latih(request):
    training_list = Training.objects
    context = {
            'data': training_list.all,
            'category':{'', 'Positif', 'Negatif', 'Netral'}
# end constants
        }
    # return HttpResponse(context['category'])
    return render(request, 'training/index.html', context)

def latih_delete(request, id):
    if request.method == "GET":
        Training.objects.filter(id=id).delete()
        messages.success(request, 'Hapus Data Latih Berhasil')
        return redirect('data_latih')

def latih_edit(request, id):
    if request.method == "GET":
        context = {
            'data': Training.objects.filter(id=id).first(),
        }
        return render(request, 'training/_form.html', context)

    elif request.method == "POST":
        data = {
            'username'      : request.POST.get("username"),
            'komentar'      : request.POST.get("komentar"),
            'kategori'      : request.POST.get("kategori"),
        }
        Training.objects.update_or_create(
                id=request.POST.get("id"),
                defaults=data
        )
        messages.success(request, 'Simpan Data Latih Berhasil')
        return redirect('data_latih')
    
# End Controler Data Latih




# Controler akurasi
def akurasi(request):
    data = [70,80,90]
    prec_t = []
    prec = []
    prec_testing = []
    rec_t = []
    rec = []
    rec_testing = []
    ac_t = []
    ac = []
    ac_testing = []
    for d in data:
        percentage = d
        # training
        limit = Training.objects.count() * percentage / 100
        training = Training.objects.filter()[:limit]
        vectorizer = TfidfVectorizer()
        
        df_preprocessed = pd.DataFrame(list(training.values()))
        df_preprocessed.head()
        df_preprocessed.shape
        df_preprocessed['kategori'].value_counts(normalize=True)
        wf=df_preprocessed
        # jalankan cleansing data
        factory = StopWordRemoverFactory()
        stopword = factory.create_stop_word_remover()

        review = []
        for index, row in df_preprocessed.iterrows():
            review.append(cleansing(row["komentar"]))
        df_preprocessed.head()

        review = []
        # stopword
        for index, row in df_preprocessed.iterrows():
            review.append(stopword.remove(row["komentar"]))
            
        df_preprocessed["komentar"] = review
        df_preprocessed.head()


        review = []
        for index, row in df_preprocessed.iterrows():
            review.append(stemmer.stem(row["komentar"]))
            
        df_preprocessed["komentar"] = review
        df_preprocessed.head()

        X_train, X_test, y_train, y_test = train_test_split(df_preprocessed['komentar'], df_preprocessed['kategori'], 
                                                        test_size=0.3, stratify=df_preprocessed['kategori'], random_state=0)
        # implementasi pada dokumen kita
        X_train = vectorizer.fit_transform(X_train)
        X_test = vectorizer.transform(X_test)

        #lakukan prediksi pada data test
        model = MultinomialNB()
        model.fit(X_train.todense(),y_train)
        y_pred = model.predict(X_test.toarray())
        
        precc = precision_score(y_test,y_pred, average='micro')
        reca = recall_score(y_test,y_pred,average=None)
        acc = accuracy_score(y_test,y_pred)

        prec_t.append(precc)
        rec_t.append(max(reca))
        ac_t.append(acc)


    
    context = {
            'precission_t': prec_t,
            'recall_t': rec_t,
            'accuracy_t': ac_t,
            'data':data
        }
    # return HttpResponse(rec_t)
    return render(request, 'training/akurasi_training.html', context)
def akurasi_testing(request):
    data = [70,80,90]
    prec_t = []
    prec = []
    prec_testing = []
    rec_t = []
    rec = []
    rec_testing = []
    ac_t = []
    ac = []
    ac_testing = []
    for d in data:
        percentage = d
        


        # testing
        limit_testing = Testing.objects.count() * percentage / 100
        testing = Testing.objects.filter()[:limit_testing]
        vectorizer = TfidfVectorizer()
        
        df_preprocessed_testing = pd.DataFrame(list(testing.values()))
        df_preprocessed_testing.head()
        df_preprocessed_testing.shape
        df_preprocessed_testing['kategori'].value_counts(normalize=True)
        wf=df_preprocessed_testing
        # jalankan cleansing data
        factory = StopWordRemoverFactory()
        stopword = factory.create_stop_word_remover()

        review = []
        for index, row in df_preprocessed_testing.iterrows():
            review.append(cleansing(row["komentar"]))
        df_preprocessed_testing.head()

        review = []
        # stopword
        for index, row in df_preprocessed_testing.iterrows():
            review.append(stopword.remove(row["komentar"]))
            
        df_preprocessed_testing["komentar"] = review
        df_preprocessed_testing.head()


        review = []
        for index, row in df_preprocessed_testing.iterrows():
            review.append(stemmer.stem(row["komentar"]))
            
        df_preprocessed_testing["komentar"] = review
        df_preprocessed_testing.head()

        X_train, X_test, y_train, y_test = train_test_split(df_preprocessed_testing['komentar'], df_preprocessed_testing['kategori'], 
                                                        test_size=0.3, stratify=df_preprocessed_testing['kategori'], random_state=0)
        # implementasi pada dokumen kita
        X_train = vectorizer.fit_transform(X_train)
        X_test = vectorizer.transform(X_test)

        #lakukan prediksi pada data test
        model = MultinomialNB()
        model.fit(X_train.todense(),y_train)
        y_pred = model.predict(X_test.toarray())
        
        precc = precision_score(y_test,y_pred, average='micro')
        reca = recall_score(y_test,y_pred,average=None)
        acc = accuracy_score(y_test,y_pred)

        prec_testing.append(precc)
        rec_testing.append(max(reca))
        ac_testing.append(acc)
    
    context = {
            
            'precission_testing': prec_testing,
            'recall_testing': rec_testing,
            'accuracy_testing': ac_testing,
            'data':data
        }
    # return HttpResponse(rec_t)
    return render(request, 'training/akurasi.html', context)
# End Controler Akurasi

# Controler Data uji
def pengguna(request):
    list = Pengguna.objects
    context = {
        'data': list.all,
    }
    return render(request, 'pengguna/index.html', context)
# End Controler Data uhji

# Controler Perhitungan
def perhitungan(request):

    return render(request, 'training/perhitungan.html')
# End Controler perhitungan
def hasil(request):
    vectorizer = TfidfVectorizer()
    text = 'Perjalanan kali ini ke 1 bersama keluarga yang gokil, Ah mantap! Semoga fasilitas disini semakin bagus'
    cleaning = clean(text)
    casefold = cleaning.casefold()
    token = casefold.split()
    
    factory = StemmerFactory()
    stemmer = factory.create_stemmer()
    
    stemming = stemmer.stem(casefold)

    factory = StopWordRemoverFactory()
    stopword = factory.create_stop_word_remover()

    stop = stopword.remove(stemming)
   
    # X = vectorizer.fit_transform(stop)
    # tf = vectorizer.transform([stop])
    
    
    # data = stemmer.stem(data)

    context = {
        'cleaning': cleaning,
        'casefolding': casefold,
        'tokenizing':token,
        'stemming':stemming.split(),
        'stopword':stop.split(),
        # 'tfIdf':tf
    }
    return render(request, 'testing/hasil.html', context)



# process aplikasi
def cleansing(data):
    # lower text
    data = str(data).lower()
    
    # hapus punctuation
    remove = string.punctuation
    translator = str.maketrans(remove, ' '*len(remove))
    data = data.translate(translator)
    
    # remove ASCII dan unicode
    data = data.encode('ascii', 'ignore').decode('utf-8')
    data = re.sub(r'[^\x00-\x7f]',r'', data)
    
    # remove newline
    data = data.replace('\n', ' ')
    
    return data
def clean(data):
    # lower text
    # data = str(data).lower()
    # Hapus pencatuman username    
    data = re.sub(r"@[\w]*", "", str(data))
    # Hapus hyperlink
    data =  re.sub('((www\.[^\s]+)|(https?://[^\s]+))','', data)
    # Hapus Special Character    
    data = re.sub(r"[()\"#/@;:<>{}*`'+=~|.!?,]", "", data)
    data = re.sub('[^a-zA-Zа-яА-Я]+', ' ', data)
    # Remove multiple space 
    data = re.sub("\s\s+", " ", data)
    # Remove Emoji
    _regrex_pattern = re.compile(pattern="["
                                    u"\U0001F600-\U0001F64F"  # emoticons
                                    u"\U0001F300-\U0001F5FF"  # symbols & pictographs
                                    u"\U0001F680-\U0001F6FF"  # transport & map symbols
                                    u"\U0001F1E0-\U0001F1FF"  # flags (iOS)
                                    "]+", flags=re.UNICODE)
    return re.sub(_regrex_pattern, "", data)  
    
def preprocess_data(data):
    # cleansing data
    data = cleansing(data)
    
    # hapus stopwords
    factory = StopWordRemoverFactory()
    stopword = factory.create_stop_word_remover()
    data = stopword.remove(data)
    
    # stemming
    factory = StemmerFactory()
    stemmer = factory.create_stemmer()
    data = stemmer.stem(data)
    
    # count vectorizer
    data = vectorizer.transform([data])
    
    return data