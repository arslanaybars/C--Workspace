--DML Komutlar� Like Kullan�m�

--KolonAdi Like 'A%' -> A ile ba�lay�p herhangi bir karakter yada karakter grubuyla biten.
--KolonAdi Like '%A' -> Her t�rl� karakter yada karakter grubuyla ba�lay�p A ile biten
--KolonAdi Like '%A%' -> ��inde A harfi ge�en t�m ifadeler

use VideoMarket
go

Select * from Musteriler

--�smi A ile ba�layan m��terilerin listesi
Select * from Musteriler Where MusteriAd like 'A%'
Select * from Musteriler Where MusteriAd like '[A]%'

--Soyad� AR ile biten m��terilerin listesi
Select * from Musteriler where MusteriSoyad like  '%AR'

--K�yde oturan m��terilerin lisetesi
Select * from Musteriler where Adres like '%k�y%'

--Brad Pitt'in oynad��� fimlerin Ad�, Y�netmeni ve Oyuncu bilgilerini listeleyen sorgu.
Select FilmAd, Yonetmen, Oyuncular from Filmler where Oyuncular like '%Brad Pitt%'

--Ismi A ile P harfi aras�ndaki harflerle ba�layan m��terilerin listesi
Select * from Musteriler Where MusteriAd like '[A-P]%'

--Ismi A harfi ile ba�lamayan m��terilerin listesi
Select * from Musteriler Where MusteriAd like '[^A]%'

--�smi A ile Ba�lay�p 3 karakterden olu�an m��terilerin listesi
Select * from Musteriler Where MusteriAd like 'A__'

