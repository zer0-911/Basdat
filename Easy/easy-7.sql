-- Tunjukkan nama depan, nama belakang, dan nama provinsi lengkap setiap pasien.
-- Contoh: 'Ontario' bukannya 'ON'
select first_name,
    last_name,
    province_name
from patients
    inner join provinces on patients.province_id = provinces.province_id