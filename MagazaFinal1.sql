CREATE DATABASE Magaza
GO
USE Magaza

CREATE TABLE Personel
(
   PersonelId Smallint IDENTITY(1,1) NOT NULL,
   PersonelAd NVARCHAR(20) NOT NULL,
   PersonelSoyad NVARCHAR(20) NULL,
   PersonelUnvan NVARCHAR(20) NULL,
   PersonelTel NVARCHAR(60) NULL,  
   PersonelIseGiris DATE NULL,
   PRIMARY KEY CLUSTERED
   (
    PersonelId ASC
   ) on [PRIMARY]
)

CREATE TABLE Urunler 
(
   UrunId Int IDENTITY(1,1) NOT NULL,
   UrunAd NVARCHAR(20) NOT NULL,
   UrunAdet Smallint NULL,
   UrunKategori Tinyint NOT NULL,
   UrunMarka NVARCHAR(30) NULL,
   UrunFiyat Decimal(7,2) NULL,
   PRIMARY KEY CLUSTERED
   (
    UrunId ASC
   ) on [PRIMARY]
)

CREATE TABLE Musteriler 
(
   MusteriId Int IDENTITY (1,1) NOT NULL,
   MusteriKimlik NVARCHAR(11) NOT NULL,
   MusteriAd NVARCHAR(20) NOT NULL,
   MusteriSoyad NVARCHAR(20) NULL,
   MusteriAdres NVARCHAR(100) NULL,
   MusteriTel NVARCHAR(30) NULL,
   PRIMARY KEY CLUSTERED
   (
    MusteriId ASC
   ) on [PRIMARY]
)

CREATE TABLE Kategori 
(
   KategoriId Tinyint IDENTITY(1,1) NOT NULL,
   KategoriAd NVARCHAR(20)  NULL,
   PRIMARY KEY CLUSTERED
   (
    KategoriId ASC
   ) on [PRIMARY]
)
CREATE TABLE Hareket 
(
   HareketId Int IDENTITY (1,1)NOT NULL,
   HareketUrun INT NOT NULL,
   HareketMusteri INT NULL,
   HareketPersonel Smallint NULL,
   HareketAdet Tinyint NULL,
   HareketFiyat Decimal(7,2) NULL,
   PRIMARY KEY CLUSTERED
   (
    HareketId ASC
   ) on [PRIMARY]
)

INSERT INTO Personel(PersonelAd,PersonelSoyad,PersonelUnvan,PersonelTel,PersonelIseGiris) VALUES 
('Zehra','kabasakal','Satış Temsilcisi','053456486448','20201005') 
INSERT INTO Personel(PersonelAd,PersonelSoyad,PersonelUnvan,PersonelTel,PersonelIseGiris) VALUES 
('Melike','ataç','Satış Temsilcisi','05334586932','20101005') 
INSERT INTO Personel(PersonelAd,PersonelSoyad,PersonelUnvan,PersonelTel,PersonelIseGiris) VALUES 
('Hamide','ünlü','Mağaza Müdürü','05486593215','20201020') 
INSERT INTO Personel(PersonelAd,PersonelSoyad,PersonelUnvan,PersonelTel,PersonelIseGiris) VALUES 
('Selçuk','duman','Mağaza Görevlisi','053456486448','20200805') 
INSERT INTO Personel(PersonelAd,PersonelSoyad,PersonelUnvan,PersonelTel,PersonelIseGiris) VALUES 
('Ahmet','demir','Kasiyer','05345456548','20210121') 
INSERT INTO Personel(PersonelAd,PersonelSoyad,PersonelUnvan,PersonelTel,PersonelIseGiris) VALUES 
('Mehmet','akfırat','satış temsilcisi','05345655458','20210121') 

INSERT INTO Urunler(UrunAd,UrunAdet,UrunKategori,UrunMarka,UrunFiyat) VALUES 
('Çamaşır Makinesi','10','1','PHILIPS','1520') 
INSERT INTO Urunler(UrunAd,UrunAdet,UrunKategori,UrunMarka,UrunFiyat) VALUES 
('Bulaşık Makinesi','6','1','ARÇELİK','2000') 
INSERT INTO Urunler(UrunAd,UrunAdet,UrunKategori,UrunMarka,UrunFiyat) VALUES 
('Buzdolabı','15','1','BEKO','4250') 
INSERT INTO Urunler(UrunAd,UrunAdet,UrunKategori,UrunMarka,UrunFiyat) VALUES 
('Su Isıtıcısı','50','2','ARÇELİK','700') 
INSERT INTO Urunler(UrunAd,UrunAdet,UrunKategori,UrunMarka,UrunFiyat) VALUES 
('Mikser','20','2','PHILIPS','1520') 
INSERT INTO Urunler(UrunAd,UrunAdet,UrunKategori,UrunMarka,UrunFiyat) VALUES 
('Laptop','30','3','ACER','4250') 
INSERT INTO Urunler(UrunAd,UrunAdet,UrunKategori,UrunMarka,UrunFiyat) VALUES 
('Laptop','5','3','APPLE','8260') 
INSERT INTO Urunler(UrunAd,UrunAdet,UrunKategori,UrunMarka,UrunFiyat) VALUES 
('Laptop','9','3','LENOVO','4650') 
INSERT INTO Urunler(UrunAd,UrunAdet,UrunKategori,UrunMarka,UrunFiyat) VALUES 
('LCD','15','4','LG','6620') 
INSERT INTO Urunler(UrunAd,UrunAdet,UrunKategori,UrunMarka,UrunFiyat) VALUES 
('Laptop','5','3','APPLE','8260') 

INSERT INTO Musteriler(MusteriKimlik,MusteriAd,MusteriSoyad,MusteriAdres,MusteriTel) VALUES 
('25641359852','Ali','Ak','kartal/İSTANBUL','05368459253') 
INSERT INTO Musteriler(MusteriKimlik,MusteriAd,MusteriSoyad,MusteriAdres,MusteriTel) VALUES 
('27641359852','Veli','Baykal','Kadıköy/İSTANBUL','05632145896') 
INSERT INTO Musteriler(MusteriKimlik,MusteriAd,MusteriSoyad,MusteriAdres,MusteriTel) VALUES 
('25135359852','Ayşe','Çınar','Üsküdar/İSTANBUL','05362985417') 
INSERT INTO Musteriler(MusteriKimlik,MusteriAd,MusteriSoyad,MusteriAdres,MusteriTel) VALUES 
('12341359852','Fatma','Aksoy','Perndik/İSTANBUL','05369852147') 
INSERT INTO Musteriler(MusteriKimlik,MusteriAd,MusteriSoyad,MusteriAdres,MusteriTel) VALUES 
('34561359852','Sezen','Erol','Avcılar/İSTANBUL','05398614785') 
INSERT INTO Musteriler(MusteriKimlik,MusteriAd,MusteriSoyad,MusteriAdres,MusteriTel) VALUES 
('56841359852','Dilara','Özkul','Nişantaşı/İSTANBUL','05396682514') 

INSERT INTO Kategori (KategoriAd) VALUES ('BEYAZ EŞYA')
INSERT INTO Kategori (KategoriAd) VALUES ('KÜÇÜK EV ALETİ')
INSERT INTO Kategori (KategoriAd) VALUES ('BİLGİSAYAR')
INSERT INTO Kategori (KategoriAd) VALUES ('TELEVİZYON')

INSERT INTO Hareket(HareketUrun,HareketMusteri,HareketPersonel,HareketAdet,HareketFiyat) VALUES 
('2','1','1','1','2365') 
INSERT INTO Hareket(HareketUrun,HareketMusteri,HareketPersonel,HareketAdet,HareketFiyat) VALUES 
('6','1','1','1','3750')
INSERT INTO Hareket(HareketUrun,HareketMusteri,HareketPersonel,HareketAdet,HareketFiyat) VALUES 
('4','4','1','2','80')
INSERT INTO Hareket(HareketUrun,HareketMusteri,HareketPersonel,HareketAdet,HareketFiyat) VALUES 
('9','4','1','1','4690')
INSERT INTO Hareket(HareketUrun,HareketMusteri,HareketPersonel,HareketAdet,HareketFiyat) VALUES 
('3','3','1','1','6650')
INSERT INTO Hareket(HareketUrun,HareketMusteri,HareketPersonel,HareketAdet,HareketFiyat) VALUES 
('2','5','2','1','40')
INSERT INTO Hareket(HareketUrun,HareketMusteri,HareketPersonel,HareketAdet,HareketFiyat) VALUES 
('4','2','2','1','2400')
INSERT INTO Hareket(HareketUrun,HareketMusteri,HareketPersonel,HareketAdet,HareketFiyat) VALUES 
('8','2','2','1','550')


SELECT HareketId,UrunAd,MusteriAd+' '+MusteriSoyad AS ' MÜŞTERİ' ,PersonelAd +' '+PersonelSoyad AS 'PERSONEL' ,UrunAdet,UrunFiyat  FROM Hareket
INNER JOIN Urunler ON Hareket.HareketId=Urunler.UrunId
INNER JOIN Musteriler ON Hareket.HareketMusteri=Musteriler.MusteriId
INNER JOIN Personel ON Hareket.HareketPersonel=Personel.PersonelId

SELECT UrunAd,UrunAdet,UrunMarka,UrunFiyat FROM Urunler INNER JOIN Hareket 
ON Urunler.UrunId=Hareket.HareketUrun

ALTER TABLE Hareket WITH CHECK ADD CONSTRAINT [FK_hareketPersonel] FOREIGN KEY ([HareketPersonel])
REFERENCES Personel (PersonelId)

SELECT KategoriId,KategoriAd , UrunAd,UrunAdet,UrunMarka,UrunFiyat FROM Kategori 
LEFT JOIN Urunler ON Kategori.KategoriId=Urunler.UrunKategori

SELECT PersonelAd ,PersonelSoyad,PersonelUnvan,HareketAdet,HareketFiyat FROM Hareket
RIGHT JOIN Personel ON Personel.PersonelId=Hareket.HareketPersonel
 
 CREATE INDEX IDX_UrunMarka ON Urunler(UrunMarka)
SELECT * FROM Urunler WHERE UrunMarka='ARÇELİK'

GO 

CREATE PROCEDURE UrunHareket
(
@urunAd varchar(50)
)
AS 
SELECT UrunAd,UrunAdet,UrunMarka,UrunFiyat FROM Urunler INNER JOIN Hareket 
ON Urunler.UrunId=Hareket.HareketUrun where UrunAd=@urunAd
exec UrunHareket 'Laptop'

GO
CREATE PROCEDURE UrunKategori 

(
@KategoriID int
)
AS 
BEGIN
SELECT KategoriId,KategoriAd , UrunAd,UrunAdet,UrunMarka,UrunFiyat FROM Kategori 
LEFT JOIN Urunler ON Kategori.KategoriId=Urunler.UrunKategori where KategoriId= @KategoriId
END
exec UrunKategori 1
-----------------------------------------------------------------------------------------------------
GO
CREATE PROCEDURE spYeniKayıtUrun
(
   @UrunAd NVARCHAR(20),
   @UrunAdet Smallint ,
   @UrunKategori Tinyint,
   @UrunMarka NVARCHAR(30),
   @UrunFiyat Decimal(7,2)
)
As
Begin
insert into Urunler (UrunAd,UrunAdet,UrunKategori,UrunMarka,UrunFiyat)
values (@UrunAd,@UrunAdet,@UrunKategori,@UrunMarka,@UrunFiyat)
end
GO

exec spYeniKayıtUrun
'çamaşır makinesi',2,1,'Beko',2000
GO
-----------
CREATE PROCEDURE spYeniKayıtMusteri
(
   @MusteriKimlik varchar(11),
   @MusteriAd varchar(20) ,
   @MusteriSoyad varchar(20),
   @MusteriAdres varchar(55),
   @MusteriTel varchar(11)
)
AS
BEGIN
INSERT INTO Musteriler(MusteriKimlik,MusteriAd,MusteriSoyad,MusteriAdres,MusteriTel)
VALUES (@MusteriKimlik,@MusteriAd,@MusteriSoyad,@MusteriAdres,@MusteriTel)
END
GO

exec spYeniKayıtMusteri
'15624863253','Fatma','türk','Pendik/istanbul','05326987451'
exec spYeniKayıtMusteri
'15624123453','Yaşar','temiz','avcılar/istanbul','05566987451'

-----
GO
USE Magaza
CREATE PROCEDURE spYeniKayıtHareket
(
   @HareketUrun int,
   @HareketMusteri int ,
   @HareketPersonel int,
   @HareketAdet int,
   @HareketFiyat Decimal(7,2)
)
As
Begin
insert into Hareket(HareketUrun,HareketMusteri,HareketPersonel,HareketAdet,HareketFiyat)
values (@HareketUrun,@HareketMusteri,@HareketPersonel,@HareketAdet,@HareketFiyat)
end
GO

exec spYeniKayıtHareket
1,2,1,2,2500
-----
SELECT* FROM Hareket
GO
CREATE PROCEDURE spKategori
(
   @kategoriAd NVARCHAR(30)
)
As
Begin
insert into Kategori(kategoriAd)
values (@kategoriAd)
end
GO
EXEC spKategori
'AYDINLATMA'
-----
GO
CREATE PROCEDURE spYeniKayıtPersonel
(
   @PersonelAd NVARCHAR(20),
   @PersonelSoyAd NVARCHAR(20) ,
   @PersonelUnvan NVARCHAR(20),
   @PersonelTel NVARCHAR(30),
   @PersonelIseGiris DATE
)
As
Begin
insert into Personel(PersonelAd,PersonelSoyAd,PersonelUnvan,PersonelTel,PersonelIseGiris)
values (@PersonelAd,@PersonelSoyAd,@PersonelUnvan,@PersonelTel,@PersonelIseGiris)
end
GO

exec spYeniKayıtPersonel
'Melisa','Lale','satıs temsilcisi','05358695414','20190110'

exec spYeniKayıtPersonel
'seda','özkan','mağaza müdürü','05366895414','20181210'

exec spYeniKayıtPersonel
'faruk','taşçı','mağaza görevlisi','05326452414','20200310'
go
------

CREATE PROCEDURE spKontrol
@kimlik AS NVARCHAR(11)
AS
BEGIN
	DECLARE @isim AS VARCHAR(50)
	SELECT @isim=MusteriAd FROM Musteriler WHERE MusteriKimlik=@kimlik
	IF @isim IS NULL
	BEGIN
		SELECT('KİMLİK GEÇERSİZ')
	END
	ELSE
	BEGIN
		SELECT @isim
	END
END
EXEC spKontrol '56841359852' 

GO

CREATE PROCEDURE sp_hareket
@musteriAd as varchar(20)
as begin

SELECT HareketId,UrunAd,MusteriAd+' '+MusteriSoyad AS ' MÜŞTERİ' ,PersonelAd +' '+PersonelSoyad AS 'PERSONEL' ,UrunAdet,UrunFiyat  FROM Hareket
INNER JOIN Urunler ON Hareket.HareketId=Urunler.UrunId
INNER JOIN Musteriler ON Hareket.HareketMusteri=Musteriler.MusteriId
INNER JOIN Personel ON Hareket.HareketPersonel=Personel.PersonelId where Musteriler.MusteriAd=@musteriAd
end
exec sp_hareket 'Ali'
GO
CREATE PROCEDURE sp_iseGiris
@basTarih as date,
@sonTarih as date
as begin
select *from Personel where PersonelISeGiris BETWEEN @basTarih AND @sonTarih
end
exec sp_iseGiris '20101010','20210121'
----

CREATE PROCEDURE sp_personel
as begin
select PersonelAd,PersonelSoyad from Personel ORDER BY PersonelAd
end
exec sp_personel

select * from Musteriler

CREATE NONCLUSTERED INDEX IDX_musteri ON Musteriler
(
	MusteriAd
)
SET STATISTICS IO ON

SELECT * FROM Musteriler WHERE MusteriAd='Ali'

GO
CREATE NONCLUSTERED INDEX IDX_personel ON Personel
(
	[PersonelUnvan]
)
INCLUDE (PersonelId,PersonelAd,PersonelSoyad,PersonelTel,PersonelIseGiris)
GO
SET STATISTICS IO ON
SELECT * FROM Personel WHERE PersonelUnvan='satis temsilcisi'
GO

-----------------------------------------------------------bozulan indexleri görme
CREATE FUNCTION dbo.index_name (@object_id int, @index_id int)
RETURNS sysname
AS
BEGIN
RETURN(SELECT name FROM sys.indexes WHERE

 object_id = @object_id and index_id = @index_id)
END;
GO 
SELECT
OBJECT_NAME(object_id) AS tabloadi
,dbo.index_name(object_id, index_id) AS indexadi
,avg_fragmentation_in_percent
FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, NULL)
WHERE avg_fragmentation_in_percent >= 0
AND index_type_desc IN('CLUSTERED INDEX', 'NONCLUSTERED INDEX')
---------------------------------------------------------------bakım
DECLARE @Database VARCHAR(255)
DECLARE @Table VARCHAR(255)
DECLARE @cmd NVARCHAR(500)
DECLARE @fillfactor INT

SET @fillfactor = 90

DECLARE DatabaseCursor CURSOR FOR
SELECT name FROM MASTER.dbo.sysdatabases
WHERE name NOT IN ('master','msdb','tempdb','model','distribution')
ORDER BY 1

OPEN DatabaseCursor

FETCH NEXT FROM DatabaseCursor INTO @Database
WHILE @@FETCH_STATUS = 0
BEGIN

SET @cmd = 'DECLARE TableCursor CURSOR FOR SELECT ''['' + table_catalog + ''].['' + table_schema + ''].['' +
table_name + '']'' as tableName FROM ' + @Database + '.INFORMATION_SCHEMA.TABLES
WHERE table_type = ''BASE TABLE'''

EXEC (@cmd)
OPEN TableCursor

FETCH NEXT FROM TableCursor INTO @Table
WHILE @@FETCH_STATUS = 0
BEGIN

IF (@@MICROSOFTVERSION / POWER(2, 24) >= 9)
BEGIN
SET @cmd = 'ALTER INDEX ALL ON ' + @Table + ' REBUILD WITH (FILLFACTOR = ' + CONVERT(VARCHAR(3),@fillfactor) + ')'
EXEC (@cmd)
END
ELSE
BEGIN
DBCC DBREINDEX(@Table,' ',@fillfactor)
END

FETCH NEXT FROM TableCursor INTO @Table
END

CLOSE TableCursor
DEALLOCATE TableCursor

FETCH NEXT FROM DatabaseCursor INTO @Database
END
CLOSE DatabaseCursor
DEALLOCATE DatabaseCursor
--------------------------------------------------------backup
DECLARE @FileName VARCHAR(256)
DECLARE @FileDate VARCHAR(50)
SET @FileDate=CONVERT(VARCHAR(20),GETDATE(),112)
SET @FileName='C:\Temp'+@FileDate+'.BAK'
--BACKUP DATABASE Yeni TO DISK=@FileName
BACKUP DATABASE [backupTest] TO DISK=N'C:\Temp\backupTest.BAK'
WITH NOFORMAT , NOINIT,NAME=N'backupTest -full database backup', SKIP ,NOREWIND,NOUNLOAD,COMPRESSION,STATS=10
GO