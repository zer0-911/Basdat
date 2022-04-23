-- Tunjukkan nama_depan, nama_belakang, dan tinggi badan pasien dengan tinggi badan paling tinggi.
SELECT first_name,
    last_name,
    MAX(height) as height
FROM patients;