UPDATE grades
JOIN (
  SELECT 
    id_nilai,
    ROUND(RAND() * 100, 2) AS random_pengajuan,
    ROUND(RAND() * 100, 2) AS random_bimbingan,
    ROUND(RAND() * 100, 2) AS random_sidang
  FROM grades
) AS r
ON grades.id_nilai = r.id_nilai
SET 
  grades.nilai_pengajuan = r.random_pengajuan,
  grades.nilai_bimbingan = r.random_bimbingan,
  grades.nilai_sidang = r.random_sidang;