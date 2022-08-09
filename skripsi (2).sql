-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jul 2022 pada 14.36
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skripsi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add matakuliah', 7, 'add_matakuliah'),
(26, 'Can change matakuliah', 7, 'change_matakuliah'),
(27, 'Can delete matakuliah', 7, 'delete_matakuliah'),
(28, 'Can view matakuliah', 7, 'view_matakuliah'),
(29, 'Can add learning journal', 8, 'add_learningjournal'),
(30, 'Can change learning journal', 8, 'change_learningjournal'),
(31, 'Can delete learning journal', 8, 'delete_learningjournal'),
(32, 'Can view learning journal', 8, 'view_learningjournal'),
(33, 'Can add jurnal similarity', 9, 'add_jurnalsimilarity'),
(34, 'Can change jurnal similarity', 9, 'change_jurnalsimilarity'),
(35, 'Can delete jurnal similarity', 9, 'delete_jurnalsimilarity'),
(36, 'Can view jurnal similarity', 9, 'view_jurnalsimilarity');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'sentimen', 'jurnalsimilarity'),
(8, 'sentimen', 'learningjournal'),
(7, 'sentimen', 'matakuliah'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-09 18:52:23.580111'),
(2, 'auth', '0001_initial', '2022-05-09 18:52:23.837464'),
(3, 'admin', '0001_initial', '2022-05-09 18:52:23.915532'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-09 18:52:23.924957'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-09 18:52:23.935552'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-05-09 18:52:24.006060'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-05-09 18:52:24.048205'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-05-09 18:52:24.073976'),
(9, 'auth', '0004_alter_user_username_opts', '2022-05-09 18:52:24.085558'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-05-09 18:52:24.132692'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-05-09 18:52:24.136189'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-09 18:52:24.147778'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-05-09 18:52:24.194606'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-09 18:52:24.237050'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-05-09 18:52:24.268319'),
(16, 'auth', '0011_update_proxy_permissions', '2022-05-09 18:52:24.286736'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-09 18:52:24.333707'),
(18, 'sentimen', '0001_initial', '2022-05-09 18:52:24.460241'),
(19, 'sessions', '0001_initial', '2022-05-09 18:52:24.488333');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('02hx4bv13bq5t2bjvfqr2e4w3i1ae5b5', 'eyJ1c2VybmFtZSI6ImFkbWluIiwiaXNMb2dpbiI6MX0:1o5Wy8:xTfsL75DToAWz9DSnxnwZIKQOUlx-UIqx6wWsQSiAJU', '2022-07-10 18:26:48.323356'),
('a44mloqa48tcg4qiw5sza8jb9gs6hfda', 'eyJ1c2VybmFtZSI6ImFkbWluIiwiaXNMb2dpbiI6MX0:1nqAF8:Ep6dI_i0N-mzEFpuVpGzIW0gvYruOf7soe5D3mUf1Ww', '2022-05-29 09:08:50.019458'),
('bhugvmga8vro9t00dulz9houcz4ho330', 'eyJ1c2VybmFtZSI6ImFkbWluIiwiaXNMb2dpbiI6MX0:1nqFxd:dGhjiEOBx3XjCNAWMPGE7uSjkM6PqAZb9Se5AZhFf6Y', '2022-05-29 15:15:09.090474'),
('cqx2ebhp156yd60r1km746xfrfbs3tp7', 'eyJ1c2VybmFtZSI6ImFkbWluIiwiaXNMb2dpbiI6MX0:1nqypc:6FgS3GC1ZdRs50lRvp7FKnLYCeE4Nnetake0H2d1t4I', '2022-05-31 15:09:52.161087'),
('kzyktfhyfkhm17vd7x78lgbjfc8yfbbp', 'eyJ1c2VybmFtZSI6ImFkbWluIiwiaXNMb2dpbiI6MX0:1nr2Z1:ofYkhdbNHl-suT5JZIY7_cb0_hy7RYMDxaXSE4SHLH0', '2022-05-31 19:08:59.775911');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `password`) VALUES
(3, 'Admin Website', 'admin', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_matkul`
--

CREATE TABLE `tb_matkul` (
  `nama` varchar(100) NOT NULL,
  `semester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `testing`
--

CREATE TABLE `testing` (
  `id` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `komentar` text NOT NULL,
  `kategori` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `testing`
--

INSERT INTO `testing` (`id`, `username`, `komentar`, `kategori`) VALUES
(1, 'baru', '@tanyakanrl Alhamdulillah ngga minus meski dua tahun daring dan main rp terus', 0),
(2, '', 'tanpa harus anxious :( inikah yang dinamakan efek negatif daring', 0),
(3, '', 'ngga tau kenapa ya kalo aktif di kategori waktu daring tuh susah banget kek... panik bgt gitu loh kalo mau ngomong tapi giliran tatap muka jadinya ya b aja', 0),
(4, '', 'Adek yg daring gua yg sengsara tai https://t.co/CCAB3OLos2', 0),
(5, '', 'anak kuliah jaman sekarang kuliah daring rame2 dari coffeeshop, masing2 online zoom dari gadgetnya', 0),
(6, '', '@howtoscream @UNSfess_ Oh gitu ya kak, jadi nanti kalau daftar wisuda ada opsinya ya mau ikut daring atau offline gitu ya. Kira2 dibatasi gak ya kak kuotanya klo offline', 0),
(7, '', 'Pas udah mau otw, langsung dapat info kalau jadwal kategori diundur dan diadakan secara daring ????', 0),
(8, '', '@karirfess 200 ngajar anak smp tp lebih ke bantuin ngerjain tugas pas daring', 0),
(9, '', 'Aku zoom dari jam 7 sampe sekarang rasanya udah buosen, itu yg kuliahnya daring apakabar', 0),
(10, '', '@tanyakanrl aku sukanya daring:(', 0),
(11, '', '@anessinprivate daring tetap jalan kak. :)', 0),
(12, '', 'ngampus tp daring krn lg pada utbk?? https://t.co/q4QHdSyRLV', 0),
(13, '', 'fakultas gw knp kaga ptm ptm anjerrrr dosen2 udh pada kenikmatan daring kahh???', 0),
(14, '', 'lagian fakultas gw napa ngide bgt sih program percepatan masa studi sedanglan proses kbm udh 2thn masih daring mulu hadehh', 0),
(15, '', '@LndMuslitaNazir Betul banget. Pen ngekos tapi masih daring, klo maksa ngekos bingung juga mau ngapain disana', 0),
(16, '', 'COGGGG BENER ANJIRRRRR GAADA YANG PAHAM FAKKK MANA KENA DARING MAKIN PLONGA PLONGO SAT SET SAT SET GOOGLE LENS https://t.co/arRfpuSH9z', 0),
(17, '', '@collegemenfess Semester 6 keatas daring', 0),
(18, '', '@sahiloviie hari ini daring nii', 0),
(19, '', 'SMP bisa sekolah daring lagi aja gak ya?\r\n\r\nPada bawa motor dan gak ngotak bawanya https://t.co/O15ivpKQTq', 0),
(20, '', '[askrl] agak muak ya daring gini padahal di jam jeda matkul tiba2 suruh begini suruh begitu, iya kalo di rumah kalo lagi diluar ga bawa laptop? sdngkn file nya di laptop.. nah kadang tuh dosen ga nuntut buru2 tapi yg lain pada rese minta cepet2 lah kita punya kehidupan (cont)', 0),
(21, '', 'kalian lgi daring apa offline? ak si daring ????', 0),
(22, '', 'kuliah daring uts luring ya ampyun', 0),
(23, '', 'dulu pas offline mah engga, kalo daring gini suka jamkos?????? https://t.co/hfuKbELSWU', 0),
(24, '', 'enak daring', 0),
(25, '', 'trus paginya ke kampus habis itu lanjut daring habis itu lagi harus ngerjain tugas yg deadline yg lebih deket duluan?? jujurly pusing, mana itu tugasnya disuruh cari tutorial sendiri di youtube, belum lagi idntonin video?? kalo ngerti alhamdulillah, kalo enggak???', 0),
(26, '', '@slwpynara Selesai daring, cus shoping ??', 0),
(27, '', '@THVmom Msh daring kak', 0),
(28, '', 'Capek banget asli ngadepin kebijakan kampus yang nggak jelas, bilangnya full luring nyatanya ada matkul online ada yang offline juga terus maunya gimana sih, dosen juga semena-mena jadinya, bilangnya mau luring nyatanya daring lagi, yang luring cuma 1 matkul doang, capekkk', 0),
(29, '', '@teddybearyis iyaa, tapi daring', 0),
(30, '', '@PARKJ1HOONIE ak daring', 0),
(31, '', 'Bilangnya kemarin masuk jam 8, pas deket jam 8 kinta ganti masuk jam 13, skrg bilangnya daring asuui https://t.co/67Pc8ISHYr', 0),
(32, '', 'senangnya hri ini daring', 0),
(33, '', 'internet gw pas daring kek babi KOK SKRG GK AJG', 0),
(34, '', '@W00RANGHAE pengen ikut tp pas mv rilis aku masih daring ??', 0),
(35, '', '@um_fess Minus\r\n1. Ribet pol, banyak bgt yang diurusin. Entah sama kaprodi, kajur, dekan, kaprodi PT penerima, pihak univ MK yg diambil daring. \r\n*Kalau mau ikut pmm harus bener2 dibaca buku panduannya, jgn kebanyakan tanya dulu*', 0),
(36, '', 'Dosen gue tadi ngabarin smt ini di jurusan gue bakal diselesaikan secara daring ???? https://t.co/LS44T0jWRW', 0),
(37, '', 'Perasaan gua daring mulu', 0),
(38, '', '@andysobar Iya bang sama biar daring??', 0),
(39, '', 'Bukan libur tapi daring', 0),
(40, '', '@zenniecrush udah, daring dan nugas doang kayanya, okeyy kamu jg yaa semangatt!! have a nice day??????', 0),
(41, '', '@UNSfess_ daring lagi aja a6', 0),
(42, '', '@theonlyoongii iya paling daring. tak kira libur??', 0),
(43, '', 'mata gw berat bgt.. emang ga bagus daring sambil nempelin kepala ke bantal https://t.co/vZKupJVa2s', 0),
(44, '', '\"Hmm bagaimana ya kabar orang rumah, apa mereka aman?\" Ujar Nana cemas\r\n\"Eh iya, gimana ya kabar Bundaku, Uti ku dan adik adiku...untung aja mereka daring jafi ga kesekolah hari ini... tapi apakah mereka aman? Jarak sekolah tidak jauh dari rumah\"\r\n\"Semoga aja merka aman\" ujar Nana', 0),
(45, '', '@hourlyjaemin19 ga sie pas daring baru ditunjuk mulu gurunya tau ak soalnya ??', 0),
(46, '', '@raxendorvs dia ini guru agama kategoriku pas kategori 11. krn full daring jdi blom ktemu samsek si tp ikhlasin aja deh pak tolong??', 0),
(47, '', '@sn4ckies aku kan daring ??', 0),
(48, '', '@jeatines daring tuh sebenernya seru, tapi kalo sudh gmeet &amp;&amp; zoom HWHWHHWH aku out?', 0),
(49, '', 'dandannya butuh effort, eh dah sampe kampus tautau daring????', 0),
(50, '', 'Kampret banget gue sampe kampus orang malah daring??????mana kategori berikutnya jam 1 lagi, mau pulang sayang Ama bensin????', 0),
(51, '', '@aldovi100 Sido gak betah kuliah daring', 0),
(52, '', 'Syukurnya ujian ku masih kebanyakan daring cuma 2 matkul yg offline, bisa lah hype cb bts ksksksksk', 0),
(53, '', '@collegemenfess Kalau daring biasanya langsung banyak yang keluar-masuk gmeet, grup wa langsung rame, apalagi kalo dosennya ngancem absennya dikasih alpha kalo gada yang jawab, panik mode on sekategori. Kira\" kalau luring gimana yaa? Maklum angkatan 20 gaper', 0),
(54, '', '@collegemenfess Tetep full. Makanya pas daring mending keluar kostan darimana bayar tapi ga ditempatin', 0),
(55, '', '@thannajaaaaa terserah kamu sihh. tapi kalau dipake buat kuliah jaman sekarang ini (apalagi kalo daring) yg kaya tipeku menurutku kurang worth it??', 0),
(56, '', 'Bisa gasi lanjut daring aja sampe lulus ak dah pewe dirumah yarob', 0),
(57, '', '@ngalamfess Ikuloh kampus urusoid pak, 2th lebih kenaken daring, gawane ngejaki daring ae', 0),
(58, '', '@Unsoedfess1963 Halahh dosen ku cuma janji\" aja \"mingdep kuliah luring ya\" tau nya di ghosting dan karna udh mepet kategori, mau gamau daring dan sy nyesel mandi pagi', 0),
(59, '', '@tq3illl Gua yg baru tatap muka lagi setelah 4 bulanan daring, berasa banget jadi remaja jompo di sekolah. Baru aja nyampe ga ada 1 jam pingin pulang wkwkwk', 0),
(60, '', 'Dulu di SMP bukan yang paling rame sih, tapi ya rame aja gitu. Eh semenjak SMA daring kan, jadi?? https://t.co/i2h7VqbPhi', 0),
(61, '', 'Jujur ini aku ketar ketir banget Karna belum kerjain PASBK daring dan linknya Uda ditutup ??????\r\nSemoga bisa dibuka lagi alias dikasih keringanan,aamiin.', 0),
(62, '', 'ternyata beberapa kampus belum luring ya :( ayuk sini tukeran sm ak ak mau daring aja ??', 0),
(63, '', 'ga pernah belajar (slama daring) https://t.co/931v5a6qnb', 0),
(64, '', 'atau kalo bisa kirim ke base minta tolong banget ini mah besok gue daring sama dosen killer ????????????', 0),
(65, '', 'BESOK DARING, TAPI TETEP BERANGKAT PRAMUKAAA JAM DUA ????', 0),
(66, '', '@jaedenmaniez kek gue dong besok daring sama aja kek libur siee', 0),
(67, '', 'CAH TIWAS SENENG JARESE SESOK DARING JEBUL ISIH MELBU TATAP MUKA', 0),
(68, '', 'ugm_fess siapa yg mau kuliah daring lagi?? Capek bgt praktikum offline :\'))', 0),
(69, '', 'Kusebagai mamak-mamak kepikiran, ini anak gasekolah apa? Nggak ada daring? Nggak ngerjain tugas ente? Trus dari pagi pergi, izin sama ayah bundanya gimana dah? Wkwk herman https://t.co/otdNccKy0S', 0),
(70, '', 'Woelah untunk buka chrome, tab daring masih kebuka, jdi inget tugas kan??', 0),
(71, '', '@greyskykar DARING KAAAKK ?????????? WORKSHOP KURIKULUM BRU JD DARINGG tp tetep ada Pramuka wajib siiii padahal senengnya daring mau ngindarin Pramuka :(((((', 0),
(72, '', '3 hr nahan demam naik turun, masih nyusuin bayi, ngurus si sulung ujian daring, cm diminta beli semangka aja ga bs.', 0),
(73, '', 'doain besok daring ????????????????????????????????', 0),
(74, '', '@junmyeonnnie_ bsk senin daring', 0),
(75, '', 'jjur ak gak sanggup skolah offline astagfirullah capek bangetttt tapi gamau daring terusa', 0),
(76, '', 'yaAllah bsok pertama kli upacara setelah 2 tahun daring', 0),
(77, '', 'Waktu kls 10 suka tapi gegara pandemi alhasil daring jadi...ya gitu dh https://t.co/877BNTb7ai', 0),
(78, '', 'mahasiswa lain dh offline ini masih daring ???? https://t.co/TRTuvtpR1f', 0),
(79, '', 'aku akhir2 ini sibuk osis sama daring jd tugas seabreeekkkk ajg gila kh ini mepet pula deadline nya ???????? gakuat urang', 0),
(80, '', '@baecloey oalah daring, hshshs padahal berharap offline??', 0),
(81, '', '@luthfiisyaaa Sisa Daring memang menyedihkan ????', 0),
(82, '', '@collegemenfess Dosenku kayak gitu juga ngga ya liat angkatanku sampe sekarang daring terus :\")', 0),
(83, '', '@wonyvou senin doang, selebihnya daring', 0),
(84, '', '@geloraco @visiau Kenapa kita enggak menggunakan e-vote ya ? Padahal belajar sj sudah daring hingga ke polosok, ada alat menghubungkan intetnet sekalipun di tengah hutan. Murah dan mudaj cc. @FPKSDPRRI @hnurwahid @musniumar @msaid_didu @UyokBack @maspiyua', 0),
(85, '', 'untung sabtu daring??', 0),
(86, '', 'besok sama sabtu daring awokawokawok', 0),
(87, '', 'pgnn sklh ttp daring bkn luring ????', 0),
(88, '', 'pls akhiri perkuliahan daring semester ini, aku sudah terlalu stres mikir sinyal', 0),
(89, '', '@collegemenfess seruu tp ya gt kalo ujian wkwk untung masih daring', 0),
(90, '', 'Setaun berlalu perkuliahan masih daring. Kita sempat bbrp kali bertemu kamu bersikap manis padaku, seolah kamu senang denganku apa hanya aku salah mengartikan?.', 0),
(91, '', '@sweetsebong @myXLCare sebel bat padahal pen daring ini', 0),
(92, '', '@chiiiblabla tuhkan uasnya harus daring tauk ???? @ itera', 0),
(93, '', '@darkrwell daring kok', 0),
(94, '', 'Sekolah udah mulai kembali idrmal lagi tapi jiwa ini masih di dunia daring??', 0),
(95, '', 'Mak w beli pulsa mau dipaketin. Awalnya tethering ke w. Adek idnton yutup. Kuota w gabanyak dan mau buat daring:) ngeliat theteringnya buat yutuban w batesin cm bisa 1 koneksi yaitu ke laptop berharap yg nyambung ke hp mati. Agak curiga kok ytnya masi nyala kirain udah beli.', 0),
(96, '', 'hdhh daring msh lama??', 0),
(97, '', 'mls bgt masa daring tetep ekskul ??', 0),
(98, '', '@VerlianElsha Iyaa sementara daring sit sg penting iyaa oyaa', 0),
(99, '', '@kooalee sori w gi sibuk daring anjay', 0),
(100, '', 'Keponakanku si anak SMP hari ini field trip sekolah setelah 2 tahun sekolah daring. Ku seneng banget akhirnya dia bisa mulai menjalani kehidupan laiknya ABG yang haha hihi bergerombol sama temen-temennya :\')', 0),
(101, '', 'alhamdulillah ga jadi debat, ngebut materi karena sering ketabrak libur + daring', 0),
(102, '', 'di bilang kalo daring ga usah daftar kuliah :)', 0),
(103, '', '@doeserves Nggak, kategori 11 saya \'kan masih daring.', 0),
(104, '', '@rockstarstae engga kak, lgi sambil daring nih', 0),
(105, '', 'pengen daring lagi', 0),
(106, '', 'disini ada 1747 manusia, tolong doain aku besok daring??', 0),
(107, '', '@bijjihh coba semua daring gini... di jln jd singkat, tnggal byr...', 0),
(108, '', 'Udah sampe kampus tau nya daring ?? https://t.co/V6DDnfwasb', 0),
(109, '', '@liasayangksoo emg udh oflline?? aku msh full daring dong ?? https://t.co/UnEhnJkOcG', 0),
(110, '', 'daaaah muk daring dulu????', 0),
(111, '', '@tanyakanrl aku pas daring tahun lalu jadi adm olshop', 0),
(112, '', 'Hari ini ngajar daring, kerjaan rumah dah beres semua. Jadi bingung mau ngapain lagi wkwk', 0),
(113, '', '@marxveII IYA KEK LU LAGI DIOMELIN DOSEN PAS DARING', 0),
(114, '', 'ternyata kuliah hari ini daring semua todddngentotttt \r\ntau gt aku kelon https://t.co/VNbja5834e', 0),
(115, '', 'untung sekolah gue lagi daring,kalo ga gabrut bgt gilaaaaaaaaa', 0),
(116, '', '@littlbbygrl Wkwkwkwk daring mah gatau apa apa tiba tiba lulus aja biasanya', 0),
(117, '', '@putttann Dah nyaman daring wkwk', 0),
(118, '', '@enthuesed SMANGATTTT?????? daring? luring?', 0),
(119, '', 'daring anjingggggg', 0),
(120, '', 'Aku capek daring,kapan jadi your darling? @eaJPark', 0),
(121, '', 'ini tugas banyak bgt dh, mending sekolah sih gue daripada daring ????', 0),
(122, '', 'makin takut mendekati hari hari uas di kampus smoga lancar ya allah atoga smoga boleh daring ya allah', 0),
(123, '', 'Kuliah blended : luring dan daring. Alhamdulillah ?? https://t.co/L8jecb4nDY', 0),
(124, '', '@junmyeonjhjs Enak kalo Daring sih kak?????? soalnya aku prefer ke daring wkwk', 0),
(125, '', '@bunny_c0tt0n ahaha iyaa, skolah aku masih daring sampe skrgg, blm offline idkw', 0),
(126, '', '@UNSfess_ Ya haruslah, edan po daring terus\r\nKampus lama lama jadi sarang nyamuk', 0),
(127, '', '@andhhreyyaaa klo udh pusing kudu tdr lagi yh... aku malah daring', 0),
(128, '', 'Istirahat/quality time am keluarga or healing\" Kepake juga buat nugas. Kaget banget sii setelah 2 thnan lebih daring tp perasaan dulu ga secapek ini msh banyak waktu luangnya. Yukk semangatt yuuk linn pastii bisaaa', 0),
(129, '', 'baru nyampe, mau gue coba tp ga ada temen :((( mana sekolah daring lagiii https://t.co/jzR5JdFKJJ', 0),
(130, '', 'kuliah luring setelah 2,5 taun kuliah daring tuh wah rasanya kek astaghfirullah. mana isinya praktikum public speaking + bikin media audio visual lagi', 0),
(131, '', 'tim gamau daring :\') dah cape daring https://t.co/x38kN5SUZb', 0),
(132, '', 'Adek yg daring gua yg sengsara tai https://t.co/CCAB3OLos2', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `training`
--

CREATE TABLE `training` (
  `id` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `komentar` text NOT NULL,
  `kategori` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `training`
--

INSERT INTO `training` (`id`, `username`, `komentar`, `kategori`) VALUES
(1, '', '@panpanbears doain tatap muka ku tidak berjalan mulus dan beralih daring kembali :(', 1),
(2, '', '@convomf asik semua dah, kecuali pas kelas 12 bener-bener flat gada seru-serunya karena full daring', 2),
(3, '', '@beaconfess aku nomor khusus, soalnya kalau pakai nomor pribadi ntar kecampur sama grup kelas&amp;grup lainnya yang berhubungan sama daring daring sampe muak?? muaak banget sama wa pribadi banyak grupnya, bayangin aja dah tuh 2 tahun daring', 2),
(4, '', 'pengen libur?? males banget besok harus daring', 2),
(6, '', 'ok thank u dosen2ku yg baik hati minta daring jd sy mayan bs lama dirmh', 1),
(7, '', '@convomf Keduanya sih, cuman klo aja SMA full gk kehalang daring sih kayanya lebih seru lagi SMA', 2),
(8, '', 'ya Allah smg mkwu PAI Jum\'at sore daring, aamiin??', 1),
(9, '', 'sedang memikirkan pengalaman yg ada di sma... asdfghjkl GADAK 2 TAHON DARING GAPUNYA PENGALAMAN', 2),
(10, '', 'yg kls 8 nya daring yuk nangis aja https://t.co/U7MGD0BK49', 2),
(11, '', 'kebanyakan daring jadi tolol https://t.co/Nv1Tq9mpLi', 2),
(12, '', '@tanyakanrl Aku daring yey??', 1),
(13, '', 'YAALLAH TAKBIRRRRR JUMAT PRESENTASI DARING HAHAYYYY GAJADI BALIK', 1),
(14, '', '@convomf smp, jujur itu diri gue bgt, lari riang, sehat batin, sma gue jalur corona jadi banyakan daring jadi nolep dan ga dapet temen', 2),
(15, '', 'w udh nyiapin contekan buat bsok pat taunya masih daring HAHAHAH AJG NGABRUT', 2),
(16, '', '@convomf smp, lahh sma kebanyakan daring kurang asik', 2),
(17, '', 'ok jdnya daring xixixi', 1),
(18, '', '@blvejaysky ngga libur huhuu tapi daring sihh jadi isoke????', 1),
(19, '', '@convomf SMAAA, pertemananya OKE BGTT, tpi bukan berati temen smp ga oke, masih suka main tapi lebih suka anak sma, guru²nya ga se ikut campur pas smp, kisah cinta nya juga OKE BGT??, tpi lebih banyak kenangan smp soalnya ga daring:( oiya sma aku juga ', 2),
(20, '', '@tanyarlfes kangen banget, lebih suka daring??', 1),
(21, '', '?? kangen daring . . . .', 1),
(22, '', 'Besok daring lagi ;\') asli deh terakhir ke kampus hari Jumat. Senin sampai selasa daring, hari ini libur, besok daring lagi. Kalo pulang lumayan seminggu ????', 2),
(23, '', '@lovingkthv matematika gampang dek , gausah ngeluh , jaman kakak dulu daring malah lebih parah', 2),
(24, '', 'besok full daring 2 mk + seminar sampe sore.... belum lagi kerjain uas... AU AH PUSING MAU NIKAH AJA SAMA SHUA', 2),
(25, '', '@call_me_jerrii Wah daring boi??', 1),
(26, '', 'KESEL BANGET GA PUNYA CRUSH KELAS 8 SOALNYA DARING https://t.co/CccPkIgaNI', 2),
(27, '', '@convomf ga seru, full daring', 2),
(28, '', '@Gelchanlee aaaa, baguss klo lancar krn emg eskul berguna buat masa-masa pelajar gini ??. klo punya ku udh di bilang bkal buka tapi mlah mingdep kasus c0vid naik jdi daring lagi :D', 2),
(29, '', '@convomf smp,, karna sma gw ga ngerasain apa” karna awal masuk sma udh corona jadi daring sampe sekarang ga ada moment special', 2),
(30, '', 'kangen sekul online, pgn daring lagi????', 1),
(31, '', '@convomf gk seru bgt, kls 8 full daring tau-tau dah kls 9', 2),
(32, '', '@BLINKmf disitu aku bener bener kek seneng bangatttttt udah nungguin bangat soalnya. Disana kalo gasalah daring gasi? AKU BENER LAGI PUSING BANGAT TUGAS NUMPUK, TAPI PAS LIAT TEASER bener bener kek Ya Allah ini nyata??! Aku sampe banting hp ehh retak wkwk', 2),
(33, '', '@convomf kosonggggggg full daring', 2),
(34, '', '@Jooookeeeerrrr Daring man!!', 1),
(35, '', '@convomf b aja soalnya daring hhh', 2),
(36, '', '@convomf gada yg seru, daring soalnya', 2),
(37, '', 'gaada kisah soalnya full daring https://t.co/Tls1lS48uj', 2),
(38, '', '@convomf jelek, soalnya daring??', 2),
(39, '', 'MALES DARING', 2),
(40, '', 'ISO ISO NE WISUDA IJIK DARING!!! TELEK', 2),
(41, '', 'gegara covid ini kan jadi daring, aku yg awalnya hanya silinder sekarang jg minus, mana lumayan tinggi minusnya??', 2),
(43, '', 'kenapa libur ak slalu diisi dgn daring', 2),
(44, '', 'semua matkul seru klo jelasinya dikelas luring bukan daring.', 2),
(45, '', '@trendingtopiq kalo perlu upacara pas tgl merah daring terus ??', 1),
(46, '', 'eh, ternyata tinggiku naik ya?! kok bisa?? dulu pas sama nisrina kls 9 , 162. ku kira selama daring aku tetap 162 karna ga pernah olahraga sm sekali. eh ternyata naik 165. wtf. kok iso. apakah ku bisa tinggi lagiii??', 1),
(47, '', 'Aku gamau ya kalo misal ini nanti kudu daring lagi, padahal baru aja ngerasain luring. #WaspadaCacarMonyet ini memang meresahkan :((', 2),
(49, '', 'ini tanggal merah, libur. \ntapi knp guru ngasih tugas??? ini bukan daring pak, bu..', 2),
(50, '', 'Eh lupa ada upacara\n\nDaring sih', 2),
(51, '', 'Gue pusing melihat snm sbm utbk lewat tl sliweran, TAKUT BGT ANJRIT. PERSIAPAN GUE CUMANN 30% DAN SEKOLAH GUE BAKAL SETENGAH DARING ALIAS GILIR JADWAL KARENA MAU RENOVASI LAGI, TAIIIIIIII.', 2),
(52, '', 'Dulu pas pandemi,daring rasanya susah² gampang buat belajar sendiri ??wkkw Sampai pelajaran aku screenshot gak sempet buat print??Ini si masih kurang,ada beberapa screenshot materi sekolah lainya,fix bakal kangen dimasa susah belajar sendiri dirumah?? https://t.co/WNBO9qFT6L', 2),
(53, '', 'bentar setelah dipikir² gua parah bgt, ±2 tahun sekolah daring, kegiatan eskul disekolah di batesin,gaada KI/study tour, pelantikan taruna yg jauh dari ekspetasi, dan parah nya malah gaada wisuda ??', 2),
(54, '', 'padahal pas sekolah dulu gue dipuji temen2 karena mata gue paling sehat tapi gara2 kuliah daring yang maksa gue berjam jam depan laptop pas di cek mata gue silinder bangsat:)', 2),
(55, '', '@tiarandfa_ Daring ga tu kek perkuliahan????\nBiglup buat yaya????', 1),
(56, '', '@Unsoedfess1963 Tetep daring dan tetep praktikum offline??', 1),
(57, '', '@anggiielukita Udah get, untung daring ..\nTp suruh hormat di depan Laptop.', 1),
(58, '', 'Kuliah masih daring tanggal merah pun tidak ada gunanya????', 2),
(59, '', 'Bismillahirrahmanirrahim.. mau bgt kak, tp utk adikku, krn dia sangag membutuhkan utk sekolah di masa daring ini, sy sbg kakak tdk bisa membantu,krn faktor ekonomi jg faktor rumah kami yg berjauhan,jd ketika dia butuh hp utk daring,dia harus meminjam hp temannya', 1),
(60, '', 'tgl merah dan gue tetep daring??', 1),
(61, '', 'Pagi..tanggal merah..??.\nUpacara daring yuk?? https://t.co/pnNlu6aY9g', 1),
(62, '', 'Ponakan kesayangan minta SmartPhone buat belajar Daring, spec ini kyknya masuk.', 1),
(63, '', '@AREAJULID Kelas 11 sekarang aj udah terjadi\nGuru:ini sudah pernah kalian pelajari di kelas 10 kan? \nMe and my classmates:hah?\n(kita lupa kalo kelas 10 nya 85% daring)', 1),
(64, '', '@convomfs gatau krna aku daring', 2),
(65, '', '@AdhitAri jd sebelumnya secara daring aja bg?', 1),
(66, '', '@drlrst Agak susah euy Teh bicara efektif enggaknya, soalnya belom pernah. Hampura Teh. \n\nSemoga cocok/efektif buat Teh Dira ya meski harus via daring. ????', 1),
(67, '', '@ningyzhou_ Alasan pengen hp ini karena buat sekolah,ngerjain tugas dri sekolah,kadang juga sekolah daring,selama ini pinjem hp mama yg aku pakai,padahal hp mama buat jualan pulsa dirumah,utk cukup i kebutuhan sehari hari,semoga rezeki ya allah??', 1),
(68, '', '@Real_Jayavani Jaya daring \nOpen Dm', 1),
(69, '', '@missufe daring-laah.. ??', 1),
(70, '', '@schfess aku tp daring', 1),
(71, '', 'pernah!!! waktu awal2 covid, tapi gabisa karena daring :\') https://t.co/cNQNnqYQer', 2),
(72, '', '@MaddyWithKhan @RanaSanaullahPK Daring mam', 1),
(73, '', 'terus kalo udah offline nanti ketersediaan waktuku juga ga akan selonggar ketika daring.. padahal beban tugas sama aja bahkan bisa lebih banyak.. dl juga deketan.. belum lagi nanti waktuku juga agak habis di perjalanan.. omg knp jadi mellow :\"(', 1),
(74, '', 'pengen liat hanbin pengen liat gidle, pusing zaenab :( ini kalo engga kuliah luring duitku pasti lebih banyak, ya ampun tiba2 pgn daring semuanya, maaf ya tuhannnn', 1),
(75, '', '@misyekaj Eh kakak SMA-nya ini full daring ya?', 1),
(76, '', '[askrl] Maaf curhat, karena besok libur dan UAS ku daring, jadi tadi aku balik ke rumah, bareng temen cowok, padahal aku bawa motor sendiri dia bawa motor sendiri, kebetulan kita sedomisili jadi bareng. Dan tau ga aku jadi bahan omongan tetangga ku ?? gini banget hidup (cont)', 1),
(77, '', '@pE4cefulness mana udh terbiasa daring wkwkw beda bgt ya', 1),
(78, '', '@giskayol Daring aja sih bun. Eh gimana acara tgl 4?', 1),
(79, '', '@sbyfess Aku sesok jek enek kuliah i, yo meskipun daring tapine', 1),
(80, '', 'besok tgl merah tetep ga ngaruh ke jadwal kuliah aing emng dosen w semenjak daring tanggal merah oun tetep di embatt', 2),
(81, '', '@collegemenfess Sinii nder, aku angkatan 2020 yang udah 4 semester kuliah daring di kamar????', 1),
(82, '', '@schfess Same as me. Setelah daring lama, masuk-masuk gini, pada nggak kenal :D', 2),
(83, '', '@lilstudies KOKKKK kobisa daring??? enak bgt ???? (darairiririiriiii)', 1),
(84, '', '@machiattochizi akuw tpi daring?????', 1),
(85, '', '@menacry Ga bang daring', 1),
(86, '', '@akwaamarrin Gm daring!! ???????', 2),
(87, '', 'tp ttp ada upacara daring sie', 2),
(88, '', 'sudah nyaman dengan daring?? https://t.co/v7IOTgKC8j', 1),
(89, '', '@ilhdra aku smk put, masuk\" daring skrg blm ngerasain sklh di sklh, lngsung pkl', 2),
(90, '', '@samsungID Kalo tiba tiba dapet #GalaxyZFlip3 pasti seneng banget, berguna banget buat aku buat kuliah daring,,', 1),
(91, '', 'mana pagii lagi nder, tapi gue masih daring https://twitter.com/shelovereading_/status/1531633551237877761', 1),
(92, '', 'WEH jsbsoe ternyata gue upacaranya daring anjir', 2),
(93, '', '@aanisarh__ Demi apaa aku yang dah bosen daring gak bisa offline,dia mau minta daring ??', 2),
(94, '', 'Wisudanya daring, hixxxx', 2),
(95, '', '@ningyzhou_ Buat anakku ... Buat jaga-jaga kalau nanti sekolahnya daring lagi,, hp anakku gak tau knpa gk bisa d pakein kartu', 1),
(96, '', 'emang ya Londoners, disetiap pilihan pasti selalu ada sisi positif dan negatifnya. kalau lo sendiri lebih pilih kuliah tatap muka atau kuliah daring? yuk bisa ditulis alasannya juga di kolom komentar di bawah ini yaa~\n\n#LIFEBEAT https://t.co/UAywqkOLhQ', 2),
(97, '', 'Prei tp kon upacara daring. .\nSuuuu. .', 2),
(98, '', 'lagian dosenku tuh knp rajin amat sih tgl merah suruh masuk, masih mending kalo daring lah ini luring', 1),
(99, '', '@ohmybeautybank ini wisuda daring tahun kmrn si, simple bgt https://t.co/rsLSY6HXwo', 2),
(100, '', 'Dulu aku demam panggung, waktu SD jarang banget maju buat sekedar jawab pertanyaan. Sekalinya aku maju langsung keringetan banyak banget parah??. Dan itu berlanjut sampe aku SMA kelas 10 (lama banget yak) tapiii setelah daring lama dan lebih sedikit murid aku jadi sedikit percaya diri', 1),
(101, '', '@ohmybeautybank Ini tp buat wisuda daring aja ?? https://t.co/SwcHsZUV8r', 2),
(102, '', '@Reno_Bachtiar23 gua udh libur dri tgl mrah kemaren trs pas nya jga daring', 1),
(103, '', '@bliblidotcom Mau heran adek gw makin pinter aja sekolahnya, tapi #GalaxyM33 ada fitur 120 Hz refresh rate yg memungkinkan mengikuti bimbingan daring dengan jelas\n\n#GakAdaMatinya #BlibliTerbaikDeh', 1),
(104, '', '@beaconfess kalau aku buat nambah uang jajan nder, karena daring uang jajan aku ga dikasih kecuali aku minta????', 2),
(105, '', '@Sean__dk11 bilang aja, klo gw misal.. hri ini gada kuliah tugas juga udh slesei, materi\" juga udh dibaca. emg posisi nya aja yg gak tepat sen, pdhl ngurung dikamar mah pas lgi ngerjain/ posisi daring, tpi yg sering diliat ortu lgi pas ngegame', 1),
(106, '', 'smpe skrang gak ilang ilang lg untung besok daring??', 1),
(107, '', 'seharian ikut kuliah daring grgr masuk angin??', 1),
(108, '', '@ttyongbbu masa sma gue daring anjr??', 2),
(109, '', '@collegemenfess wkwkwk aku skrg, sebenernya tanteku baik cm sepupuku rada rese. mau pindah nanti takut diomongin yang engga2, untung aku masi daring ??', 1),
(110, '', '@ttyongbbu aku sma kebanyakan daring??', 2),
(111, '', '@schfess versi gue mana ada serunya tai kudanil, kesel banget. masa daring SSSEATaAAaOONNNN astagaaa', 2),
(113, '', 'Besok libur, tapi upacara tetep lanjut ... Daring .. ya kan ??', 2),
(114, '', '@lbmaaiyh Maaf soal daring pantangannya cuman satu. Tidur. Wah kacau sih kalo ketiduran terus telat absen. Wkwkw. Untung alhamdulillah aku tuntas aja. Aku ga kehitung. Ada sekitaran lima kayaknya. Karena harus hadirin beberapa acara dari sekolah mewakilka', 2),
(115, '', '@ningyzhou_ Pengen buat putriku.. Biar kalau daring ga rebutan HP sama aku.. Soalnya hpku aku pake jualan jg.. Jd kalau rebutan rasanya gimanaaa gitu.. Bnyak ngalahnya emaknya..', 2),
(116, '', 'uas tinggal beberapa minggu dosen minta luring supaya bisa praktek langsung (pake software) karena pada salah semua dan ada beberapa ank yg luring tadi jadinya daring dianggurin. Luring diprioritaskan ??', 2),
(117, '', 'Besok memang tanggal merah. Tapi upacara daring jam 6.30 ??', 2),
(118, '', '2 tahun di SMA (1 tahun daring) baru pertama kali pulang sekolah jalan kaki https://t.co/C28t4wdsKT', 2),
(119, '', '@retarsip SENENG JUGAAA, kak rere? bukannya pjj sama full daring itu sama aja? HAHAHAH alhamdulillah aku udah full offlineee :3', 2),
(120, '', '@hwbak ahahha aku juga tugas daring sama video ujian praktek ga ada yg dikerjain gara2 lebih pentingin event2 gc rp, pas tamat dari situ nyesel ??', 2),
(121, '', 'udh udh jelas di tulis daring elu pada nanya gue, kalo pengumuman tuh dibaca kek dengan cermat', 1),
(122, '', '@skdltwt Guru aku gak ngasih kisi kisi\nMana aku gak ngerti sama pelajarannya karena kelamaan daring ????????', 2),
(123, '', '@convomfs ENGGAA, KELAS 8 W DARING ????', 2),
(124, '', 'daring meskipun gw komtingnya tetap scroll twitter??', 2),
(125, '', '@schfess sesuai yg ak seneng aja sih nder. ak milih soshum soalnya males belajar fisika kimia (akibat skul daring aku males sinau + ramudeng nek arp ngejar aku g suka materiny) dan aku pun memutuskan untuk linjur ??', 2),
(126, '', '@tanyakanrl msuk daring:(', 2),
(127, '', '@convomfs Wth anjr kls 8 gw suram ggr full daring', 2),
(128, '', 'masih nyaman daring su', 1),
(129, '', 'daring sii tp tetep ajaa????????????????', 2),
(130, '', 'Jirlah matkul yg pagi kuliah daring huaa', 2),
(131, '', '@ctrlsephia Kurang kurangin megang hp,kan kuliah ga daring.', 2),
(132, '', '@taktertolong hsjajz emang enak daring, tapi ngang ngong ??', 1),
(133, '', '@boo_nanaa wow daring. adrenalin rush tahap gaban.', 1),
(134, '', 'Radak bingung sih sama mahasiswa yg pengen online atau daring,karena emang pada dasarnya kuliah itu offline kalo udah ketentuan offline masa mau minta online, dikira kuliah online itu enak, selain sayang uangnya juga sayang kuliahnya, nggk bisa praktek langsung kayak di lab dll https://t.co/ONWsCYn6op', 2),
(135, '', '@ningyzhou_ Buat daring anak sekolah', 1),
(136, '', '@jjaeyunsh15 OALAAH HAHAHA SAMA BERARTI, KUKIRA KULIAH KRN KAKAKKU KULIAH TRS DARING ??', 1),
(137, '', '@ningyzhou_ ya Allah ini kebetulan lewat di saat aku habis kena tipu beli hp murah buat kakakku ??. kakakku beli hp buat keperluan anaknya sekolah (daring) tapi malah kena tipu, sampe skrg msh lemes soalnya itu uang bgi org miskin kek kita lumayan bgt. ', 2),
(138, '', '@ningyzhou_ Done all rules wish me luck. Butuh hp walau second buat sekolah aku. Soalnya hp yang ini udah sedikit lemot banget setiap daring dan kerjain tugas.', 2),
(139, '', '@tanyakanrl nder aku daring dari kelas 10, gini amat jadi angkatan 22 ??', 2),
(140, '', '@ningyzhou_ Krn hp yang aku pakai skrg ini dipakai barengan ber3, sejak pandemi &amp; sekolah mulai daring hp kita satu persatu mati total, aku akan bersyukur sekali andai aku bisa menang hp di GA kakak.. \n\ndone follow ya kakk.. https://t.co/SmtK51iSzk', 2),
(141, '', 'makin kesini wa cuma dibuka pas jam daring aja', 2),
(142, '', '@lintinggg_ KAANNNN ENAK DARING TOO', 1),
(143, '', '@hamiinn Oh daring ternyata, saatnya lanjut main di kasur kalo begitu. Enaknya makan apa?', 1),
(144, '', '@yoursloon iyaaaa hari ini daring, jd ga ke kampusss\n\nayo mam duluuuu?? udh siang juga iniii', 1),
(145, '', '@moonareas baju seragam bawahannya treaning gak pke sendal sepatu soalnya ak daring ??', 1),
(146, '', '@collegemenfess dompet sama hp doang soalnya g prnh ke kampus, nasib daring sampe lulus??', 2),
(147, '', '@convomfs lg daring', 1),
(148, '', '@milkyfliesz Iyakannn. Hbs daring gtu hpnya di cek, trs disimpen biar ngga dimainin trs... kasian lohh anak yg masi kecil gtu tontonannya udh begitu...', 2),
(149, '', 'Ujian praktik pas daring gini emang tenang banget ga kayak pas tingkat 1 masih luring beneran panas dingin tremor mules jadi satu, udah gitu beresnya bisa nyampe magrib karna nunggu giliran dan absen gw dibawah??', 1),
(150, '', '@chitanamonac Bener, apalagi udh 2 taun pandemi yh mau ga mau ortu bakal ngasih hp ke anak nya karna buat daring. Yh tapi di awasin juga lah anjrit ????', 2),
(151, '', 'wtp hari ini daring', 1),
(152, '', '@1minuteswithme wuahahahaha seneng banget klo daring knp y', 1),
(153, '', 'Ptn! Mandiri yang ujiannya daring apa aja ya?', 1),
(154, '', 'Kuliah daring 2 thn gapernah mikirin baju, dan hari ini bingung milih baju buat dipake kuliah ke kmps??', 2),
(155, '', '@qwertszzy @sbmptnfess daring kak https://t.co/QnZQahm62i', 1),
(156, '', 'alhamdulillah jdnya daring ?? https://t.co/fCNGZL6Q8D', 1),
(157, '', 'Finally semester 5 offline, setengah perjalanan dihabiskan kuliah daring', 2),
(158, '', '@euphokiaria OALAH YA ALLAH SINGKATAN SKRNG BANYAK BANGET???  tauku daring luring…  engga,  dosennya yang baru ngasih tau.  T  _____  T.', 2),
(159, '', 'ga demen nih gue kalo daring kek gini', 2),
(160, '', 'punten... cuma satu matkul dan gada dosennya knp komting kekeuh minta luring cuma demi pcr nya bisa presentasi???? pdhl gada praktiknya... presentasi bisa daring...', 1),
(161, '', 'Pagi-pagi udah dibikin ksl sama kelakuan diri sendiri, grgr salah liat jadwal kuliah yg harus nya daring malah gesit berangkat pagi mau ke kampus. Pas datang di kampus ko tbtb perasaan ga enak mana belum ada orang sama sekali huaaaa memalukan sekali ??', 2),
(162, '', '@karirfess Pertama-tama harus menguasai materi, karena pembelajaran daring kl pengajarnya ga menguasai materi bakalan krik2 kalo ga gt aa eee aaa eee jd kurang menarik', 2),
(163, '', 'kebanyakan daring sih gk bisa pungkirin jga yaallah jdnya guru kalah ma murid??', 1),
(164, '', '@kookidrama Anak sekarang tuh kecepetan dikasih gadget, gue dulu kelas 8 baru boleh pegang hp, tapi ga bisa dihindari juga sih soalnya kan mereka pake buat daring, kalau udah kek gini salah siapa coba? ??', 2),
(165, '', '@chilhypen enak bgt loe masih daring', 1),
(166, '', '@ningyzhou_ Aku butuh hp ini untuk anak, untuk mengerjakan tugas dari sekolah , hp anakku yang sekarang sudah tak mendukung lagi untuk kegiatan daring, layar retak semua karena sering jatuh. Mau ganti belum ada rejekinya selalu kepakai untuk kebutuhan yan', 2),
(167, '', '@ygbacainigila @schfess sma ku pas daring make ms teams, tapi gapernah kepake one note nya????', 2),
(168, '', '@ochosneko tidak bisa turu\njam 8 ada coolyeah daring ;w;', 2),
(169, '', '@fheutrchii belumm, masih kelas 11 dan ini emang lagi jadwal nya daring', 1),
(170, '', 'sekolah ku masa wisuda nya daring, gaseru bgt', 2),
(171, '', '@lbmaaiyh Maaf soal daring pantangannya cuman satu. Tidur. Wah kacau sih kalo ketiduran terus telat absen. Wkwkw. Untung alhamdulillah aku tuntas aja. Aku ga kehitung. Ada sekitaran lima kayaknya. Karena harus hadirin beberapa acara dari sekolah mewakilkan gitu.', 2),
(172, '', 'tibatiba vibenya kek daring sekolah', 1),
(175, '', '@AREAJULID @kotaksukasuka Definitely, kakakku??????\nOrang tua kami dua2nya lulusan SMA dan dua2nya jualan di kantin sekolah. Tapi anak pertamanya bisa selesai S-2 dan lulus PNS jadi dosen di salah satu universitas negeri.\nSemenjak pandemi, orang tua kami gak bisa jualan karena sekolah daring, dan kebutuhan—', 2),
(176, '', 'lu tau kemaren masa fakultas gue nurunin SK full luring padahal hari ini ujiannya...DAN GUE SAMA TEMEN TEMEN DARING GUE LG PADA DIRUMAH MASING MASING ??', 2),
(177, '', 'akhirnyaa w daring lagi', 1),
(178, '', 'https://t.co/TEeVulGQI0\n masa masa SMA ku cuma sebentar, soalnya sebagian daring wkwkk https://t.co/V2eZLXvkqz', 2),
(179, '', '@collegemenfess Jam 1, daring dan uas wkwk', 1),
(180, '', 'intinya daring jancok, semua dalam diri aku jadi menurun drastis dan ngembaliin ya susah, apalagi berkembang. anjing', 2),
(181, '', 'Aku, begitu suka ngobrol secara anonim, secara daring, karena aku nyaman dengan itu. Satu sisi diriku yg lain, dimana aku bisa berekspresi tanpa harus memikirkan strata sosial, suku, ras dan hal lain. Aku bisa haha hihi dengan penuh gairah dan semangat...', 1),
(182, '', '@collegemenfess Disemester kemarin ada tugas buat artikel dan dibuatnya kelompokan. Artikelnya harus berdasarkan data primer, wawancara gitu. Karena daring dan temen kelompok ku tuh beda domisili. So pasti nggak bisa wawancara bareng dong, akhirnya aku ng', 2),
(183, '', '@collegemenfess Wisuda gak abis duit banyak, yg ngabisin duit tuh skripsi, ada yg minta cd, buku skripsi, flashdisk, belom lagi ngasih tanda terima kasih, pas bimbingan banyak fc, belom lagi ongkos kesana kemari karna daring, jadi minta ttd harus ke rumah', 2),
(184, '', '@tanyakanrl takut ditatar dosen, takut presentasi gue kacau, takut gue malu maluin waktu presentasi, pengen daring lagi, gue kacau banget sih kenapa. padahal garap makalah juga ga asal2an tapi boleh gasi gue berharap ga dikasih takdir jelek waktu presenta', 1),
(185, '', 'Relate wkwkw kerjaan gua cm ngurus ponakan smbil kuliah ya untung masih daring, tp sama aja si offline jga ga boleh pulang sore jam set4an krn harus ngurus bocil?? https://t.co/xiYH9OGU4m', 1),
(186, '', 'besok pat day 2, chem sm bahasa daerah. GUE HRS APAAAAA, masalahnya mapel kimia ini gue gapaham dari pertama kali sekolah, dari kelas 1 gue gapaham, ok? mana daring mulu, guruny jg trlalu santai jd gue gapaham. gpp smgt ayo lo psti bisa, el. hmmmmmzzzz', 2),
(187, '', 'BESOK DARING. AMIN', 1),
(188, '', 'Perhimpunan Pendidikan dan Guru menilai maraknya tawuran pelajar belakangan ini merupakan imbas dari dua tahun belajar daring selama pandemi. #TempoMetro https://t.co/Il8O0B2L5F', 2),
(189, '', '@malaguts Gm gm daring ???????', 2),
(190, '', 'misal ni klo kls 7 ga daring, kita kan bisa kenal dr dlu ril wkwk', 2),
(191, '', '@Omoiyaeleja_ Gm daring ???????', 2),
(192, '', '@obe2tall Gm daring ?????', 2),
(193, '', 'disaat semua org pgn offline, gue pgn daring aja bisa ga si, bisa lah ya ya ampun', 1),
(194, '', 'daring aja dah daring', 1),
(195, '', '@Hyknn2 gue yang kelas 10 ga daring ngamgo apa lagi daring kayak lu kak??', 2),
(196, '', '@0755CIL Masalahnya gue dri kelas 10 tuh daring ga paham materi,kelas 11 gurunya gitu deh,trs sekarang bingung mau belajar dari mana', 2),
(197, '', 'semoga besok daring ??', 1),
(198, '', 'moots doain aku biar ulangan besok daring ya ??????', 1),
(199, '', 'Dulu\nKarna dulu aku masih bisa fokus banget sama apa yg aku kerjakan. Sekarang, kefokusan itu lenyap dibawa suasana daring :) https://t.co/aARkcjIoUf', 2),
(200, '', '11, daring tapi bener\" masa paling aktif sm anak\" organisasi, jadi seru bgt???? https://t.co/ibbNHgs77x', 1),
(201, '', 'maaf pak dosen, aku join daring tapi sambil scroll twiter ????', 2),
(202, '', 'hdeh inilah akibat tidur saat daring', 2),
(203, '', 'Enih sekarang sekamar sama maba, mabanya nanya pass wifi fakultas apa ya brrr brrr tidak tau dik saya kelamaan daring karena tinggal lulus doang.', 2),
(204, '', 'Aing teh dah g pernah make otak buat ngitung ngitungan lg sejak balik daring lagi\n\nMana masih banyak materi yg belum dijelasin lg y allah... Hduh', 2),
(205, '', '@annisaevaurelia kelas daring paling ok', 1),
(206, '', 'kayanya pas smt 6 gamau ambil digital deh, skrg ada tugas buat media pembelajaran daring aja males mikir hahahaha', 2),
(207, '', 'Sedih bgt sama diri sendiri, terjebak sama suasana daring n gasadar udah semester akhir????Waktu kuliah sering ditinggal dosen+sering sembrono ngikutin kuliah (offcam dan bobok sbg jalan ninja) Sekarang giliran ngerjain skripsi akunya lolak-lolok??\n#butuhbimbingan\n#jiwakesedihan https://t.co/JisxXp8XFV', 2),
(208, '', '@naphilejdn Hee daring duluuy', 1),
(209, '', '@juuustmine Masih daring kak di rumah, makanya ketiduran ??', 2),
(210, '', 'kelas 8 gue daring dirumah ???????? https://t.co/6hZXQjKvri', 2),
(211, '', '@jungwoniiess Hari ini aga cape ajaa sihh, soalnya uda ptm, kamu uda ptm atau masi daring?', 2),
(212, '', '@saturnueez Daring emg ngebosenin sih??, klo aku hari ini uda mulai aktifitas ptm jadi yaa agak capek ini aja baru pulang lgsg rebahaan????', 2),
(213, '', '@ralenlen yhhh ga seru kalau daring, tpi ttp semangat yh', 2),
(214, '', '@markablee Akan ku baca walaupun lagi daring????', 1),
(215, '', '@collegemenfess Jaman maba gua suka pake tuh jatah libur. Smenjak daring jd gapernah make :)', 2),
(216, '', '@mrkdalego wkwkkw iya kan masih daring gua udah offline ga sempet ngtweet pagi bisanya sore doang', 2),
(217, '', 'besok balik daring cookk gajelas bgt ini skolahan mentang mentang udh ada sistem online jadi sangeunahna murid disuruh daring', 2),
(218, '', 'Uas daring jgn dibuat luring pls @/geoan', 1),
(219, '', 'Nii liatt dekkk sambil ngeliat kalian, nuna juga daring?? https://t.co/7US2Yr1t5w', 2),
(220, '', '@tanyakanrl gimaa mau nggk ngebandingin nasib kalo gini caranya\nmasih mending lu nder\nlah di kampus gw gara gara daring nilai dipass semua anjerrr ipk sem.1 cuma 3,09 apa apaan pengen nangesss aja w dulu', 2),
(221, '', 'Allahu UAS luring aing gak kebayang???? please God, semoga UAS daring ajelahhh????', 1),
(222, '', 'ngantuk tp lg daring??', 2),
(223, '', '@qhaniyya @sbmptnfess kemarin aku daring jd lewat zoom sama webnya', 1),
(224, '', '@jjunyeochin Wah, gak ketahuan pa ? Umur berapa ? 1 ?\nHamilnya pas sekolah nya daring tuh bisa jadi', 2),
(225, '', 'daring jam segini, laper sama ngantuknya beuhh kerasa banget', 2),
(226, '', '@ajunkyuto Ahh iyaa sii, efek daring nih emang kita jadi sama hp atau laptop terus ????', 2),
(227, '', '@Reinadelalunna Ambisnya utbk aja si ?? sekarang mah kek b aja. Betul, tapi karena daring ya ttp main hp????', 2),
(228, '', '@nusantcra ini senin?? dan ak daring', 2),
(229, '', '@ajunkyuto Sabarr ku malah pen daring ??', 1),
(230, '', '@chanchanienie Aku masi daring sya??????', 2),
(231, '', 'kenapa sp nya luring plsss gue maunya daring hiks', 1),
(232, '', '@Winterrib sama si karna pas kelas 10 masih daring jadi tugasnya ya gcr aja, tapi pas udah masuk sekolah ngang ngong ga ngerti', 2),
(233, '', '@ciimoory daring lebih bikin ngantuk', 2),
(234, '', 'Bocah2 hasil pembelajaran daring bener2 bikin pening', 2),
(235, '', 'OMAYGATTTT dr dulu yg namanya hybird mah 50 luring 50 daring anjeng bikin emosi aja sumpah', 2),
(236, '', 'mahasiswa yg disalahkan karna gak dpt praktik pas semester 5 sedangkan semester 6 harus praktik klinik diluar daerah?? apalagi kami mahasiswa daring begini??', 2),
(237, '', '@bambbeargyu eh ga deng, ak baru inget pas semeter satu ak bolos terus + daring', 2),
(238, '', 'Daring aja napa si,males banget deh', 1),
(239, '', 'merasa beruntung karena hari ini full daring kuliahnya?? Coba aja kalo luring trs gue menggila di kampus kan gak lucu??', 1),
(240, '', 'Kebetulan dosen pada sibuk jadi daring deh wkwkw', 1),
(241, '', '@srslyhazza daring, nonono :(', 2),
(242, '', '@senichinya aku daring hari ini jadi masih semangat hidup ??', 1),
(243, '', 'udah hari senin aja nih, semangat banget buat kelas daring karena pake paketan dari @smartfrenworld yg sinyalnya ga bakal ilang2an deh kaya dia xixii??\n\n@SF_Community_ \n#NoDramaNoRibet\n#TemanKreasiIndonesia', 1),
(244, '', '@blazkswan samasamaaaa. ?? iyaaa daring hari iniii zzzzzz gue gamau offlineeee aaaaaaa maluuuuu habis potong rambut tp jadinya jelek bgtttt menyesaaaaalll. ????????????', 2),
(245, '', '[cm] sender smt8 kerasa bgt capenya padahal kuliah daring tp kek cape bgt soalnya udh smt8 masih ada pembelajaran 10 matkul dan tugasnya bnyk trs nyambi skripsian dengan dospem yang sngt selow respon, cape otak cape hati juga huhu. Buat kalian semangat trs yaa hehe????', 2),
(246, '', 'Pembelajaran secara daring cukup membuat para mahasiswa kesulitan untuk beradaptasi, dan ternyata pembelajaran daring berdampak juga pada kesehatan mental. https://t.co/DNwbSnVlse', 2),
(247, '', '@convomfs aku masih daring nih??', 2),
(248, '', 'Pacaran kok virtual...\nIku pacaran tah sekolah daring ??', 2),
(251, '', 'mumet bgt demiii, koyo bar sekolah daring', 2),
(252, '', 'Pacaran kok virtual, itu pacaran apa sekolah daring woy.', 2),
(253, '', 'Beneran anak kinestetik, memang cocoknya sekolah alam.. ???????? heran ga punya capek, dr jam 7 udah siap, ampe jam 11.30 mau pulang nanges... Yg nyetir pulang ikutan pegel.. Udah tracking, ngikutin duo emakgembul+anak ditambah meeting dadakan via daring\n\nSuwun yo bapake ??', 2),
(254, '', 'Relate bgt. Sekolah adek aku jg di sdi  ada tugas daring 7.30 dikabari gurunya 7.10 ?? https://t.co/rKgXs4tpDX', 2),
(255, '', 'tapi kadang kalo diinget tuh suka sedih. kayak, kelas delapan gua tuh harusnya nggak berhenti di situ karena c word. dan masa masanya gua nge-crush-in anak kelas sebelah juga tuh harusnya nggak kehalang sekolah daring', 2),
(256, '', 'Anjir w kena tipu ke sekolah tp sekolahnya DARING https://t.co/YlQttUis97', 2),
(257, '', 'Sabtu, sekolah sebelah daring. Berasa sepiii banget. Jadi pengen pulang aja ??????\nEfek dapat libur dua hari dan masuk di hari kecepit macem gini.', 2),
(258, '', 'abis daring sekolah rame yh', 2),
(259, '', 'Sekolah daring ?? https://t.co/ZY64tF6Ehd', 1),
(260, '', 'Jadi, saya berharap semoga pandemi segera berakhir agar kegiatan pembelajaran di sekolah dapat berlangsung secara luring dan berjalan normal seperti sedia kala...\nMeskipun jika saya kembali dalam sudut pandang sebagai mahasiswa saya masih menginginkan pembelajaran daring ??', 1),
(261, '', '@convomf gue, 3 tahun. bayangin aja seberapa kangen pas sekolah daring, mana gapunya wa nya. selama disekolah jg ga pernah ngobrol, intinya cuman eye contact gtu doang', 1),
(262, '', '@elmanohara Sik aku gak paham alesane, Mbak. Ra tek nangkep twit e. Ben sekolah tenanan ngono ya maksude? Ora daring.', 2),
(263, '', 'Temenku mindahin anaknya dari SD swasta ke negeri karena alasan karena dari rumah dan hampir 2 tahun full daring.\nAnaknya kaget, di sekolah baru banyak yang suka ganggu temennya, dan waktu ulangan nanya jawaban.', 2),
(264, '', '@bwoeken sebenernya pas mulai corona tidurku jadi jelek begitu, mungkin gegara sekolahnya daring dan ga sekolah offline yaa jadi bangunnya ga terlalu pagi, padahal dulu aku tidurnya jam 10 bahkan jam 10 kebawah, sedih banget jadi ancur gini udah mau 3 tahun ??', 2),
(265, '', '@schfess lomba olahraga antar sekolah gitu namanya cup apa ya lupa, dulu hampir ngelaksanain &amp; jadi panitia disitu tapi gagal karena daring', 2),
(266, '', '@schfess Umur 17ku takpakek buat ngendas ngurusin event sekolah yang jadi daring semua, alias gw menjelma dari kang acara jadi kang teknisi. Oiya sama merjuangin olimp geografi segudang tapi gaada yang menang. Singkatnya gw overwork sampek stress berkepanjangan', 2),
(267, '', 'Daring dah kek sekolah aen daring ??????', 2),
(268, '', 'Kenangan apaan sekolah cuma sebentar sisanya daring', 2),
(269, '', '@Askrlfess 10 bulan an, pas pandemi kebetulan kan sekolah nya lagi daring jadi nyempetin buat sekalian kerja', 1),
(270, '', '@crrmbs sekolah aku kayanya udah ga ada daring daringan lagi deh nangis bgt', 1),
(271, '', '@AREAJULID Emang, apalagi murid2 sekolah sw4sta kecil. Gue pernah ditelpon sm murid gara2 gue masukin dia ke list nama yg tugasnya ga ada sama sekali, literally dari awal belajar daring gak pernah ngumpulin apa2. Ditelpon sambil mara2 \"Saya tuh males bu, kenapa ibu nyusahin sih?\" \n\n??????', 2),
(272, '', 'masa nanti ulangan daring di sekolah dikasih pulsa 12k. bingung maketinnya, mana punya utang ke operator', 2),
(273, '', '@hrdbacot Buat anak sekolah daring... kasian soalnua  kelas zoom bareng waktunnya jadi klo ngk kaka atau ade nya yg ketinggalan kelas ..karena cm ada 1 hp', 2),
(274, '', 'Sekolah lain daring ini gurunya dateng ke rumah ngajar??????', 1),
(275, '', 'Selain jenis makanan yang tak sehat, pola makannya pun tak teratur. Pandemi ini memperparah pola makan A karena sekolah dilakukan daring sehungga sering melewatkan makan.', 2),
(276, '', 'lah kemaren waktu sekolah daring aja pada ngeluh ttg tugas banyak emg kalo sekolah katolik gak banyak tugas juga yak yaa kan katanya wuih sekolah katolik bagus bagus', 2),
(277, '', '@convomf meratapi sekolah daring yg pelajaran nya tak kunjung masuk otak', 2),
(278, '', 'EH KALIAN UJIANNYA PAKE HP ATAU KERTAS?!!!?!? MASA PUNYAKU ADA RENCANA PAKE KERTAS?!?! ?? KEK SABAR DULU LAH, BARU JUGA MASUK SEKOLAH SETENGAH TAHUN. ITUPUN KADANG DARING. GA SEPENUHNYA MASUK, MASA IYA PAKE KERTAS?!?!!?', 2),
(279, '', 'Lebih Parah lagi Ditambah Pengaruh Gadget .. \nDampak Sekolah daring https://t.co/1mKghFC1c9', 2),
(280, '', '@schfess Yh aku mah gk beda jauh dr smp, cm kan kemaren daring hampir 2 tahunan jd kagok lg wkwk. Tp beneran deh, sekolah yh begitu aj. Tugas lbh susah dan banyak? Gk jg suka suka guruny itu mh. Ya ada beberapa sih yg lebih tdk punya belas kasih -_-', 2),
(281, '', 'jd males ngaji, awalnya sll semngat kalo ngajii pas masa sekolah daring, eh pas dah offline jd maless hihi', 1),
(282, '', '@tanyakanrl Dan ya gw sekolah dengan masih penuh tekanan, dan akhirnya pas kelas 3 Sem 2 itu daring dan gw bisa pelan² memperbaiki mental gw yg acak² an, tpi dari semua hal yg nyakitin itu Alhamdulillah nya Allah masih ngasi gw satu temen SMP yg baik nya ga ketulungan yg masi temenan SMPskrg', 1),
(283, '', '@skiescious semangat iyh, kalau sekolah daring tuh bikin pusing tapi gatau deh kalau km', 2),
(284, '', '@Shaggy_Solo @lintanklintunk @Kemdikbud_RI @Itjen_Kemdikbud @PemkotSamarinda @ppid_smr @SamarindaUpdate 4. Kuota sudah ngga pernah lagi dikasi oleh pihak sekolah\nSekolah daring anaknya stress orangtuanya stress.\nOrangtua jd kaya disuruh sekolah lagi', 2),
(285, '', 'PACARAN KOK VIRTUAL, LU PACARAN APA SEKOLAH DARING ANJING', 2),
(286, '', 'Ortu guweh \"kalo gak pandemi mah gpp dh mamah masukkin sekolah yang aga mahal dikit, lah ini daring toh sama aja sekolah dimana juga dh yang penting ijazah\"', 2),
(287, '', '@starsjaeyong untung masih daring,langsung tidur lagi je besok sekolah wkwk', 1),
(288, '', 'Oh my god\n\nNih gara2 Corona gue sekolah daring ga ngerti apaw ngangngong dirumah terus aish jinjjaaaa https://t.co/9S9SdBXuZY', 2),
(289, '', 'buat apa daring kalo tugas kumpul nya jg lngsng di sekolah??', 1),
(290, '', '@warninzg Kan saya sekolah non daring, jadi pinter sampai ke usus dan hati', 2),
(291, '', '@detikHealth Laaahhhhh suruh pakai masker lagi,,, tutup tempat ibadah lagi,,,, sekolah daring lagiiiii', 1),
(292, '', '@astryoww Yapss...apalagi pasca covid, kaya gaada semangat buat sekolah terlalu nyaman daring hihihi', 1),
(293, '', '@aldovi100 Sido gak betah kuliah daring', 2),
(294, '', 'Syukurnya ujian ku masih kebanyakan daring cuma 2 matkul yg offline, bisa lah hype cb bts ksksksksk', 1),
(295, '', 'baru semalem sumpah. dpt kelompok yg anak2nya diem ajaa. kesana mau, kesini mau. ditanya baiknya gmn, pd jwb terserah. gamau gerak kalo ga digerakkin. mau gamau hrs gerakkin mereka + aku lebih byk kerjanya.. ya diasikin ajaa. gapapa mungki', 1),
(296, '', '@collegemenfess Kalau daring biasanya langsung banyak yang keluar-masuk gmeet, grup wa langsung rame, apalagi kalo dosennya ngancem absennya dikasih alpha kalo gada yang jawab, panik mode on sekelas. Kira\" kalau luring gimana yaa? Maklum angkatan 20 gaper', 2),
(297, '', '@collegemenfess Tetep full. Makanya pas daring mending keluar kostan darimana bayar tapi ga ditempatin', 1),
(298, '', '[cm] kebijakan di kost kalian kalo gaditempatin bayarnya tetep full atau setengah?aku bingung bgt ditagih tiap bulan tp masih daring:’ posisinya aku dah bayar buat 3 bulan di awal', 2),
(299, '', '@taephaniee Tgl 23 klo gak salah kak, soalnya aku daring smpai tgl 23 karena ruangan kampus di pakai sm orng yg lagi utbk', 1),
(300, '', '@thannajaaaaa terserah kamu sihh. tapi kalau dipake buat kuliah jaman sekarang ini (apalagi kalo daring) yg kaya tipeku menurutku kurang worth it??', 2),
(301, '', 'Bisa gasi lanjut daring aja sampe lulus ak dah pewe dirumah yarob', 1),
(302, '', '@sulisrahmadanii Temenin vua daring yuk, bills on me', 1),
(303, '', '@ngalamfess Ikuloh kampus urusono pak, 2th lebih kenaken daring, gawane ngejaki daring ae', 2),
(304, '', 'Hari ini full bgtt wehh, kuliah daring dari jam 7 pagi-12 siang. Otw ke kampus buat offline 1 jam aja mana ak naek motornya balapp se x masak cuma 30 menitt coyy rekorr wkwkwk', 2),
(305, '', '@Unsoedfess1963 Halahh dosen ku cuma janji\" aja \"mingdep kuliah luring ya\" tau nya di ghosting dan karna udh mepet kelas, mau gamau daring dan sy nyesel mandi pagi', 2),
(306, '', '@tq3illl Gua yg baru tatap muka lagi setelah 4 bulanan daring, berasa banget jadi remaja jompo di sekolah. Baru aja nyampe ga ada 1 jam pingin pulang wkwkwk', 1),
(307, '', 'Dulu di SMP bukan yang paling rame sih, tapi ya rame aja gitu. Eh semenjak SMA daring kan, jadi?? https://t.co/i2h7VqbPhi', 2),
(308, '', 'Jujur ini aku ketar ketir banget Karna belum kerjain PASBK daring dan linknya Uda ditutup ??????\nSemoga bisa dibuka lagi alias dikasih keringanan,aamiin.', 2),
(309, '', 'ternyata beberapa kampus belum luring ya :( ayuk sini tukeran sm ak ak mau daring aja ??', 1),
(310, '', '@amandavaharani Wah kalau itu emg susah sih, buut if youre daring just remember “apologizing is easier than asking for permission” HAHA', 2),
(311, '', '@springunions Wkwkwk momennya daring', 1),
(312, '', 'ga pernah belajar (slama daring) https://t.co/931v5a6qnb', 2),
(313, '', 'BESOK DARING, TAPI TETEP BERANGKAT PRAMUKAAA JAM DUA ????', 1),
(314, '', 'padahal pas daring ga pernah ngerasain sakit pinggang, kecuali pas banyak tugas', 1),
(315, '', 'Rucika merupakan pengadaan ruang aman bagi mahasiswa aktif IKSI untuk dapat bercerita ataupun berkeluh kesah terkait berbagai macam persoalan yang sedang dihadapi. Ruang aman ini dapat warga IKSI akses melalui media daring, yaitu LINE OpenChat.', 1),
(316, '', '@jaedenmaniez kek gue dong besok daring sama aja kek libur siee', 1),
(317, '', 'CAH TIWAS SENENG JARESE SESOK DARING JEBUL ISIH MELBU TATAP MUKA', 1),
(318, '', 'ugm_fess siapa yg mau kuliah daring lagi?? Capek bgt praktikum offline :\'))', 1),
(319, '', '@dtinggaldeact sebenernya itu hoki waktu daring', 1),
(320, '', 'cara nyadarin kawan pingsan secara daring selain minta tolong bantuan jin, ada?', 1),
(321, '', 'Kesulitan Internet, Siswa di Sumsel Tempuh 8 Km Kerjakan Tugas Daring https://t.co/jXKp25bLSm', 2),
(322, '', 'Daring (Tak Terencana namun Berbuah Manis) https://t.co/5uQtvN73m7', 1),
(323, '', '@MiftaMiev Belajarnya daring, tapi sppnya g boleh di WA in', 2),
(324, '', 'Kusebagai mamak-mamak kepikiran, ini anak gasekolah apa? Nggak ada daring? Nggak ngerjain tugas ente? Trus dari pagi pergi, izin sama ayah bundanya gimana dah? Wkwk herman https://t.co/otdNccKy0S', 2),
(325, '', 'Woelah untunk buka chrome, tab daring masih kebuka, jdi inget tugas kan??', 2),
(326, '', 'di sini ada anak SMP? aku ada tugas yang butuh bantuan kalian nih. tugasnya itu simulasi daring, jadi aku sebagai guru dan kalian sebagai murid, kalau bersedia rep yaa, ada feenya kok. #zonauang', 1),
(327, '', '@greyskykar DARING KAAAKK ?????????? WORKSHOP KURIKULUM BRU JD DARINGG tp tetep ada Pramuka wajib siiii padahal senengnya daring mau ngindarin Pramuka :(((((', 1),
(328, '', 'W balik kerja lanjut ngajarin dede secara daring:\" LDR nya bukan cuman sama doi tapi juga sama dede wkwkwk berasa banget gilaaaakk LDR kaya gini, jadi ingin kerja di kota asal aja dah rasanya', 2),
(329, '', '3 hr nahan demam naik turun, masih nyusuin bayi, ngurus si sulung ujian daring, cm diminta beli semangka aja ga bs.', 2),
(330, '', '@AMOURIIES bnyakin tidur min ini ril bgt aku tidur mulu pas daring terus jadi tinggi', 2),
(331, '', 'doain besok daring ????????????????????????????????', 1),
(332, '', '@bullsyndicate1 sedih daring ak lebih suka offline daring kek becanda tbtb task aja banyak wkwkw', 2),
(333, '', 'yaAllah bsok pertama kli upacara setelah 2 tahun daring', 1),
(334, '', 'Waktu kls 10 suka tapi gegara pandemi alhasil daring jadi...ya gitu dh https://t.co/877BNTb7ai', 2),
(335, '', 'mahasiswa lain dh offline ini masih daring ???? https://t.co/TRTuvtpR1f', 2),
(336, '', 'aku akhir2 ini sibuk osis sama daring jd tugas seabreeekkkk ajg gila kh ini mepet pula deadline nya ???????? gakuat urang', 2),
(337, '', '@baecloey oalah daring, hshshs padahal berharap offline??', 2),
(338, '', '@callmehuptoyou Waduhhh trus gmn, daring dong besok?', 2),
(339, '', '@luthfiisyaaa Sisa Daring memang menyedihkan ????', 2),
(340, '', '@collegemenfess Dosenku kayak gitu juga ngga ya liat angkatanku sampe sekarang daring terus :\")', 2),
(341, '', '@Muktiaddiin_ Nasib mhs daring??', 2),
(342, '', 'smg ilneg daring biar gue bisa ke sini dulu?? https://t.co/aig0tU9iSw', 1),
(343, '', '@wonyvou senin doang, selebihnya daring', 1),
(344, '', 'wkwkwk tp keknya ini sama deh sakitnya sampe keringat dingin ingat bgt mana pas lg kuliah tp daring si https://t.co/k1y2r1EF5H', 2),
(345, '', 'Daring Gal ?? https://t.co/nIIis4xFp4', 1),
(346, '', 'Sidang tuh daring aja pls, perut gue gabisa diajak kerjasama klo offline mah??', 1),
(347, '', '@chanjuxd Kayaknya dia daring dehh soalnya hari ini kan tgl 19', 1),
(348, '', 'untung sabtu daring??', 1),
(349, '', 'besok sama sabtu daring awokawokawok', 1),
(350, '', '@DC_Stan_Account Daring era v2', 1),
(351, '', '@alisyarief Berarti peraturan2 dibuat masa PPKM jg dicabut om harusnya.biar yg masih sekolah daring bisa sekolah tatap muka lagi.kasihan yg skolah daring.', 2),
(352, '', 'pgnn sklh ttp daring bkn luring ????', 1),
(353, '', 'pls akhiri perkuliahan daring semester ini, aku sudah terlalu stres mikir sinyal', 2),
(354, '', 'drama perkuliahan daring, pas kelas trus tbtb mati listrik trus ujan trus gada sinyal trus leptop kalo ngga nyolok ga nyala ??', 2),
(355, '', 'kuliah daring ditiadakan, Dosen uinsa! mulai tidak memakai masker saat tatap muka berlangsung https://t.co/K5T8PwIXz3', 2),
(356, '', '@collegemenfess seruu tp ya gt kalo ujian wkwk untung masih daring', 1),
(357, '', '@convomfs oppo a12 dibeli krn mw daring tgl 7 nov 2020', 1),
(358, '', 'lewat sekolah bubaran, berasa kangen masa sekolah.. (padahal daring) https://t.co/crd30xFcX9', 2),
(359, '', 'Banyak yg pasif kalau beliau mengajar :\"( ada yg blg bawaannya mengantuk klo pak masuk sehingga ga tau apa yg dibahas :\"(. Minusnya kuliah daring gini, dosen dikacangin... https://t.co/Zac1pCKVRp', 2),
(360, '', '@chiiiblabla tuhkan uasnya harus daring tauk ???? @ itera', 1),
(361, '', '@darkrwell daring kok', 1),
(362, '', 'Sekolah udah mulai kembali normal lagi tapi jiwa ini masih di dunia daring??', 1),
(363, '', '@sqaudade Sumpah kalau lu dengerin berasa daring sama Bu dosen anjir', 2),
(364, '', 'Mak w beli pulsa mau dipaketin. Awalnya tethering ke w. Adek nonton yutup. Kuota w gabanyak dan mau buat daring:) ngeliat theteringnya buat yutuban w batesin cm bisa 1 koneksi yaitu ke laptop berharap yg nyambung ke hp mati. Agak curiga kok ytnya masi nyala kirain udah beli.', 2),
(365, '', 'hdhh daring msh lama??', 2),
(366, '', 'mls bgt masa daring tetep ekskul ??', 1),
(367, '', '@VerlianElsha Iyaa sementara daring sit sg penting iyaa oyaa', 1),
(368, '', '@kooalee sori w gi sibuk daring anjay', 1),
(369, '', '@ucoganteng Td gw baca² katanya kita dpt 20 sks dari kampus yg dituju trs dpt lagi tambahan 6 sks dari kampus kita. Tp yg dari kampus kita itu bljr nya daring gitu', 1),
(370, '', 'Keponakanku si anak SMP hari ini field trip sekolah setelah 2 tahun sekolah daring. Ku seneng banget akhirnya dia bisa mulai menjalani kehidupan laiknya ABG yang haha hihi bergerombol sama temen-temennya :\')', 2),
(371, '', 'alhamdulillah ga jadi debat, ngebut materi karena sering ketabrak libur + daring', 2),
(372, '', '@chesnacityx Sama , jadi dsni jelas 1-5 PJJ alias daring', 1),
(373, '', 'di bilang kalo daring ga usah daftar kuliah :)', 2),
(374, '', '@afrkml Aku kuliah (daring) 2 thn di Kanada dan ga pernah nemuin satu orang pun yang masalahin/ngehujat grammarku, Ners. Ketika aku minta maaf ttng itu pun mreka jawab \"No, don\'t feel bad about it\" dan semacamnya. Karena itu pula, aku jadi semakin berani ', 1),
(375, '', '@IHUTAOU_ aku balik daring ...', 1),
(376, '', '@doeserves Nggak, kelas 11 saya \'kan masih daring.', 1),
(377, '', 'Gimana tuh videocall sambil latihan baca doa, jadi kaya anak sd daring setoran hafalan', 2),
(378, '', '@rockstarstae Sambil daring', 1),
(379, '', '@rockstarstae engga kak, lgi sambil daring nih', 1),
(380, '', 'disuruh ngerjain tugas MTK dalam keadaan daring dan emg udah dari orok ga bisa mtk..otak\" anak IPS gw mah???? https://t.co/hgFPQMYFrC', 2),
(381, '', 'pengen daring lagi', 1),
(382, '', '@UTD_Barry hahaha mungkin, bro temenin aku pkpa di uii yok. Daring nih, undip udah offline....', 2),
(383, '', 'disini ada 1747 manusia, tolong doain aku besok daring??', 2),
(384, '', 'MENTANG MENTANG DARING NGASIH TUGAS SEENAKNYA', 2),
(385, '', 'Udah sampe kampus tau nya daring ?? https://t.co/V6DDnfwasb', 2),
(386, '', '@liasayangksoo emg udh oflline?? aku msh full daring dong ?? https://t.co/UnEhnJkOcG', 1),
(387, '', 'daaaah muk daring dulu????', 1),
(388, '', '@tanyakanrl daring oh daring https://t.co/GbYVJTCoBs', 2),
(389, '', 'kasian @alfiannafi28 udah mau 2 tahun kuliah di unair jangankan masuk kelas gini, dia ke gedung unair aja belum pernah karna daring terus. gpp yg penting wisuda nanti ga online kasian amat lanjut S2 cuman biar ngerasain wisuda offline?? https://t.co/zT71Kkmqyd', 2),
(390, '', '@tanyakanrl aku pas daring tahun lalu jadi adm olshop', 1),
(391, '', 'Hari ini ngajar daring, kerjaan rumah dah beres semua. Jadi bingung mau ngapain lagi wkwk', 1),
(392, '', '@marxveII IYA KEK LU LAGI DIOMELIN DOSEN PAS DARING', 2),
(393, '', 'ternyata kuliah hari ini daring semua todddngentotttt \ntau gt aku kelon https://t.co/VNbja5834e', 2),
(394, '', '@nami_hot_gf Daring doang keknya', 1),
(395, '', 'HAH DEMI APASI SEKARANG DARING AKU UDAH PAKE SERAGAM????', 2),
(396, '', 'untung sekolah gue lagi daring,kalo ga gabrut bgt gilaaaaaaaaa', 1),
(397, '', '@lessugarc iya kakkk?? eh tapi udah paling bener deh safa elu ngerjain tugas, soalnya dua jam kayak lg daring tp ga berbobot??', 2),
(398, '', 'Tugas daring anak lanang https://t.co/XP69oJonqT', 1),
(399, '', '@littlbbygrl Wkwkwkwk daring mah gatau apa apa tiba tiba lulus aja biasanya', 2),
(400, '', '@putttann Dah nyaman daring wkwk', 1),
(401, '', 'daring anjingggggg', 2),
(402, '', 'Aku capek daring,kapan jadi your darling? @eaJPark', 2),
(403, '', 'ini tugas banyak bgt dh, mending sekolah sih gue daripada daring ????', 2),
(404, '', '@pcrjwkm @convomf ihhh katanya dosen2 pada raker ga sih jul makanya hari ini gue daring..', 2),
(405, '', 'SIAPA YG DARING HARINI?!! ANTERIN GUE KETMU LEE JENO BURUAANNN', 2),
(406, '', '@dinooashlee walah udah ptm...semangat semangaat!! meskipun ptm menyebalkan tapi daring tuh kadang ga ngertii pelajaran ygsi??', 2),
(407, '', '@madutaejay daring,tp ini dari tadi belum ada mapel yang masuk baru absen doank', 2),
(408, '', 'gue daring sih tapi gak ada tugas', 2),
(409, '', '@detiredbun yaah mana tau tanya aku yang mahasiswa daring 2 tahun..', 2),
(410, '', 'Wkwk september 2021 gua blg gua udh nyaman daring, malah kena hujat. Skrg udh mau full luring, mereka protes. Dah nemu nyamannya dimana kan??', 1),
(411, '', 'males banget ngampus kenapa gak daring aja', 1),
(412, '', 'dua tahun daring tiba tiba luring terus udah engga antusias,ada yang sama? https://t.co/T2hJ67IMFL', 1),
(413, '', 'okay hari ini ada daring pagi sama sore', 1),
(414, '', '@schfess Kangen sih mana kita masa SMA mostly daring:(', 2),
(415, '', 'Sambil nunggu tugas daring kakakk', 1),
(416, '', '@treasurebabble Inget lah dulu w jingkrak² nya kesenengan waktu daring di rumah wkwk terus ngang ngong di ghosting waiji (lagi)', 1),
(417, '', '@convomfs daring dek', 1),
(418, '', 'baru ngeh, sekarang tuh daring bukan libur??', 2),
(419, '', 'Aku yg kayaknya ga waras, kebanyakan interaksi daring tiada koneksi emosi~', 2),
(420, '', 'Pengen daring dulu, lgi mager :\'v', 1),
(421, '', 'gw paling ga bisa kalo ttg mtk  mana ini daring lagi..makin ga paham', 2),
(422, '', '@asamashiho Enakk, aku kemaren waktu kelas 12 wisuda malah daring bukannya libur', 2),
(423, '', '@kazuiry iyaa tapi daring ????', 1),
(424, '', 'shubuh2 daring jam segini belum selese juga ih', 2),
(425, '', 'bye mau zoom, hari ini gue daring cu', 2),
(426, '', '@rarazxxy semangat,gw masih daring (???)', 1),
(427, '', 'sp yg blm mandi gara2 ujan\npada ribut minta daring wkkw', 1),
(428, '', 'smoga besok daring deh yaallah, gpp deh asli walaupun gw udh beli tiket kereta tpi gpp daring aja', 1),
(429, '', 'Ini listrik cepet nyala doongg, aku ada daring jm 6', 1),
(430, '', 'Jam 8 ada seminar daring, pembicara, jam segini mata masih seger, astagaaa', 1),
(431, '', '@premangorongan @tegalfess scroll rep ny, dia blg daring', 1),
(432, '', 'apa kabar anak ub? yg lain offline malah online lg wkwkw mana full daring anjir makin ngangong https://t.co/4mMNKBlI1p', 2),
(433, '', '@Mystic_VJ Waah... daring hai bahut ??', 1),
(434, '', '@collegemenfess Sebenernya kalau ngga daring insyaallah aku lebih mudah buat pahamin statistika, tapi daring terus jadi aku cuman paham sedikit dan itu perlu diajarin temen dulu wkwk', 2),
(435, '', 'bnrn gue pgn daring lgggg ajaaa????????', 1),
(436, '', '@littlpoety @schfess ngga yg penderitaan sih, cuma yg kalo dirasa\" in flat\" aja terus semakin dipikirin kok ya nyesek juga, tapi gapapa lah yaa, daring kan untungnyaa', 1),
(437, '', 'pas daring itu sih ?? https://t.co/YjvX4x9zQG', 1),
(438, '', 'pgn pat daring plss plss mau daring aja deh', 1),
(439, '', '@clynopphile pls mau pat daring', 1),
(440, '', '@heoticall ini hampir 2 tahun daring, apa yg mau dinikmatin yachh', 2),
(441, '', 'sayangnya pandemi covid tela melanda Indonesia. terpaksa kita harus daring dan baru bertemu di kelas 9 nanti. awalnya daring di rumah berjalan lancar kita masih contacts2an. namun kemalasan yang ada didiri gue ini melanda. yang membuat gue lost contacts dan nilai gue menurun.', 2),
(442, '', '@natpvnt enak bangett daring materinya di kurangin ????', 1),
(443, '', '@UNSfess_ Hmm pasti gara\" disuruh nyai karna kalo daring sinyal jelek auto marah\"??', 2),
(444, '', 'Tidurr guys, besok daring yeahh ??', 1);
INSERT INTO `training` (`id`, `username`, `komentar`, `kategori`) VALUES
(445, '', 'Aku mau berbagi salah satu cerita tentang perkuliahan aku.Jdi waktu semester 1 aku ada salah satu matkul MKU.nah dikelas itu isinya random dari berbagai jurusan dan fakultas.Karna pembelajaran jga masih daring jdi kita ga terlalu kenal kan. Nah sampai lah...next (maap bnyk typo)', 2),
(446, '', '@convomf ak yg pas kls 8 full daring: https://t.co/JI47HV2bdS', 1),
(447, '', '@twitkocheng Please ini gambaran adek aku kalo dia lagi ngerjain tugas daring, pasti kucingku caper bolak balik lewatin buku dia kadang juga begini tiduran di atas buku atau tasnya dia WKWK.', 1),
(448, '', 'lebih serius dengerin space ini daripada 2 tahun daring', 2),
(449, '', '@zparkhaira eh iy jmn daring materi ny di kurangin', 2),
(450, '', 'DARING AJG', 2),
(451, '', 'jadi gini pak, maaf banget nie, tapi saya sudah terlanjur nyaman online. gimana kalo yg ingin luring dipersilakan tapi yg ingin daring juga bole? kan sama2 enak gt. Oh ya mungkin terkecuali kalo selama ujian boleh sambil google dan diskusi, saya akan pertimbangkan lg luringnya???? https://t.co/3YG0uNwBUZ', 1),
(452, '', '@lampungbase daring deket rs graha sm utb nderr sate sateannya enakk pol', 1),
(453, '', 'Pas daring sring https://t.co/psKS6al5Zn', 2),
(454, '', 'gue dengerin space dikira lagi daring ma emak w astaga ??????', 2),
(455, '', 'Nawaitu daring sampe semester pitu ????', 1),
(456, '', '@NarendraCanva hehe maaf ya anva sibuk sekola daring', 2),
(457, '', 'Udah disuruh buka masker. Takutnya uas yang tadinya daring jadi luring ak g siap', 1),
(458, '', '@collegemenfess Gakkkk. Gak mau jujur, kuliah 2 tahun daring dan tiba2 disuruh luring itu rasanyaa asdfghjkl. Nyaman ginii sumpah', 1),
(459, '', '@collegemenfess siap ga siap tergantung matkul. nek matkul aik yo mndg daring to pak hehe', 1),
(460, '', 'smp. sma gegara covid jd gkenal temen banyak + gaena skolah daring gaada kegiatan ketemu temen\" langsung;(( https://t.co/wwUkp8KYbm', 2),
(461, '', '@collegemenfess Siap ga siap si, aku lebih paham pas daring sbnernya mah', 1),
(462, '', '@collegemenfess enggak tapi pengen bgt luring, capek daring trss capek gangerti apa2', 2),
(463, '', '@klueneua Gue srius mumpung bsok cuma daring mau begadang WKWKWKWK', 2),
(464, '', '2 tahun ngajar daring terus, skrg anaknya  dah balik masuk sekolah sampai siang. Pulang kerja bebersih lsg tidur, jam segini baru melek. Mau dibawa kemana hidup ini ??', 2),
(465, '', '@kianbestari ayo pak bu kita daring seterusnya ??', 1),
(466, '', '@vaecasx huum baru make pas daring', 1),
(467, '', '@Pickaawchu Capek aktifitas... Dri daring ke luring', 1),
(468, '', '@schfess Oh iya terus juga, kan udh ptm nah ya, kalau semisal (nauzubillah) ada daring lg, usahain untuk usaha sendiri baik dalam mengerjakan tugas maupun ujian ya nder. Takutnya malah jadi kebiasaan dan malah lemah otaknya, trus utbk nya gimana nanti.', 2),
(469, '', '@uwoniecheeks masi daring:)', 1),
(470, '', '@TheDaringExplor hello Daring!', 1),
(471, '', '@quirkyydaddy Dari uts jeblok semua sih..., uts eksperimen model soal baru, uas transisi dari ujian daring ke luring, yg fis a 6 soal esai, yg fis b g boleh pake kalku, langsung buyar semua pacing ngerjain ujiannya', 2),
(472, '', 'Agak ga enak badan jg, untung seminggu kedepan daring', 1),
(473, '', 'kenaikan kelas 8 ga beli apa apa soalbya daring full', 1),
(474, '', 'Kalau saya masih mahasiswa, agaknya kecewa melihat SPP kami habis dianggarkan jadi bangunan kosong,\n\nalih-alih (misal) buat bangun sistem belajar daring yg lebih baik —selain Zoom/Edmodo, menambah koleksi perpus &amp; pinjam jarak jauh, pemutakhiran lab, pengembangan kurikulum, dll.', 2),
(475, '', 'aduh w batukbatuk keknya kopit ni tp ga keknya deng inima pasti kopit ni ninuninu @ itera pls daring sampe aku lulus atau aku sebarin kopit ke seluruh mahasiswa dosen dan staff itera ??????', 1),
(476, '', '@samsungID Galaxy A23 ini keren banget deh cocok banget buat gua yang lagi sibuk daring, Pasti Awesome banget deh.', 1),
(477, '', 'Etika anak sekarang tuh gara2 daring, lumayan perlu jd perhatian ortu dan sekolah. Beda banget etika anak jaman dulu sama sekarang ??', 2),
(478, '', 'disiplin deadline sebenernya bagis, tapi kalo nanti gua jd dosen, ada mahasiswa yg kaya gini kendala nya pasti gua kasih keringanan, karena ga semua hal berjalan mulus sesuai keinginan beliau di perkuliahan daring. internet serta fasilitas pasti sewaktu2 menghambat. https://t.co/Df9L25fs66', 2),
(479, '', 'Hamdalah besok full daring', 1),
(480, '', '@zikripasa @sbmptnfess bener bangett ,2 thn daring tanpa livemeet juga, brgkt pas dah smstr terakhir kls 12 itu pun cuma 2 jam dan 50% tatapmuka nya.', 1),
(481, '', '@ttaegqukieyyy_ Hahaa mangats, aku daring donk ????', 1),
(482, '', '@NDRCVNL Daring kack', 1),
(483, '', '@blaxxkroses_ luring berisik pak bu, lagi pembangunan daripada terganggu mending daring ga sih?', 1),
(484, '', 'kalo bapak/ibu mager kuliah luring, saya juga pak bu. Untuk kebahagyan dan kesejahteraan bersama lebih baik daring sampek lulus, bismillah ayam kumlot ??????', 1),
(485, '', 'Gua kira pemberitahuan bakal daring ternyata malah full day :)', 2),
(486, '', 'Setelah diskusi dg guru lainnya, ternyata iya. Ada dampak yg sangat besar dr 2 taun terakhir dilaksanakannya pembelajaran daring. Yg paling keliatan, siswa jadi kurang paham bgmna seharusnya sikap yg benar ketika berkomunikasi dgn guru..', 2),
(487, '', '@stuffira IYA!! , kayak nya enggak deh klo misalnya iya biasanyaaa daring ???????', 1),
(488, '', 'enihdoang si bontot yang lagi daring https://t.co/eCyREqU8a9 https://t.co/a4XDXYMMkC', 1),
(489, '', 'besok gue sekolah doain gaada daring daring lagi ??', 2),
(490, '', 'lo percaya ga gua jam segini lagi daring? WKWKWKWKWKW', 1),
(491, '', 'ehh bio jga si. sejak kelas1 searching ggl mulu gr2 daring', 2),
(492, '', 'contohnya ini, udh seribu kali kynya di blg kalo sementara belajar daring karna kls 6 lg ujian. msh aja?? https://t.co/xrs3Ybt17F', 1),
(493, '', '@PPDBDKI1 saya msh bingung dngn cara daring,saya mau ngambil smk tpi gd prestasi tpi ada kjp hari ini udh pendaftaran kan ya make nik itu bkn si? jdi tgl 30 nya pengajuan akun trus ngapain lgi :)', 2),
(494, '', '@convomf Cape cape ke kampus, eh kelasnya daring???? https://t.co/lszvBM1Ryw', 2),
(495, '', '@realpisiwayy masih ka ngekos mah, tpi kan kemaren hbis pulang buat lebaran tuh nah kebetulan masih daring juga jdi masih drmh aja dlu??', 1),
(496, '', 'Sampe sampe pernah suatu hari ditanya \"u ga betah apa ya di xnew, balik ke rumah dah hampir lebaran padahal daring kuliah dah awal puasaan\"\nMo diceritain kek model apapun Ndak bisa diungkapin,', 2),
(497, '', '@berrybenh semua ini efek daring ????', 2),
(498, '', '@samsungID Kamera galaxy A23 sejernih itu gaiss jadi kalo daring pake itu tetep pede, pasti awesome!!', 1),
(499, '', '@Pragade37157860 Hi daring', 1),
(500, '', 'Semoga besok semua matkul daring??', 1),
(501, '', '@matchaezka yh perpisahan kok daring ksian amat ?????? gwehk dnk perpisahan pake tenda alias gx banget anjx kyk org nikahan', 2),
(502, '', 'jd kan yaa waktu awal kuliah gitu smt 1, aku itu full daring/online. nah aku tu gak akrab/kenal sama temen sekelas ku. aku cuma kenal 1 doang yg aku deket sm dia gitu (btw dia cewe ya), NAHHH kita tu sering bgttt wa an pokoknya udh sefrekuensi gitu (aku ngerasanya sih gitu', 2),
(503, '', '@matchaezka Egk seru perpisahannya ikutan daring kyk sekula ??', 2),
(504, '', 'masa angkatan smp w perpisahan ny daring,, perpisahan kwok daring?????', 2),
(505, '', 'kouta buat daring tinggal dikit lagi', 2),
(506, '', 'Ditanyain dosenku sekaligus kaprodiku \"mba lebih suka daring/luring?\" \"Daring pak\" \"kenapa?\" \"Soalnya suka home sick\", mon maap saya anaknya jujur aja ??', 1),
(507, '', 'makin takut mendekati hari hari uas di kampus smoga lancar ya allah atoga smoga boleh daring ya allah', 1),
(508, '', '@collegemenfess nay, capek banget ya nder? aku juga semester 4 dan lg fase peralihan dari daring ke luring, capeknya full. ayo nder bareng bareng kejar toga!1!1!1!1???????', 2),
(509, '', 'Yang kurasa sebagai pendidik selama 3 tahun adalah bukan susahnya mentransfer ilmu ke siswa. Yang susah adalah bagaimana merubah akhlak anak-anak menjadi lebih baik. Apalagi banyaknya interaksi mereka dengan gadget selama pembelajaran daring membuat mereka kurang memperhatikan...', 2),
(510, '', '@magnoliabb06 Daring si Father ah ??', 1),
(511, '', '@convomf pernah, ultah ke 16 kemarin dah sdih krna daring dan ak kspian', 2),
(512, '', 'KCCI Gelar Kuliah Daring Humaniora ‘Kehidupan Diaspora Korea dalam K-Drama dan Novel Pachinko’ https://t.co/rWETzAezUI', 1),
(513, '', '@junmyeonjhjs Enak kalo Daring sih kak?????? soalnya aku prefer ke daring wkwk', 1),
(514, '', '@FirstMediaCares tolong secepatnya untuk teknisi datang ya.. soalnya saya pakai buat sekolah daring', 1),
(515, '', '@collegemenfess Ga ngerti ??karna kkn ku daring+luring, luring cuman berkunjung ke warga²', 2),
(516, '', '@bunny_c0tt0n ahaha iyaa, skolah aku masih daring sampe skrgg, blm offline idkw', 1),
(517, '', '@sbmptnfess univ terbuka yang ga daring pls', 2),
(518, '', '@UNSfess_ Ya haruslah, edan po daring terus\nKampus lama lama jadi sarang nyamuk', 2),
(519, '', '@andhhreyyaaa klo udh pusing kudu tdr lagi yh... aku malah daring', 2),
(520, '', 'Istirahat/quality time am keluarga or healing\" Kepake juga buat nugas. Kaget banget sii setelah 2 thnan lebih daring tp perasaan dulu ga secapek ini msh banyak waktu luangnya. Yukk semangatt yuuk linn pastii bisaaa', 2),
(521, '', 'baru nyampe, mau gue coba tp ga ada temen :((( mana sekolah daring lagiii https://t.co/jzR5JdFKJJ', 2),
(522, '', 'kuliah luring setelah 2,5 taun kuliah daring tuh wah rasanya kek astaghfirullah. mana isinya praktikum public speaking + bikin media audio visual lagi', 1),
(523, '', 'Ini daring.. Gak di kasih tugas apa apa kah..', 2),
(524, '', 'tim gamau daring :\') dah cape daring https://t.co/x38kN5SUZb', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeks untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeks untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeks untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testing`
--
ALTER TABLE `testing`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `testing`
--
ALTER TABLE `testing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT untuk tabel `training`
--
ALTER TABLE `training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=525;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
