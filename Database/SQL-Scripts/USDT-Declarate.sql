--Kullan�c� Tan�ml� Veri T�rleri (User Defined Data Types)

--Sql'de mevcut veri t�rleri kullan�larak veritaban� �zerine yeni veri t�rleri eklenebilir (istenilirse model sistem veritaban�na kaydedilerek t�m tablolarda kullan�lmas� sa�lanabilir).

--Kullan�c� tan�ml� veri t�rleri sp_addtype sistem stored procedure'� ile olu�turulur.

use VideoMarket
go
Exec sp_addtype adres, 'varchar(150)', null
Exec sp_addtype mass, 'money'
Exec sp_addtype maas, 'money'

Exec sp_droptype mass

--Local Degiskenler Tan�mlama
--Declare @degiskenadi verituru

Declare @sayi int
set @sayi = 5
select @sayi as Sayi


Declare @ad varchar(20) = 'Mehmet'
select @ad as isim


Declare @sayi1 int = 5
Declare @sayi2 int = 3
Declare @top int = @sayi1 + @sayi2
select @top as Toplam

Declare @sayi3 int = 5
Declare @sayi4 int = 10
if (@sayi3 > @sayi4)
begin
	select @sayi3 / @sayi4 as Sonuc
end
if (@sayi4 > @sayi3)
begin
	select @sayi4 / @sayi3 as Sonuc
end
else
begin
	select 1 as sonuc
end

select * from FilmSatis

Declare @EnYuksekFiyat money
select @EnYuksekFiyat= max(BirimFiyat) from FilmSatis
select @EnYuksekFiyat as MaxBirimFiyat 