DML (Data Manipulation Language) Komutlar�

--Select, �stenilen kay�tlar�n tablodan se�lmesini, listelenmesini sa�lar.
--Insert, Tablolara yeni kay�t (sat�r-row) ilave edilmesini sa�lar.
--Update, Tablolardaki kay�tlar �zerinde de�i�iklik, g�ncelleme yap�lmas�n� sa�lar.
--Delete, Tablodan istenilen kay�tlar� siler.

--VideoMarket Veritanan�n olu�turulmas�
use master
go
create database VideoMarket
go
use VideoMarket
go
create table FilmTurleri
(
	FilmTurNo int primary key identity(1,1) not null,
	TurAd varchar(20) not null,
	Aciklama varchar(150) 
)
go
create table Filmler
(
	FilmNo int primary key identity(1,1),
	FilmAd varchar(50) not null,
	FilmTurNo int not null,
	Yonetmen varchar(50) not null,
	Oyuncular varchar(max),
	Ozet varchar(max),
	Varmi bit default 1 not null,
)
go
create table Musteriler
(
	MusteriNo int primary key identity(1,1),
	MusteriAd varchar(20) not null,
	MusteriSoyad varchar(20) not null,
	Telefon varchar(20),
	Adres varchar(150)
)
go
--Kay�t Ekleme (Insert)

--Insert into TabloAdi(Kolon1, Kolon2, ....) values (Deger1, Deger2, ....)

Insert into FilmTurleri(TurAd, Aciklama) values('Komedi', '�ok Komik')
Insert into FilmTurleri(TurAd, Aciklama) values('Romantik Komedi', 'Hem romantik hem komik')
Insert into FilmTurleri(TurAd) values('Dram')
Insert into FilmTurleri(TurAd) values('Sava�')
Insert into FilmTurleri values('Action','Aksiyon')


--Secim, Listeleme ��lemleri (select)

--Select Kolon1, Kolon2, .... from TabloAdi Where �artlar

Select TurAd, Aciklama from FilmTurleri
Select TurAd from FilmTurleri

Select * from FilmTurleri

Insert into Filmler (FilmAd, FilmTurNo, Yonetmen, Oyuncular) values ('Gladyator',4,'Ridley Scot','Russel Crove')
Insert into Filmler (FilmAd, FilmTurNo, Yonetmen, Oyuncular) values ('Recep �vedik',1,'Togan G�kbakar','�ahan G�kbakar')

select * from Filmler

Insert into Filmler (FilmAd, FilmTurNo, Yonetmen, Oyuncular) values ('K�� Uykusu',3,'Nuri Bilge Ceylan','Haluk Bilginer, Demet Akba�')
Insert into Filmler (FilmAd, FilmTurNo, Yonetmen, Oyuncular) values ('H�k�met Kad�n',1,'Sermiyan Midyat','Sermiyan Midyat, Demet Akba�')

Insert into Filmler (FilmAd, FilmTurNo, Yonetmen, Oyuncular) values ('Esaretin Bedeli',3,'Frank Tarabond','Tim Robins, Morgan Freeman')
Insert into Filmler (FilmAd, FilmTurNo, Yonetmen, Oyuncular) values ('Forrest Gump',3,'Robert Zemeckis','Tom Hanks')
Insert into Filmler (FilmAd, FilmTurNo, Yonetmen, Oyuncular) values ('Y�z�klerin Efendisi',6,'Peter Jackson','Orlando Bloom')
Insert into Filmler (FilmAd, FilmTurNo, Yonetmen, Oyuncular) values ('Romantik Komedi',2,'ketche','Sinem Kobal')

Insert into Filmler (FilmAd, FilmTurNo, Yonetmen, Oyuncular) values ('Nothing Hill',2,'Roger Michell','Julia Roberts, Hugh Grant')

Insert into Filmler (FilmAd, FilmTurNo, Yonetmen, Oyuncular) values ('6. His',7,'Night Shaymalan','Bruce Willis')

Insert into Filmler (FilmAd, FilmTurNo, Yonetmen, Oyuncular) values ('Fight Club',5,'David Fincher','Brad Pitt, Edward Norton')
Insert into Filmler (FilmAd, FilmTurNo, Yonetmen, Oyuncular) values ('Truva',4,'Wolfgn Pettersen','Brad Bitt, Orlando Bloom')


Insert into FilmTurleri (TurAd) values ('Bilim Kurgu')
Insert into FilmTurleri (TurAd) values ('Korku')
Insert into FilmTurleri (TurAd) values ('Animation')
Insert into FilmTurleri (TurAd) values ('A�k')

select * from FilmTurleri 

select * from Filmler

insert into Musteriler(MusteriAd, MusteriSoyad,Telefon,Adres) values ('Ali', 'Ucar', '5348526952', 'Sisli-�stanbul')
insert into Musteriler(MusteriAd, MusteriSoyad,Telefon,Adres) values ('Vedat', 'Kaya', '5678526952', 'Kad��y-�stanbul')
insert into Musteriler(MusteriAd, MusteriSoyad,Telefon,Adres) values ('Oya', 'Sever', '5544526952', 'Bak�rk�y-�stanbul')
insert into Musteriler(MusteriAd, MusteriSoyad,Telefon,Adres) values ('Ay�e', 'Ko�ar', '5544524353', '�mraniye-�stanbul')

select * from Musteriler

select * from Filmler -- T�m filmleri listeler.

--5 numaral� Filmin Ad�, Y�netmeni ve Oyuncular�n� Listeleyen T-Sql sorgusunu yaz�n�z

Select FilmAd, Yonetmen, Oyuncular from Filmler where FilmNo = 5

--Komedi - 1 t�r�nden filmlerin listesi.
Select * from Filmler where FilmTurNo = 1

--Dram - 3 T�r�nden ve VideoMarketimizde bulunan filmlerin listesi
Select * from Filmler where FilmTurNo = 3 and Varmi = 1

--Kay�tlar �zerinde degisiklik (Update)

--Update TabloAdi Set KolonAdi = YeniDeger, KolonAd� = YeniDeger, ... Where Sart

--Gladyator filmini stokta kalmad� olarak i�aretleyen sorguyu yaz�n�z
Update Filmler Set Varmi = 0 Where FilmAd = 'Gladyator'

select * from Filmler

--Dram - 3 Filmlerinin �zet bilgisini, h�z�n, g�zya�� ve mendil olarak de�i�tiren sorguyu yaz�n�z
Update Filmler Set Ozet = 'h�z�n, g�zya�� ve mendil' where FilmTurNo = 3

--Kay�t Silme (Delete)

--Delete from TabloAdi Where Sart
--NOT : Update ve Delete i�lemlerinde where �art mutlaka belirtilmelidir, aksi taktide t�m tablodaki kay�tlar yap�lan i�lemden etkilenecektir

--4 numaral� m��teriyi silen T-sql kodunu yaz�n�z
Delete from Musteriler Where MusteriNo = 4

select * from Musteriler

insert into Musteriler(MusteriAd, MusteriSoyad,Telefon,Adres) values ('Ay�e', 'Ko�ar', '5544524353', '�mraniye-�stanbul')

create table FilmSatis
(
	SatisNo int primary key identity(1,1),
	Tarih datetime default getdate() not null,
	FilmNo int not null,
	MusteriNo int not null,
	Adet int not null default 1,
	BirimFiyat money not null default 0
)
go

Insert into FilmSatis(FilmNo, MusteriNo, Adet, BirimFiyat) values (3,2,1,20)
Insert into FilmSatis(FilmNo, MusteriNo, Adet, BirimFiyat) values (2,1,2,18)
Insert into FilmSatis(FilmNo, MusteriNo, Adet, BirimFiyat) values (6,5,5,15)
Insert into FilmSatis(FilmNo, MusteriNo, Adet, BirimFiyat) values (11,1,3,16)
Insert into FilmSatis(FilmNo, MusteriNo, Adet, BirimFiyat) values (10,3,1,20)
Insert into FilmSatis(FilmNo, MusteriNo, Adet, BirimFiyat) values (2,5,3,16)

select * from FilmSatis

Insert into FilmSatis(FilmNo, MusteriNo, Adet, BirimFiyat) values (4,2,2,17)
Insert into FilmSatis(FilmNo, MusteriNo, Adet, BirimFiyat) values (8,3,6,14)
Insert into FilmSatis(FilmNo, MusteriNo, Adet, BirimFiyat) values (11,5,3,15)

--Birim Fiyat� 15 TL ve alt�nda olan sat��lar�n listesi.
select * from FilmSatis where BirimFiyat <= 15

--Birim Fiyat� 16-20 TL. aras�nda olan sat��lar�n listesi.
select * from FilmSatis where BirimFiyat >= 16 and BirimFiyat <= 20

--2 veya 3 numaral� m��terilere yap�lan sat��lar�n listesi,
select * from FilmSatis where MusteriNo = 2 or MusteriNo = 3

--Yap�lan sat��lar� sat�� tutarlar�yla bilikte listeleyen T-sql sorgusunu yaz�n�z
select FilmNo, MusteriNo, Adet, BirimFiyat , Adet * BirimFiyat as Tutar from FilmSatis