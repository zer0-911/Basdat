-- Tampilkan id_pasien dan nama_depan dari pasien di mana nama_depan mereka dimulai dan diakhiri dengan 's' dan panjangnya minimal 5 karakter.
select patient_id,
    first_name
from patients
where first_name Like "s%s"