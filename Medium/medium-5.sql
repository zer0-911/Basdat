-- Tampilkan id_pasien, nama_depan, nama_belakang dari tabel pasien.
-- Urutkan baris dengan first_name naik dan kemudian dengan last_name turun.
select patient_id,
    first_name,
    last_name
from patients
order by first_name ASC,
    last_name DESC