1) SELECT klient_imie, adres_miejscowosc 
FROM adresy, klienci 
WHERE klienci.klient_id=adresy.adres_klient_id  

or

SELECT klient_imie, adres_miejscowosc
FROM klienci 
JOIN adresy ON adresy.adres_klient_id = klienci.klient_id

2) SELECT klient_imie, adres_miejscowosc 
FROM klienci, adresy 
WHERE adres_typ=1 
AND adresy.adres_klient_id = klienci.klient_id

or

SELECT klient_imie, adres_miejscowosc
FROM klienci 
JOIN adresy ON adresy.adres_klient_id = klienci.klient_id
WHERE adres_typ=1 

3) SELECT klient_imie, adres_miejscowosc
FROM klienci 
RIGHT JOIN adresy ON adresy.adres_klient_id = klienci.klient_id
WHERE klient_imie IS NULL

or

SELECT adres_miejscowosc, klient_id 
FROM adresy 
LEFT JOIN klienci ON klienci.klient_id = adresy.adres_klient_id
WHERE klient_id IS NULL

4) SELECT  klient_imie, adres_miejscowosc
FROM adresy 
RIGHT JOIN klienci ON klienci.klient_id = adresy.adres_klient_id
WHERE adres_miejscowosc IS NULL

or

SELECT  klient_imie, adres_miejscowosc
FROM klienci 
LEFT JOIN adresy ON klienci.klient_id = adresy.adres_klient_id
WHERE adres_miejscowosc IS NULL

5) SELECT  CONCAT(klient_imie, " ", adres_miejscowosc) 
AS imie_i_miejscowosc 
FROM klienci 
LEFT JOIN adresy 
ON adres_klient_id=klient_id


7) SELECT klient_imie, COUNT(adres_miejscowosc) 
AS liczbaMiejscowosci 
FROM klienci, adresy 
WHERE adres_klient_id = klient_id 
GROUP BY klient_imie 
HAVING liczbaMiejscowosci>1

8) SELECT klient_imie, COUNT(adres_miejscowosc) 
AS liczbaMiejscowosci 
FROM klienci, adresy 
WHERE adres_klient_id = klient_id 
GROUP BY klient_imie 
HAVING liczbaMiejscowosci=1

9)SELECT substring(klient_imie,1,1) AS pierwsza_litera_imienia, COUNT(adres_miejscowosc) 
AS liczba_miejscowosci 
FROM klienci, adresy 
WHERE adres_klient_id = klient_id 
GROUP BY substring(klient_imie,1,1) 




