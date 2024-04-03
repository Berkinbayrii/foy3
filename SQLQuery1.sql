
CREATE TABLE calisanlar (
    calisan_id INT PRIMARY KEY,
    ad VARCHAR(50) NOT NULL,
    soyad VARCHAR(50) NOT NULL,
    maas DECIMAL(10,2) NOT NULL,
    katilma_tarihi DATE NOT NULL,
    calısan_birim_id INT NOT NULL
);

CREATE TABLE birimler (
    birim_id INT PRIMARY KEY,
    birim_ad VARCHAR(50) NOT NULL
);

CREATE TABLE ikramiye (
    ikramiye_calisan_id INT NOT NULL,
    ikramiye_ucret DECIMAL(10,2) NOT NULL,
    ikramiye_tarih DATE NOT NULL
);

CREATE TABLE unvan (
    unvan_calisan_id INT NOT NULL,
    unvan_calisan VARCHAR(50) NOT NULL,
    unvan_tarih DATE NOT NULL
);

-- calisanlar tablosuna örnek veriler ekleme
INSERT INTO calisanlar (calisan_id,ad, soyad, maas, katilma_tarihi, calısan_birim_id) 
VALUES 
(1,'İsmail', 'İşeri', 100000, '2014-02-20', 1),
(2,'Hami', 'Satılmış', 80000, '2014-06-11', 1),
(3,'Durmuş', 'Şahin', 300000, '2014-02-20', 2),
(4,'Kağan', 'Yazar', 500000, '2014-02-20', 3),
(5,'Meryem', 'Soysaldı', 500000, '2014-06-11', 3),
(6,'Duygu', 'Akşehir', 200000, '2014-06-11', 2),
(7,'Kübra', 'Seyhan', 75000, '2014-01-20', 1),
(8,'Gülcan', 'Yıldız', 90000, '2014-04-11', 3);

-- birimler tablosuna örnek veriler ekleme
INSERT INTO birimler (birim_id,birim_ad) 
VALUES 
(1,'Yazılım'),
(2,'Donanım'),
(3,'Güvenlik');

-- ikramiye tablosuna örnek veriler ekleme
INSERT INTO ikramiye (ikramiye_calisan_id, ikramiye_ucret, ikramiye_tarih) 
VALUES 
(1, 5000, '2016-02-20'),
(2, 3000, '2016-06-11'),
(3, 4000, '2016-02-20'),
(1, 4500, '2016-02-20'),
(2, 3500, '2016-06-11');

-- unvan tablosuna örnek veriler ekleme
INSERT INTO unvan (unvan_calisan_id, unvan_calisan, unvan_tarih) 
VALUES 
(1, 'Yönetici', '2016-02-20'),
(2, 'Personel', '2016-06-11'),
(3, 'Personel', '2016-06-11'),
(4, 'Müdür', '2016-06-11'),
(4, 'Yönetici yardımcısı', '2016-06-11'),
(4, 'Personel', '2016-06-11'),
(4, 'Takım lideri', '2016-06-11'),
(5, 'Takım lideri', '2016-06-11');