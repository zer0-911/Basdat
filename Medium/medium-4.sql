-- Tunjukkan patient_id, first_name, last_name dari pasien yang diagnosis_primernya adalah 'Demensia'.
-- 
-- Diagnosis primer disimpan dalam tabel penerimaan.
select patients.patient_id,
    first_name,
    last_name
from patients
    inner join admissions on patients.patient_id = admissions.patient_id
where primary_diagnosis is "Dementia