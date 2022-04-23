-- Menampilkan nama depan dan nama belakang pasien yang tidak memiliki alergi (null).
SELECT first_name,
    last_name
FROM patients
WHERE allergies isnull