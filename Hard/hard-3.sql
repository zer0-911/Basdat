-- Tunjukkan patient_id, first_name, last_name, dan spesialisasi dokter yang merawat.
-- Tampilkan hanya pasien yang memiliki diagnosis_primer sebagai 'Demensia' dan nama depan dokter adalah 'Lisa'
-- Periksa pasien, penerimaan, dan tabel dokter untuk informasi yang diperlukan.
SELECT p.patient_id,
    p.first_name as patient_first_name,
    p.last_name as patient_last_name,
    ph.specialty as attending_physician_specialty
FROM patients p
    JOIN admissions a ON a.patient_id = p.patient_id
    JOIN physicians ph ON ph.physician_id = a.attending_physician_id
WHERE primary_diagnosis = 'Dementia'
    AND ph.first_name = 'Lisa';