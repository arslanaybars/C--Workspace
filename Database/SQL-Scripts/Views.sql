--View Dosyalar�

--Ger�ek dosyalar degildir, Veritaban�ndaki tablolar(base tables) kullan�l�r veriler bu tablolardan �ekilir. Bir anlamda select (sorgu) dosyalar�d�r.

use VideoMarket
go

select * from vw_filmler

select FilmAd, TurAd from vw_Filmler

Select * from vw_DetayliSatis

create view vw_MusteriRehber
as
select MusteriAd + ' ' + MusteriSoyad as Musteri, Telefon from Musteriler
go

select * from vw_MusteriRehber

use VideoMarket
go

alter view vw_KdvliSatis
with encryption
as
select MusteriAd + ' ' + MusteriSoyad as Musteri, FilmAd, Adet, BirimFiyat, Adet*BirimFiyat as Tutar, Adet*BirimFiyat*18/100 as KDV, (Adet*BirimFiyat*18/100) + (Adet*BirimFiyat) as KDVliTutar from FilmSatis fs inner join Filmler f on fs.FilmNo = f.FilmNo inner join Musteriler m on m.MusteriNo = fs.MusteriNo
go

select * from vw_KdvliSatis

exec sp_depends vw_KdvliSatis --View'dan etkilenen tablolar ve kolonlar�n� listeler

--with encryption olmadan alter ile kay�t edildiginde kaynak kodlar yeniden gorulebilecektir
exec sp_helptext 'vw_KdvliSatis' -- Dosyan�n kaynak kodlar�n� g�sterir

select * from vw_KdvliSatis

use VideoMarket
go

create view vw_DetayliFilmler
(FilmAdi, FilmTuru, Yap�mc�, Artisler, FilminOzeti)
as
select FilmAd, TurAd, Yonetmen, Oyuncular, Ozet from Filmler inner join FilmTurleri on Filmler.FilmTurNo = FilmTurleri.FilmTurNo
go

select * from vw_DetayliFilmler

--View Dosyalar�nda de�i�iklik-silme-kay�t ekleme i�lemleri

select * from vw_DetayliSatis

insert into vw_DetayliSatis(FilmAd, Musteri, Adet, BirimFiyat) values ('6.His','Oya Ko�ar',2,18)

--Insert islemi birden fazla base tabloyu etkilerse hata verilir ve kay�t ger�ekle�mez

select * from vw_Filmler

insert into vw_Filmler(FilmAd, TurAd) values ('Arog', 1)

insert into vw_Filmler(FilmAd) values ('Arog')

insert into vw_Filmler(TurAd) values ('Az ac�l�')

select * from FilmTurleri