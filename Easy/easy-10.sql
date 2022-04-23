-- Tampilkan semua kolom untuk pasien yang memiliki salah satu dari patient_id berikut:
-- 1.45.534.879.1000
SELECT *
FROM patients
WHERE patient_id IN (1, 45, 534, 879, 1000);