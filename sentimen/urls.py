from django.urls import path
from sentimen.views import dashboard,  testing, login, logout, data_latih, latih_edit, latih_delete, data_uji, add_uji, uji_edit, uji_delete, pengguna, add_latih,  akurasi, perhitungan,hasil, akurasi_testing

urlpatterns = [
    path('', dashboard, name="dashboard"),
    # dashboard
    path('dashboard', dashboard, name="dashboard"),
    # end dashboard

    # pengguna
    path('pengguna', pengguna, name="pengguna"),
    # end pengguna

    # testing
    path('data_uji', data_uji, name="data_uji"),
    path('add_uji', add_uji, name="add_uji"),
    path('uji_delete/delete/<str:id>', uji_delete, name="uji_delete"),
    path('uji/edit/<str:id>', uji_edit, name="uji_edit"),
    path('testing', testing, name="testing"),
    path('hasil', hasil, name="hasil"),
    # end testing


    # training
    path('add_latih', add_latih, name="add_latih"),
    path('data_latih', data_latih, name="data_latih"),
    path('latih/edit/<str:id>', latih_edit, name="latih_edit"),
    path('latih_delete/delete/<str:id>', latih_delete, name="latih_delete"),
    # end training   
    

    
    path('akurasi', akurasi, name="akurasi"),
    path('akurasi_testing', akurasi_testing, name="akurasi_testing"),
    path('perhitungan', perhitungan, name="perhitungan"),
    path('logout', logout, name = 'logout'),

]
 