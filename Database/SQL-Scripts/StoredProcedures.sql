--STORED PROCEDURES

-- T-SQL komutlar�yla program yaz�lan yap�lard�r.
-- Network trafi�ini azaltarak performans�n ve g�venli�in artmas�, en b�y�k avantajlar�d�r.
-- D��ar�dan bilgi(parametre) al�rlar ve d��ar�ya sonu� d�nd�rebilirler.

use VideoMarket
go

create procedure sp_FilmGetir
as
Select FilmAd, TurAd, Yonetmen, Oyuncular from Filmler inner join FilmTurleri on FilmTurleri.FilmTurNo = Filmler.FilmTurNo where Varmi = 1
go

exec sp_FilmGetir

exec sp_HelpText 'sp_FilmGetir'

alter proc sp_FilmGetir
with recompile
as
Select FilmAd, TurAd, Yonetmen, Oyuncular from Filmler inner join FilmTurleri on FilmTurleri.FilmTurNo = Filmler.FilmTurNo where Varmi = 1
go

exec sp_FilmGetir

exec sp_HelpText 'sp_FilmGetir'

--D��ar�dan al�nan bilgilere input parametreleri denilir ve defult olarak yaz�lmas�na gerek yoktur.
--Ancak d��ar�ya g�nderilecek sonu� bilgilerinin output olarak mutlaka belirtilmesi gerekir.

create proc sp_Topla
@Sayi1 int,
@Sayi2 int
as
Select @Sayi1 + @Sayi2 as Toplam
go


Exec sp_Topla 5, 6

alter proc sp_Topla
@Sayi1 int,
@Sayi2 int,
@Sonuc int output
as
Set @Sonuc = @Sayi1 + @Sayi2
go

Declare @Toplam int
Exec sp_Topla 5,6,@Toplam output
Select @Toplam as ToplamDeger

Exec ('Select * from Musteriler')

create proc sp_DinamikSorgu
@Tablo varchar(20)
as
exec ('Select * from ' + @Tablo)
go

Exec sp_DinamikSorgu 'FilmTurleri'

Exec sp_DinamikSorgu 'Filmler'

create proc sp_MusteriEkle
@MusteriAd varchar(20),
@MusteriSoyad varchar(20),
@Telefon varchar(20),
@Adres varchar(150)
as
insert into Musteriler (MusteriAd, MusteriSoyad, Telefon, Adres) values (@MusteriAd, @MusteriSoyad, @Telefon, @Adres)
go

exec sp_MusteriEkle 'H�seyin', 'Avc�', '2122343534', 'Be�ikta�-�stanbuk'

Select * from Musteriler

exec sp_DinamikSorgu 'Musteriler'

exec sp_MusteriEkle
@MusteriAd = 'Leyla',
@MusteriSoyad = 'Severcan',
@Telefon = '2163433434',
@Adres = '�mraniye-�stanbul'
Select @@IDENTITY as SonKayitNo

-----
alter proc sp_MusteriEkle
@MusteriAd varchar(20),
@MusteriSoyad varchar(20),
@Telefon varchar(20),
@Adres varchar(150),
@Sonuc bit output
as
set @Sonuc = 0
if(@MusteriAd is null)
begin 
	print 'Musteri Adi Bos Gecilemez.'
	return
end

if(@MusteriSoyad is null)
begin 
	print 'Musteri Soyadi Bos Gecilemez.'
	return
end

if exists(select * from Musteriler where MusteriAd = @MusteriAd and MusteriSoyad = @MusteriSoyad)
begin 
	print 'B�yle bir m��teri zaten var.'
	return
end
else
begin
insert into Musteriler (MusteriAd, MusteriSoyad, Telefon, Adres) values (@MusteriAd, @MusteriSoyad, @Telefon, @Adres)
set @Sonuc = 1
end
go
------

exec sp_DinamikSorgu 'Musteriler'

Declare @Cevap bit
exec sp_MusteriEkle
@MusteriAd = 'Sevgi',
@MusteriSoyad = 'Hosg�r',
@Telefon = '2125658941',
@Adres = 'Bak�rk�y-�stanbul',
@Sonuc = @Cevap output
if(@Cevap = 1)
print 'M��teri Bilgileri Kay�t Edildi'
else
print 'Kay�t Yap�lmad�!'


select sum(miktar) from Filmler where Varmi = 1

create proc sp_ToplamStok
@Toplam int Output
as
select @Toplam=sum(Miktar) from Filmler where Varmi = 1
go

Declare @Sonuc int
exec sp_ToplamStok @Sonuc output
Select @Sonuc as ToplamStok

