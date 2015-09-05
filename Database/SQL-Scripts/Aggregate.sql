--Aggregate Fonksiyonlar�

--count -> ��lem say�s�n� verir.
--sum   -> Belirtilen kolondaki degerlerin toplam�n� verir.
--avg   -> Belirtilen kolondaki degerlerin ortalamas�n� verir.
--max   -> Belirtilen kolondaki degerlerin en y�ksek de�eri verir.
--min   -> Belirtilen kolondaki degerlerin en d���k de�eri verir.

--Geriye tek bir de�er d�nd�r�rler.

use VideoMarket
go

select count(*) as Sayisi from Musteriler
select count(MusteriNo) as Sayisi from Musteriler

--Video Marketimizde suanda bulunan yada sat�lan filmlerin say�s�
select count(*) as FilmSayisi from Filmler where Varmi = 1

--Video Marketimizde suanda bulunan dram t�r�ndeki filmlerin say�s�n� veren sorgu
select count(*) as DramFilmiSayisi from Filmler where FilmTurNo = 3

--Bug�ne kadar sat�lan toplam film sayisini g�steren sorguyu yaz�n�z
select sum(Adet) as ToplamSatilan from FilmSatis 

--Bug�ne kadar yap�lan toplam hasilat� g�steren sorguyu yaz�n�z
select sum(Adet*BirimFiyat) as ToplamHasilat from FilmSatis

--Tek seferde yap�la en b�y�k al��veri� tutar�n� g�steren sorgu.
select max(Adet*BirimFiyat) as MaxAlisverisTutari from FilmSatis

--Bug�ne kadar yap�lan sat��lar�n kullan�lan ortalama film sat�� fiyat�n� g�steren sorguyu yaz�n�z.
select avg(BirimFiyat) as Ortalama from FilmSatis

select * from FilmSatis

--Bug�ne kadar 2 nolu m��terinin yapt��� toplam al��veri� tutar�n� g�steren sorguyu yaz�n�z.
select sum(Adet*BirimFiyat) as IkiNoluMusteriToplam from FilmSatis where MusteriNo = 2

--Musterilerin yapt�klar� toplam al�sveris tutarlar�n� musteri numaralar�yla birlikte listeleyen sorgu.
select sum(Adet*BirimFiyat)  as MusteriToplamAlisveris , MusteriNo from FilmSatis group by MusteriNo

--Filmlere g�re toplam satis adetini film numaralar�yla birlikte g�steren sorguyu yaz�n�z.
select FilmNo, sum(Adet) as ToplamAdet from FilmSatis group by FilmNo

select * from FilmSatis

insert into FilmSatis (FilmNo, MusteriNo, Adet, BirimFiyat) values(6,2,3,17)

--Her bir m��teri ka� defa al��veri�e gelmi�tir.
Select MusteriNo, count(MusteriNo) as KacDefaGeldi from FilmSatis group by MusteriNo

--2 defadan fazla alisverise gelen musterilerin toplam al�sveris say�s� musteri numaralar�yla listeleyen sorgu
Select MusteriNo, count(MusteriNo) as KacDefaGeldi from FilmSatis group by MusteriNo having count(MusteriNo) > 2 

--2 defadan fazla alisverise gelen musterilerin toplam al�sveris say�s�n� ve toplam al�sveris tutarlar�n� musteri numaralar�yla listeleyen sorgu
Select MusteriNo, count(MusteriNo) as KacDefaGeldi, sum(Adet*BirimFiyat) as ToplamAlisveris from FilmSatis group by MusteriNo having count(MusteriNo) > 2 