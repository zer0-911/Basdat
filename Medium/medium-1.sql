-- Tunjukkan tahun kelahiran unik dari pasien dan urutkan berdasarkan menaik.
select distinct(year(birth_date))
from patients
order by birth_date ASC