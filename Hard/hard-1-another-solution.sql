-- Tunjukkan semua pasien yang dikelompokkan ke dalam kelompok berat badan.
-- Tunjukkan jumlah total pasien di setiap kelompok berat.
-- Urutkan daftar berdasarkan kelompok berat badan.
-- Misalnya, jika bobotnya 100 hingga 109, mereka ditempatkan di grup bobot 100, 110-119 = 110 grup bobot, dst.
SELECT COUNT(*) AS patients_in_group,
    weight / 10 * 10 AS weight_group
FROM patients
GROUP BY weight_group
ORDER BY weight_group desc;