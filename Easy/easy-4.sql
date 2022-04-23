-- Tunjukkan nama depan dan nama belakang pasien yang beratnya dalam kisaran 100 hingga 120 (inklusif)
SELECT first_name,
    last_name
FROM patients
Where weight between 100 AND 120