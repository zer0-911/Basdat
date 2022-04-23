-- Perbarui tabel pasien untuk kolom alergi. Jika alergi pasien null maka ganti dengan 'NKA'
update patients
set allergies = 'NKA'
where allergies isnull