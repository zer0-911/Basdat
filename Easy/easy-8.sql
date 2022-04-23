-- Tunjukkan berapa banyak pasien yang memiliki tanggal_lahir dengan 2010 sebagai tahun lahirnya.
select count(birth_date)
from patients
where year(birth_date) = 2010