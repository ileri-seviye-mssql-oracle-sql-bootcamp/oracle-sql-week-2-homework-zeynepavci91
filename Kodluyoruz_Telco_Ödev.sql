-- Kotas� limitsiz olan �r�nler hangileridir? ----Telco �emas� i�in
select * from product where quota = 'LIMITLESS';

--Stat�s� 'Initial' olan m��terileri bulunuz. ----Telco �emas� i�in
select * from customer where status='INITIAL';

-- �ehir bilgisi 'ISTANBUL' olan adresleri bulunuz. ----Telco �emas� i�in
select * from address where c�ty='Istanbul'

-- Birincil ileti�im bilgisi olmayan telefon numaralar�n� bulunuz. ----Telco �emas� i�in
select * from contact where not �s_primary=1 and cnt_type='PHONE'

-- Hesap �deme �ekli nakit olmayan hesaplar hangileridir? ----Telco �emas� i�in
select * from account where not payment_type='CASH'

-- Stat�s� deaktif olan m��terilerin ba�lant� kesim tarihleri nedir? ----Telco �emas� i�in
select * from customer where status='DEACTIVE'

-- Hesap kapan�� tarihi dolu olan hesaplar� bulunuz. ----Telco �emas� i�in
select * from account where account_closing_date is not null

--Elektronik fatura mail adresi (E_bill_email) olan hesaplar hangileridir? ----Telco �emas� i�in
select * from account where e_bill_email is not null

-- S�zle�me biti� tarihi 1 Ocak 2000'den b�y�k , 1 Ocak 2005'ten k���k olan s�zle�meleri bulunuz. ----Telco �emas� i�in
select * from agreement where '01/01/2005'> commitment_end_date and commitment_end_date> '01/01/2000'

--2005 y�l�ndan �nce yap�lan ve hala aktif olan subscriptionlar hangileridir? ----Telco �emas� i�in
select * from subscription where activation_date<'01/01/2005' and status='ACTIVE'

-- S�zle�me ba�lang�� tarihi Ocak 2010'dan b�y�k olan s�zle�meleri bulunuz. ----Telco �emas� i�in
select * from agreement where commitment_start_date>'01/01/2010'

-- �smi E ile ba�layan m��terileri bulunuz. ----Telco �emas� i�in
select * from customer where name like 'E%'

-- Product tipi 'DSL' ile biten �r�nleri bulunuz. ----Telco �emas� i�in
select * from product where product_type like '%DSL'

-- �sminde ya da soyisminde '�' harfi ge�en m��teriler hangileridir? ----Telco �emas� i�in
select * from customer where name like '%�%' or surname like '%�%'

-- �lke kodu UK ve AU olan adresleri bulunuz.----Telco �emas� i�in
select * from address where country_cd='UK' or country_cd='AU'

-- Taahh�t s�resi 240 ve 120 ay olan b�t�n s�zle�meleri bulmak istiyoruz.----Telco �emas� i�in
select * from agreement where commitment_duration='240 MONTHS' or commitment_duration='120 MONTHS'

-- S�zle�me alt tipi MAIN olan ka� tane s�zle�me vard�r?----Telco �emas� i�in
select count(*) from agreement where subtype='MAIN'

-- Deaktif m��terilerin say�s�n� bulunuz.----Telco �emas� i�in
select count(*) from customer where status='DEACTIVE'

-- �leti�im tipi olarak email ve statusu kullan�mda olan ka� m��teri var?----Telco �emas� i�in
select count(*) from contact where cnt_type='EMAIL' and status='USED'









