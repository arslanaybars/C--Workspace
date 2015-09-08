--�liskilendirme (JOIN) i�lemleri

--Tablo1 innet join Tablo2 on Tablo1.OrtakKolon = Tablo2.OrtakKolon

use VideoMarket
go
select * from Filmler

select FilmAd, TurAd, Yonetmen, Oyuncular from Filmler inner join FilmTurleri on Filmler.FilmTurNo = FilmTurleri.FilmTurNo

select Filmler.FilmAd, FilmTurleri.TurAd, Filmler.Yonetmen, Filmler.Oyuncular from Filmler inner join FilmTurleri on Filmler.FilmTurNo = FilmTurleri.FilmTurNo

select FilmAd, Filmler.FilmTurNo, TurAd, Yonetmen, Oyuncular from Filmler inner join FilmTurleri on Filmler.FilmTurNo = FilmTurleri.FilmTurNo

select * from FilmSatis

--G�nl�k Sat�� Bilgilerini Film �simleriyle birikte g�steren sorgu
Select Filmler.FilmAd, FilmSatis.Adet, FilmSatis.BirimFiyat, FilmSatis.Adet*FilmSatis.BirimFiyat, FilmSatis.Tarih as Tutar From FilmSatis inner join Filmler on FilmSatis.FilmNo = Filmler.FilmNo

--Romantik komedi filmiyle ilgili sat�� bilgilerini g�steren sorguyu yaz�n�z
Select Filmler.FilmAd, FilmSatis.Adet, FilmSatis.BirimFiyat, FilmSatis.Adet*FilmSatis.BirimFiyat as Tutar, FilmSatis.Tarih From FilmSatis inner join Filmler on FilmSatis.FilmNo = Filmler.FilmNo where FilmAd = 'Romantik Komedi'

select * from FilmTurleri
select * from Filmler

--Video Marketimizde bulunan komedi t�r�ndeki filmleri listeyen sorgu
Select Filmler.FilmAd, Filmler.Yonetmen, Filmler.Oyuncular, FilmTurleri.TurAd From Filmler inner join FilmTurleri on FilmTurleri.FilmTurNo = Filmler.FilmTurNo where FilmTurleri.TurAd = 'Komedi'

--FilmSatis bilgilerini m��teri ad� ve soyad� ile birlikte g�steren sorguyu yaz�n�z
Select FilmSatis.Tarih, Musteriler.MusteriAd + ' ' + Musteriler.MusteriSoyad as Musteri, FilmSatis.Adet, FilmSatis.BirimFiyat, FilmSatis.BirimFiyat * FilmSatis.Adet as Tutar from FilmSatis inner join Musteriler on FilmSatis.MusteriNo = Musteriler.MusteriNo

--M��terilere g�re toplam al��veri� tutarlar�n� m��teri isim ve soyisim bilgileriyle g�steren sorguyu yaz�n�z.
Select Musteriler.MusteriAd + ' ' + Musteriler.MusteriSoyad as Musteri, sum(FilmSatis.Adet * FilmSatis.BirimFiyat) as Tutar From Musteriler inner join FilmSatis on Musteriler.MusteriNo = FilmSatis.MusteriNo group by Musteriler.MusteriAd + ' ' + Musteriler.MusteriSoyad

--Satis bilgilerini Film Ad� ve M��teri bilgileriyle birlikte detayl� olarak listeleyen soruguyu yaz�n�z.
Select Musteriler.MusteriAd + ' ' + Musteriler.MusteriSoyad as Musteri, Filmler.FilmAd, FilmSatis.Adet, FilmSatis.BirimFiyat From FilmSatis inner join Filmler on FilmSatis.FilmNo = Filmler.FilmNo inner join Musteriler on Musteriler.MusteriNo = FilmSatis.MusteriNo

--Film Turlerine g�re toplam sat�� adetlerini g�steren sorguyu yaz�n�z
Select FilmTurleri.TurAd, sum(FilmSatis.Adet) as TotalAdet from FilmSatis inner join Filmler on FilmSatis.FilmNo = Filmler.FilmNo inner join FilmTurleri on FilmTurleri.FilmTurNo = Filmler.FilmTurNo group by FilmTurleri.TurAd

--Bililm Kurgu ve Dram Turlerinden yap�lan toplam sat�� adetlerini g�steren sorguyu yaz�n�z
Select FilmTurleri.TurAd, sum(FilmSatis.Adet) as TotalAdet from FilmSatis inner join Filmler on FilmSatis.FilmNo = Filmler.FilmNo inner join FilmTurleri on FilmTurleri.FilmTurNo = Filmler.FilmTurNo group by FilmTurleri.TurAd having FilmTurleri.TurAd = 'Bilim Kurgu' or FilmTurleri.TurAd = 'Dram'

--Where daha h�zl� cal�s�r direk odakl� ama having �nce hepsini gruplar sonra isteni g�srerir
Select FilmTurleri.TurAd, sum(FilmSatis.Adet) as TotalAdet from FilmSatis inner join Filmler on FilmSatis.FilmNo = Filmler.FilmNo inner join FilmTurleri on FilmTurleri.FilmTurNo = Filmler.FilmTurNo where FilmTurleri.TurAd = 'Bilim Kurgu' or FilmTurleri.TurAd = 'Dram' group by FilmTurleri.TurAd