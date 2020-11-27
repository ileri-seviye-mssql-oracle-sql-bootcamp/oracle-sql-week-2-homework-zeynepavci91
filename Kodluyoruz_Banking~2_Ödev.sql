--Yýlýn 4. aylarýnda en çok hangi amaçla kredi çekilmi?tir? ----Banking þemasý için
select purpose,month from loans where month=4

-- Bankanýn 50 ve ya 51 yaþýnda kadýn müþterilerinden ayný isme sahip olan müþterisi/müþterileri var mý? Varsa isimleri neler?----Banking þemasý için
select first,age,sex from clients where age between 50 and 51 and sex='Female'

--Hangi yýllarda kaç hesap açýlmýþtýr?----Banking þemasý için
select count(account_id), year from accounts group by year

-- Ýþlemlerin tiplerine göre toplam sayýlarýnýn büyükten küçüðe sýralamasý nedir?----Banking þemasý için
select COUNT(balance),type from transactions group by type

-- Ýþlemlerin tiplerine göre toplam tutarlarýnýn büyükten küçüðe sýralamasý nedir?----Banking þemasý için
select COUNT(amount),type from transactions group by type