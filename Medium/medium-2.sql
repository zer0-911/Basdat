-- Tampilkan nama depan unik dari tabel pasien yang hanya muncul sekali dalam daftar.
-- 
-- Misalnya, jika dua orang atau lebih bernama 'John' di kolom first_name maka jangan sertakan nama mereka di daftar keluaran. Jika hanya 1 orang yang bernama 'Leo' maka sertakan mereka di output
select first_name
from patients
group by first_name
having count(*) = 1