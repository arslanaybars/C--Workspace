--Distinct, Top, with Ties ornekleri

use VideoMarket
go

select * from Filmler

select top 5 * from Filmler

--Bir defada yap�lan en y�ksek al��veri� tutar�n� ve yapan m��teri bilgilerini g�steren sorguyu yaz�n�z.
select top 1 MusteriAd + ' ' + MusteriSoyad as Musteri,Adet, BirimFiyat, Adet*BirimFiyat as tutar from FilmSatis inner join Musteriler on Musteriler.MusteriNo = FilmSatis.MusteriNo order by Adet*BirimFiyat desc

--Tek seferde en �ok al�sveris yapan 3 m�steri ve al�sveris bilgileri g�steren sorgu
select Top 3 with ties MusteriAd + ' ' + MusteriSoyad as Musteri, Adet*BirimFiyat as tutar from FilmSatis inner join Musteriler on Musteriler.MusteriNo = FilmSatis.MusteriNo order by Adet*BirimFiyat desc

--with ties kullan�ld�g�nda, s�ralama yap�lan kolonda e�itlik durumunda, k�r�lma oluncaya kadar listelemeye devam eder.

select * from Musteriler

select MusteriAd + ' ' + MusteriSoyad as Musteri,Adet, BirimFiyat, Adet*BirimFiyat as tutar from FilmSatis inner join Musteriler on Musteriler.MusteriNo = FilmSatis.MusteriNo

--Distinct, komutu tekrar eden kay�tlardan sadece birini listeler.

--Bugune kadar al��veri� yapan m��teriler (her m��teri sadece bir kez g�r�nt�lensin)
select Distinct (MusteriAd + ' ' + MusteriSoyad) as FarkliMusteri from FilmSatis inner join Musteriler on Musteriler.MusteriNo = FilmSatis.MusteriNo

--Bug�ne kadar al��veri� yapan m�steri say�s�
select Count(Distinct (MusteriAd + ' ' + MusteriSoyad)) as FarkliMusteri from FilmSatis inner join Musteriler on Musteriler.MusteriNo = FilmSatis.MusteriNo

--Video Marketimizde ka� farkl� t�rden film oldugunu g�steren sorgu
select count(Distinct FilmTurNo) as Farkl�Tur from filmler where varmi = 1

