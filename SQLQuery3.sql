SELECT calisanlar.ad, calisanlar.soyad, calisanlar.maas
FROM calisanlar
INNER JOIN birimler ON calisanlar.calısan_birim_id = birimler.birim_id
WHERE birimler.birim_ad = 'Yazılım' OR birimler.birim_ad = 'Donanım';


SELECT ad, soyad, maas 
FROM calisanlar 
WHERE maas = (SELECT MAX(maas) FROM calisanlar);


SELECT birimler.birim_ad, COUNT(calisanlar.calisan_id) as toplam_calisan 
FROM birimler 
LEFT JOIN calisanlar ON birimler.birim_id = calisanlar.calısan_birim_id 
GROUP BY birimler.birim_ad;


SELECT unvan_calisan, COUNT(*) AS calisan_sayisi
FROM unvan
GROUP BY unvan_calisan
HAVING COUNT(*) > 1;


SELECT ad, soyad, maas
FROM calisanlar
WHERE maas BETWEEN 50000 AND 100000;

SELECT c.ad, c.soyad, b.birim_ad, u.unvan_calisan, i.ikramiye_ucret
FROM calisanlar c
LEFT JOIN birimler b ON c.calısan_birim_id = b.birim_id
LEFT JOIN unvan u ON c.calisan_id = u.unvan_calisan_id
LEFT JOIN ikramiye i ON c.calisan_id = i.ikramiye_calisan_id
WHERE i.ikramiye_ucret IS NOT NULL;






SELECT ad, soyad, unvan_calisan
FROM calisanlar
JOIN unvan ON calisanlar.calisan_id = unvan.unvan_calisan_id
WHERE unvan_calisan IN ('Yönetici', 'Müdür');

SELECT c.ad, c.soyad, c.maas, b.birim_ad
FROM calisanlar c
JOIN birimler b ON c.calısan_birim_id = b.birim_id
WHERE c.maas = (
  SELECT MAX(maas)
  FROM calisanlar
  WHERE calısan_birim_id = c.calısan_birim_id
);


SELECT calisanlar.ad, calisanlar.soyad, SUM(ikramiye.ikramiye_ucret) AS toplam_ikramiye
FROM calisanlar
INNER JOIN ikramiye ON calisanlar.calisan_id = ikramiye.ikramiye_calisan_id
WHERE ikramiye.ikramiye_tarih BETWEEN '2016-02-20' AND '2016-06-11'
GROUP BY calisanlar.ad, calisanlar.soyad

SELECT COUNT(*) AS 'Ikramiye Almayan Calisan Sayisi' 
FROM calisanlar 
WHERE calisan_id NOT IN (SELECT DISTINCT ikramiye_calisan_id FROM ikramiye)


SELECT b.birim_ad, COUNT(*) AS calisan_sayisi
FROM calisanlar c
INNER JOIN birimler b ON c.calısan_birim_id = b.birim_id
GROUP BY c.calısan_birim_id, b.birim_ad
HAVING COUNT(*) > 2;


