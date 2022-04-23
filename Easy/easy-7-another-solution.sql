-- Tunjukkan nama depan, nama belakang, dan nama provinsi lengkap setiap pasien.
-- Contoh: 'Ontario' bukannya 'ON'
SELECT first_name,
    last_name,
    province_name
FROM patients
    JOIN provinces ON provinces.province_id = patients.province_id;