-- Menampilkan nama depan dan nama belakang dan jenis kelamin yang
-- berjenis kelamin “M”
SELECT first_name,
    last_name,
    gender
FROM patients
Where gender is 'M'