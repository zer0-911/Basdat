-- Tunjukkan semua pasien yang dikelompokkan ke dalam kelompok berat badan.
-- Tunjukkan jumlah total pasien di setiap kelompok berat.
-- Urutkan daftar berdasarkan kelompok berat badan.
-- Misalnya, jika bobotnya 100 hingga 109, mereka ditempatkan di grup bobot 100, 110-119 = 110 grup bobot, dst.
alter table patients
add weight_group int;
update patients
set weight_group = case
        when (
            weight >= 0
            and weight < 10
        ) then 0
        when (
            weight >= 10
            and weight < 20
        ) then 10
        when (
            weight >= 20
            and weight < 30
        ) then 20
        when (
            weight >= 30
            and weight < 40
        ) then 30
        when (
            weight >= 40
            and weight < 50
        ) then 40
        when (
            weight >= 50
            and weight < 60
        ) then 50
        when (
            weight >= 60
            and weight < 70
        ) then 60
        when (
            weight >= 70
            and weight < 80
        ) then 70
        when (
            weight >= 80
            and weight < 90
        ) then 80
        when (
            weight >= 90
            and weight < 100
        ) then 90
        when (
            weight >= 100
            and weight < 110
        ) then 100
        when (
            weight >= 110
            and weight < 120
        ) then 110
        when (
            weight >= 120
            and weight < 130
        ) then 120
        when (
            weight >= 130
            and weight < 140
        ) then 130
    end;
select count(*) as patients_in_group,
    weight_group
from patients
group by weight_group
order by weight_group DESC