--TRIGERS
--Triggerlar, tablo �zerine kaydedilirler. Do�rudan �al��t�r�lamazlar.
--Insert, Update, Delete i�lmemleri s�ras�nda otomatik olarak tetiklenir.
--Tabloya kay�t ekledi�imizde inserted tablosu, kay�t silindi�inde deleted tablosu olu�turulur.
--Update i�lemi s�ras�nda ise hem inerted hem de deleted tablolar� olu�turulur. Silinen orginal bilgiler deleted tablosuna yeni girilen bilgiler ise inserted tablosuna kay�t edilir.
--Trgglerlar transaction yap�s�na sahiptir, herhangi bir a�amada rollback ile t�m i�lemleri geri alabiliriz.
--For Triggers and Instead Of Trigger olmak �zere 2 cesit trigger tan�mlanabilir.
--For Triggerlar�nda, �ncelikle i�lem (insert, update, yada delete) ger�ekle�tirilir ve trigger sonras�nda devreye girer.
--Instead of triggerlar ise, olay ger�ekle�meden o i�lemin yerine yap�lmas� gerekenleri tan�mlar

use VideoMarket
go
create trigger tg_KayitSilinmesin on Filmler
for delete
as
if(select count(*) from deleted ) > 1
begin
	print 'Birden fazla kay�t silemezsiniz...'
	Rollback
	return
end
go

select * from Filmler
delete from Filmler where FilmNo > 15

exec sp_helptext tg_KayitSilinmesin

alter table Filmler
disable trigger tg_KayitSilinmesin --Trigger'� devre d��� b�rak�l�r

alter table Filmler
enable trigger tg_KayitSilinmesin --Trigger devreye girer

create trigger tg_FilmSatildi on FilmSatis
for insert
as
Declare @FilmNo int
Declare @Adet int
select @FilmNo = FilmNo, @Adet=Adet from inserted
update Filmler set Miktar = Miktar - @Adet where FilmNo = @FilmNo
go

insert into FilmSatis(FilmNo,MusteriNo,Adet,BirimFiyat) values(2,1,3,15)

--Instead of Triggers
--Constraints (k�s�tlay�c�lar) gibi �al���yor, yani i�lem ger�ekle�meden �nce evreye girer ve onun yerine �al���r

create trigger tg_SilmeYerine on Musteriler
instead of delete
as
update Musteriler set silindi = '1' from Musteriler inner join deleted on deleted.MusteriNo = Musteriler.MusteriNo
go

select * from Musteriler
delete from Musteriler where MusteriNo = 12