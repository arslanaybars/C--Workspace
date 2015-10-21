--Tarih �slemleri

select * from FilmSatis 

insert into FilmSatis(FilmNo, MusteriNo, Adet, BirimFiyat) values(7,2,4,15)
insert into FilmSatis(FilmNo, MusteriNo, Adet, BirimFiyat) values(8,1,2,16)
insert into FilmSatis(FilmNo, MusteriNo, Adet, BirimFiyat) values(9,5,5,12)

--Bug�n yap�lan satislari, satis tutarlar�yla birlikte gosteren sorguyu yaz�n�z.
select getdate() as bugun

select FilmNo, MusteriNo, Adet, BirimFiyat, Adet*BirimFiyat as Tutar from FilmSatis where Tarih=getdate()

select FilmNo, MusteriNo, Adet, BirimFiyat, Adet*BirimFiyat as Tutar from FilmSatis where Tarih = '2015.09.04'

select Convert(varchar(20), getdate(), 101) as tarih --> mm/dd/yyyy
select Convert(varchar(20), getdate(), 102) as tarih --> yyyy.mm.dd
select Convert(varchar(20), getdate(), 103) as tarih --> dd/mm/yyyy
select Convert(varchar(20), getdate(), 104) as tarih --> dd.mm.yyyy
select Convert(varchar(20), getdate(), 105) as tarih --> dd-mm-yyyy
select Convert(varchar(20), getdate(), 106) as tarih --> dd mmm yyyy
select Convert(varchar(20), getdate(), 107) as tarih --> mmm dd.yyyy
select Convert(varchar(20), getdate(), 108) as tarih --> hh:mm:ss
select Convert(varchar(20), getdate(), 109) as tarih --> mmm dd yyyy hh:mm:ss

select FilmNo, MusteriNo, Adet, BirimFiyat, Adet*BirimFiyat as Tutar from FilmSatis where Convert(varchar(20), tarih, 104) = '04.09.2015'

select FilmNo, MusteriNo, Adet, BirimFiyat, Adet*BirimFiyat as Tutar from FilmSatis where Convert(varchar(20), tarih, 104) = Convert(varchar(20), getdate(), 104) 

-- 1 - 3 eyl�l tarihleri aras�ndaki satislari listeleyen sorguyu yaz�n�z.
select Convert(varchar(20), tarih, 104) as Tarih, FilmNo, MusteriNo, Adet, BirimFiyat, Adet*BirimFiyat as Tutar from FilmSatis where Convert(varchar(20), tarih, 104) >= '01.09.2015' and convert(varchar(20), tarih, 104) <= '03.09.2015'

--Not: Convert ile varchara d�n��t�rd�����z i�in b�y�k k���k gibi kar��la�t�rmalarda tamamen string ifadelerdeki alfabetik s�ralama ge�erli olur
select Convert(varchar(20), tarih, 104) as Tarih, FilmNo, MusteriNo, Adet, BirimFiyat, Adet*BirimFiyat as Tutar from FilmSatis where Convert(Date, tarih, 104) between convert(Date, '01.09.2015', 104) and convert(Date, '03.09.2015', 104)

select Convert(Time, getdate(), 108)

select Convert(Date, getdate(), 104)

--Where Tarih Between tarih1 ad tarih2

--Birim Fiyat 15-18 aras�nda olan satislarin listesi
--buyuk esit ve kucuk esit seklinde gecer
select * from FilmSatis where BirimFiyat Between 15 and 18

Select MusteriNo,sum(Adet*BirimFiyat) as ToplamAlisveri from FilmSatis where Convert(Date, Tarih, 104) between Convert(Date, '01.09.2015', 104) and Convert(Date, '03.09.2015', 104) group by MusteriNo

Select MusteriNo,sum(Adet*BirimFiyat) as ToplamAlisveris from FilmSatis where Convert(Date, Tarih, 104) between Convert(Date, '01.09.2015', 104) and Convert(Date, '03.09.2015', 104) group by MusteriNo order by ToplamAlisveris

--Order by kolonadi -> belirtilen kolona gore kucukten buyuge dogru s�ralar
					-- default deeri ascending(kucukten-buyugedir).
					-- eger b�y�kten kucuge bir s�ralama istersek, order by kolanAdi desc (descending) kullanmal�y�z

Select MusteriNo,sum(Adet*BirimFiyat) as ToplamAlisveris from FilmSatis where Convert(Date, Tarih, 104) between Convert(Date, '01.09.2015', 104) and Convert(Date, '03.09.2015', 104) group by MusteriNo order by ToplamAlisveris desc

select * from Filmler order by FilmAd

select * from Filmler order by Yonetmen desc