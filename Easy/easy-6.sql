-- Tampilkan nama depan dan nama belakang digabungkan menjadi satu kolom untuk menunjukkan nama lengkap mereka.
SELECT concat(first_name, " ", last_name) as full_Name
FROM patients