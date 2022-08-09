from enum import Enum
from django.db import models

# Create your models here.

class Semester(Enum):
    
    SATU = 1
    DUA = 2
    TIGA = 3
    EMPAT = 4
    LIMA = 5
    ENAM = 6
    TUJUH = 7
    DELAPAN = 8

    @classmethod
    def choices(cls):
        return tuple((i.name, i.value) for i in cls)

class Matakuliah(models.Model):
    nama = models.CharField(max_length=100,null=True)
    semester = models.SmallIntegerField(null=True, choices=Semester.choices(),default=Semester.SATU)
    class Meta:

        db_table='tb_matkul'


class Training(models.Model):
    username = models.CharField(max_length=35,null=True)
    komentar = models.CharField(max_length=35,null=True)
    kategori = models.CharField(max_length=50,null=True)
    class Meta:
        db_table='training'

class Testing(models.Model):
    username = models.CharField(max_length=35,null=True)
    komentar = models.CharField(max_length=35,null=True)
    kategori = models.CharField(max_length=50,null=True)
    class Meta:
        db_table='testing'
class Pengguna(models.Model):
    nama = models.CharField(max_length=40,null=True)
    username = models.CharField(max_length=30,null=True)
    class Meta:
        db_table='pengguna'