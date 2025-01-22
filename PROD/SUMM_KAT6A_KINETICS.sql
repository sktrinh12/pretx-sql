WITH t AS
    (SELECT
       formatted_id,
       assay_type,
       cell_line,
       power(10, avg(log(10, vmax_hr_1))) AS p,
       power(10, avg(log(10, ku_um))) AS q,
       power(10, avg(log(10, kh_um))) AS kh_um,
       power(10, avg(CASE
                         WHEN vmax_ku_um_1hr_1 > 0 THEN log(10, vmax_ku_um_1hr_1)
                         ELSE NULL
                     END)) AS r,
       stddev(vmax_hr_1) AS s1,
       stddev(ku_um) AS q1,
       stddev(kh_um) AS std_kh_um,
       stddev(vmax_ku_um_1hr_1) AS r1,
       round(stddev(vmax_hr_1), 2 - 1 - floor(log(10, nullif(stddev(vmax_hr_1), 0)))) AS s2,
       round(stddev(ku_um), 2 - 1 - floor(log(10, nullif(stddev(ku_um), 0)))) AS q2,
       round(stddev(vmax_ku_um_1hr_1), 2 - 1 - floor(log(10, nullif(stddev(vmax_ku_um_1hr_1), 0)))) AS r2,
       count(formatted_id) AS c
     FROM ds3_userdata.smarca2_kinetic
     GROUP BY
       formatted_id,
       assay_type,
       cell_line
),
v as (
  SELECT
    formatted_id,
    CASE
        WHEN assay_type = 'Hibit Kinetics'
             AND cell_line = 'HeLa-KAT6A-HiBit' THEN p
    END vmax_hr_1_sm2_kat6a,
    CASE
        WHEN assay_type = 'Hibit Kinetics'
             AND cell_line = 'HeLa-KAT6A-HiBit' THEN s1
    END vmax_hr_1_sm2_kat6a_sd,
    CASE
        WHEN assay_type = 'Hibit Kinetics'
             AND cell_line = 'HeLa-KAT6A-HiBit' THEN q
    END ku_um_sm2_kat6a,
    CASE
        WHEN assay_type = 'Hibit Kinetics'
             AND cell_line = 'HeLa-KAT6A-HiBit' THEN q1
    END ku_um_sm2_kat6a_sd,
    CASE
        WHEN assay_type = 'Hibit Kinetics'
             AND cell_line = 'HeLa-KAT6A-HiBit' THEN kh_um
    END kh_um_sm2_kat6a,
    CASE
        WHEN assay_type = 'Hibit Kinetics'
             AND cell_line = 'HeLa-KAT6A-HiBit' THEN std_kh_um
    END kh_um_sm2_kat6a_sd,
    CASE
        WHEN assay_type = 'Hibit Kinetics'
             AND cell_line = 'HeLa-KAT6A-HiBit' THEN r
    END vmax_ku_um_1hr_1_sm2_kat6a,
    CASE
        WHEN assay_type = 'Hibit Kinetics'
             AND cell_line = 'HeLa-KAT6A-HiBit' THEN r1
    END vmax_ku_um_1hr_1_sm2_kat6a_sd,
    CASE
        WHEN assay_type = 'Hibit Kinetics'
             AND cell_line = 'HeLa-KAT6A-HiBit' THEN c
    END vmax_ku_um_1hr_1_sm2_kat6a_n
  FROM t
)
SELECT 
  formatted_id,
	max(VMAX_HR_1_SM2_KAT6A) as VMAX_HR_1_SM2_KAT6A,
	max(VMAX_HR_1_SM2_KAT6A_SD) as VMAX_HR_1_SM2_KAT6A_SD,
	max(KU_UM_SM2_KAT6A) as KU_UM_SM2_KAT6A,
	max(KH_UM_SM2_KAT6A) as KH_UM_SM2_KAT6A,
	max(KH_UM_SM2_KAT6A_SD) as KH_UM_SM2_KAT6A_SD,
	max(KU_UM_SM2_KAT6A_SD) as KU_UM_SM2_KAT6A_SD,
	max(VMAX_KU_UM_1HR_1_SM2_KAT6A) as VMAX_KU_UM_1HR_1_SM2_KAT6A,
	max(VMAX_KU_UM_1HR_1_SM2_KAT6A_SD) as VMAX_KU_UM_1HR_1_SM2_KAT6A_SD,
	max(VMAX_KU_UM_1HR_1_SM2_KAT6A_N) as VMAX_KU_UM_1HR_1_SM2_KAT6A_N
FROM v
GROUP BY formatted_id
