--Y�l�n 4. aylar�nda en �ok hangi ama�la kredi �ekilmi?tir? ----Banking �emas� i�in
select purpose,month from loans where month=4

-- Bankan�n 50 ve ya 51 ya��nda kad�n m��terilerinden ayn� isme sahip olan m��terisi/m��terileri var m�? Varsa isimleri neler?----Banking �emas� i�in
select first,age,sex from clients where age between 50 and 51 and sex='Female'

--Hangi y�llarda ka� hesap a��lm��t�r?----Banking �emas� i�in
select count(account_id), year from accounts group by year

-- ��lemlerin tiplerine g�re toplam say�lar�n�n b�y�kten k����e s�ralamas� nedir?----Banking �emas� i�in
select COUNT(balance),type from transactions group by type

-- ��lemlerin tiplerine g�re toplam tutarlar�n�n b�y�kten k����e s�ralamas� nedir?----Banking �emas� i�in
select COUNT(amount),type from transactions group by type