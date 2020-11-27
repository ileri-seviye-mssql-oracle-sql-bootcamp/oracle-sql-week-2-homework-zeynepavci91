-- Kotasý limitsiz olan ürünler hangileridir? ----Telco þemasý için
select * from product where quota = 'LIMITLESS';

--Statüsü 'Initial' olan müþterileri bulunuz. ----Telco þemasý için
select * from customer where status='INITIAL';

-- Þehir bilgisi 'ISTANBUL' olan adresleri bulunuz. ----Telco þemasý için
select * from address where cýty='Istanbul'

-- Birincil iletiþim bilgisi olmayan telefon numaralarýný bulunuz. ----Telco þemasý için
select * from contact where not ýs_primary=1 and cnt_type='PHONE'

-- Hesap ödeme þekli nakit olmayan hesaplar hangileridir? ----Telco þemasý için
select * from account where not payment_type='CASH'

-- Statüsü deaktif olan müþterilerin baðlantý kesim tarihleri nedir? ----Telco þemasý için
select * from customer where status='DEACTIVE'

-- Hesap kapanýþ tarihi dolu olan hesaplarý bulunuz. ----Telco þemasý için
select * from account where account_closing_date is not null

--Elektronik fatura mail adresi (E_bill_email) olan hesaplar hangileridir? ----Telco þemasý için
select * from account where e_bill_email is not null

-- Sözleþme bitiþ tarihi 1 Ocak 2000'den büyük , 1 Ocak 2005'ten küçük olan sözleþmeleri bulunuz. ----Telco þemasý için
select * from agreement where '01/01/2005'> commitment_end_date and commitment_end_date> '01/01/2000'

--2005 yýlýndan önce yapýlan ve hala aktif olan subscriptionlar hangileridir? ----Telco þemasý için
select * from subscription where activation_date<'01/01/2005' and status='ACTIVE'

-- Sözleþme baþlangýç tarihi Ocak 2010'dan büyük olan sözleþmeleri bulunuz. ----Telco þemasý için
select * from agreement where commitment_start_date>'01/01/2010'

-- Ýsmi E ile baþlayan müþterileri bulunuz. ----Telco þemasý için
select * from customer where name like 'E%'

-- Product tipi 'DSL' ile biten ürünleri bulunuz. ----Telco þemasý için
select * from product where product_type like '%DSL'

-- Ýsminde ya da soyisminde 'ü' harfi geçen müþteriler hangileridir? ----Telco þemasý için
select * from customer where name like '%ü%' or surname like '%ü%'

-- Ülke kodu UK ve AU olan adresleri bulunuz.----Telco þemasý için
select * from address where country_cd='UK' or country_cd='AU'

-- Taahhüt süresi 240 ve 120 ay olan bütün sözleþmeleri bulmak istiyoruz.----Telco þemasý için
select * from agreement where commitment_duration='240 MONTHS' or commitment_duration='120 MONTHS'

-- Sözleþme alt tipi MAIN olan kaç tane sözleþme vardýr?----Telco þemasý için
select count(*) from agreement where subtype='MAIN'

-- Deaktif müþterilerin sayýsýný bulunuz.----Telco þemasý için
select count(*) from customer where status='DEACTIVE'

-- Ýletiþim tipi olarak email ve statusu kullanýmda olan kaç müþteri var?----Telco þemasý için
select count(*) from contact where cnt_type='EMAIL' and status='USED'









