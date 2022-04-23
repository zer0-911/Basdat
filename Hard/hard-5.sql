-- Setiap biaya masuk $50 untuk pasien tanpa asuransi, dan $10 untuk pasien dengan asuransi. Semua pasien dengan patient_id genap memiliki asuransi.
-- Beri setiap pasien 'Ya' jika mereka memiliki asuransi, dan 'Tidak' jika mereka tidak memiliki asuransi. Tambahkan biaya total_penerimaan untuk setiap grup has_insurance.
SELECT CASE
        WHEN patient_id % 2 = 0 Then 'Yes'
        ELSE 'No'
    END as has_insurance,
    SUM(
        CASE
            WHEN patient_id % 2 = 0 Then 10
            ELSE 50
        END
    ) as cost_after_insurance
FROM admissions
GROUP BY has_insurance;