-- Tunjukkan pasien_id, berat badan, tinggi badan, isObese dari tabel pasien.
-- Tampilkan isObese sebagai boolean 0 atau 1.
- - Obesitas didefinisikan sebagai berat(kg) /(tinggi(m) 2) >= 30.-- berat dalam satuan kg.
-- tinggi dalam satuan cm.
select patient_id,
    weight,
    height,
    (
        cast(weight as float) / power((cast(height as float) / 100), 2) >= 30
    ) as isObese
from patients