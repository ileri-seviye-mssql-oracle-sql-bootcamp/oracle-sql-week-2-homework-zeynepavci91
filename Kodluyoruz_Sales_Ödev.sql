-- Birim fiyatý 150'den büyük olan order_itemlarý bulunuz. ----Sales þemasý için
select * from order_ýtems where unýt_prýce> 150;

-- Ýþe alým tarihi Mayýs 2016 olan çalýþanlarý bulunuz. ----Sales þemasý için
select * from employees where hýre_date between '01/05/2016' and '31/05/2016'

-- Adý Charlie ya da Charlsie olan contactlarý bulunuz. ----Sales þemasý için
select * from contacts where first_name='Charlie' or first_name='Charlsie';

-- Adet sayýsý 10dan büyük 50den küçük envanterleri bulunuz. ----Sales þemasý için
select * from inventories where quantity>10 and quantity<50;

-- Bir sipariþte toplam 100.0000'den fazla ücret ödeyen emirler nedir? ----Sales þemasý için
select * from order_items where unit_price>'100,0000'

-- Manager'ý olmayan çalýþanlar hangileridir? ----Sales þemasý için
select * from employees where manager_id is null

-- State bilgisi boþ olan lokasyonlarý bulunuz.----Sales þemasý için
select * from locations where state is null

-- Durumu iptal olan ve satýcýlarý olmayan emirler hangileridir? ----Sales þemasý için
select * from orders where status='CANCELED' and salesman_id is null 

--Ocak 2016 ile Haziran 2016 arasýnda verilen sipariþler hangileridir? ----Sales þemasý için
select * from orders where order_date between '01/01/2016' and '01/06/2016'

-- Unvaný 'S' ile baþlamayan çalýþanlarý bulunuz. ----Sales þemasý için
select * from employees where job_title like 'S%'

-- Herhangi bir çeþit Intel Xeon ürünler hangileridir? ----Sales þemasý için
select * from products where product_name like 'Intel Xeon%'

-- Ýsmi 'C' ile baþlayan kontaklar hangileridir? Soyadýna göre alfabetik sýra ile sýralayalým. ----Sales þemasý için
select * from contacts where first_name like 'C%' order by last_name

-- Ürün adý 'Asus' ile baþlayan ve liste fiyatý standart ücretinden küçük olan ürünleri bulunuz. ----Sales þemasý için
select * from products where product_name like 'Asus%' and 'list_price' < 'standard_cost'

-- 1,2,4,5 id'li kategorilerin bilgilerini bulunuz. ----Sales þemasý için
select * from product_categories where category_id='1' or category_id='2' or category_id='4' or category_id='5'

-- Sipariþ durumu 'Shipped'den farklý olan müþterilerin bilgilerini bulunuz. ----Sales þemasý için
select * from orders where not status='Shipped'

-- Adet sayýsý 100e eþit olan envanterlerin product bilgisini bulunuz. ----Sales þemasý için
select product_id from inventories where quantity=100

-- Beijing (8 numaralý warehouse)'da kaç farklý envanter vardýr? ----Sales þemasý için
select count(*) from inventories where warehouse_id=8

-- Liste fiyati 1000 ile 3000 arasinda olan kaç product var?----Sales þemasý için
select count(*) from products where list_price between 1000 and 3000






