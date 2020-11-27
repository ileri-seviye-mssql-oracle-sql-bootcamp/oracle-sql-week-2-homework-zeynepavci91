-- Birim fiyat� 150'den b�y�k olan order_itemlar� bulunuz. ----Sales �emas� i�in
select * from order_�tems where un�t_pr�ce> 150;

-- ��e al�m tarihi May�s 2016 olan �al��anlar� bulunuz. ----Sales �emas� i�in
select * from employees where h�re_date between '01/05/2016' and '31/05/2016'

-- Ad� Charlie ya da Charlsie olan contactlar� bulunuz. ----Sales �emas� i�in
select * from contacts where first_name='Charlie' or first_name='Charlsie';

-- Adet say�s� 10dan b�y�k 50den k���k envanterleri bulunuz. ----Sales �emas� i�in
select * from inventories where quantity>10 and quantity<50;

-- Bir sipari�te toplam 100.0000'den fazla �cret �deyen emirler nedir? ----Sales �emas� i�in
select * from order_items where unit_price>'100,0000'

-- Manager'� olmayan �al��anlar hangileridir? ----Sales �emas� i�in
select * from employees where manager_id is null

-- State bilgisi bo� olan lokasyonlar� bulunuz.----Sales �emas� i�in
select * from locations where state is null

-- Durumu iptal olan ve sat�c�lar� olmayan emirler hangileridir? ----Sales �emas� i�in
select * from orders where status='CANCELED' and salesman_id is null 

--Ocak 2016 ile Haziran 2016 aras�nda verilen sipari�ler hangileridir? ----Sales �emas� i�in
select * from orders where order_date between '01/01/2016' and '01/06/2016'

-- Unvan� 'S' ile ba�lamayan �al��anlar� bulunuz. ----Sales �emas� i�in
select * from employees where job_title like 'S%'

-- Herhangi bir �e�it Intel Xeon �r�nler hangileridir? ----Sales �emas� i�in
select * from products where product_name like 'Intel Xeon%'

-- �smi 'C' ile ba�layan kontaklar hangileridir? Soyad�na g�re alfabetik s�ra ile s�ralayal�m. ----Sales �emas� i�in
select * from contacts where first_name like 'C%' order by last_name

-- �r�n ad� 'Asus' ile ba�layan ve liste fiyat� standart �cretinden k���k olan �r�nleri bulunuz. ----Sales �emas� i�in
select * from products where product_name like 'Asus%' and 'list_price' < 'standard_cost'

-- 1,2,4,5 id'li kategorilerin bilgilerini bulunuz. ----Sales �emas� i�in
select * from product_categories where category_id='1' or category_id='2' or category_id='4' or category_id='5'

-- Sipari� durumu 'Shipped'den farkl� olan m��terilerin bilgilerini bulunuz. ----Sales �emas� i�in
select * from orders where not status='Shipped'

-- Adet say�s� 100e e�it olan envanterlerin product bilgisini bulunuz. ----Sales �emas� i�in
select product_id from inventories where quantity=100

-- Beijing (8 numaral� warehouse)'da ka� farkl� envanter vard�r? ----Sales �emas� i�in
select count(*) from inventories where warehouse_id=8

-- Liste fiyati 1000 ile 3000 arasinda olan ka� product var?----Sales �emas� i�in
select count(*) from products where list_price between 1000 and 3000






