-- Tampilkan nama depan pasien yang dimulai dengan huruf 'C'
SELECT first_name
FROM patients
WHERE first_name LIKE 'C%'