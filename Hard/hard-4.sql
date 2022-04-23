-- Semua pasien yang telah melalui penerimaan, dapat melihat dokumen medis mereka di situs kami. Pasien-pasien tersebut diberikan kata sandi sementara setelah masuk pertama mereka. Tunjukkan patient_id dan temp_password.
-- Kata sandi harus sebagai berikut, agar:
-- 1. pasien_id
-- 2. panjang numerik nama belakang pasien
-- 3. tahun lahir_tanggal pasien
select distinct(admissions.patient_id),
    concat(
        admissions.patient_id,
        LEN(patients.last_name),
        year(patients.birth_date)
    ) as temp_password
from admissions
    inner join patients on admissions.patient_id = patients.patient_id