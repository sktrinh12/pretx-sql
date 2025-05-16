WITH
    t AS
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
       cell_line),
    v AS
    (SELECT
       formatted_id,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND cell_line = 'HeLa-KAT6A-HiBit' THEN p
       END vmax_hr_1_sm2_kat6a,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND instr(lower(cell_line), 'hela') > 0
                AND instr(lower(cell_line), 'hibit') > 0
                AND instr(lower(cell_line), 'kat6b') > 0 THEN p
       END vmax_hr_1_sm2_kat6b,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND cell_line = 'HeLa-KAT6A-HiBit' THEN s1
       END vmax_hr_1_sm2_kat6a_sd,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND instr(lower(cell_line), 'hela') > 0
                AND instr(lower(cell_line), 'hibit') > 0
                AND instr(lower(cell_line), 'kat6b') > 0 THEN s1
       END vmax_hr_1_sm2_kat6b_sd,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND cell_line = 'HeLa-KAT6A-HiBit' THEN q
       END ku_um_sm2_kat6a,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND instr(lower(cell_line), 'hela') > 0
                AND instr(lower(cell_line), 'hibit') > 0
                AND instr(lower(cell_line), 'kat6b') > 0 THEN q
       END ku_um_sm2_kat6b,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND cell_line = 'HeLa-KAT6A-HiBit' THEN q1
       END ku_um_sm2_kat6a_sd,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND instr(lower(cell_line), 'hela') > 0
                AND instr(lower(cell_line), 'hibit') > 0
                AND instr(lower(cell_line), 'kat6b') > 0 THEN q1
       END ku_um_sm2_kat6b_sd,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND cell_line = 'HeLa-KAT6A-HiBit' THEN kh_um
       END kh_um_sm2_kat6a,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND instr(lower(cell_line), 'hela') > 0
                AND instr(lower(cell_line), 'hibit') > 0
                AND instr(lower(cell_line), 'kat6b') > 0 THEN kh_um
       END kh_um_sm2_kat6b,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND cell_line = 'HeLa-KAT6A-HiBit' THEN std_kh_um
       END kh_um_sm2_kat6a_sd,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND instr(lower(cell_line), 'hela') > 0
                AND instr(lower(cell_line), 'hibit') > 0
                AND instr(lower(cell_line), 'kat6b') > 0 THEN std_kh_um
       END kh_um_sm2_kat6b_sd,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND cell_line = 'HeLa-KAT6A-HiBit' THEN r
       END vmax_ku_um_1hr_1_sm2_kat6a,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND instr(lower(cell_line), 'hela') > 0
                AND instr(lower(cell_line), 'hibit') > 0
                AND instr(lower(cell_line), 'kat6b') > 0 THEN r
       END vmax_ku_um_1hr_1_sm2_kat6b,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND cell_line = 'HeLa-KAT6A-HiBit' THEN r1
       END vmax_ku_um_1hr_1_sm2_kat6a_sd,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND instr(lower(cell_line), 'hela') > 0
                AND instr(lower(cell_line), 'hibit') > 0
                AND instr(lower(cell_line), 'kat6b') > 0 THEN r1
       END vmax_ku_um_1hr_1_sm2_kat6b_sd,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND cell_line = 'HeLa-KAT6A-HiBit' THEN c
       END vmax_ku_um_1hr_1_sm2_kat6a_n,
       CASE
           WHEN assay_type = 'Hibit Kinetics'
                AND instr(lower(cell_line), 'hela') > 0
                AND instr(lower(cell_line), 'hibit') > 0
                AND instr(lower(cell_line), 'kat6b') > 0 THEN c
       END vmax_ku_um_1hr_1_sm2_kat6b_n
     FROM t)
  SELECT
    formatted_id,
    max(vmax_hr_1_sm2_kat6a) AS vmax_hr_1_sm2_kat6a,
    max(vmax_hr_1_sm2_kat6a_sd) AS vmax_hr_1_sm2_kat6a_sd,
    max(ku_um_sm2_kat6a) AS ku_um_sm2_kat6a,
    max(kh_um_sm2_kat6a) AS kh_um_sm2_kat6a,
    max(kh_um_sm2_kat6a_sd) AS kh_um_sm2_kat6a_sd,
    max(ku_um_sm2_kat6a_sd) AS ku_um_sm2_kat6a_sd,
    max(vmax_ku_um_1hr_1_sm2_kat6a) AS vmax_ku_um_1hr_1_sm2_kat6a,
    max(vmax_ku_um_1hr_1_sm2_kat6a_sd) AS vmax_ku_um_1hr_1_sm2_kat6a_sd,
    max(vmax_ku_um_1hr_1_sm2_kat6a_n) AS vmax_ku_um_1hr_1_sm2_kat6a_n,

    max(vmax_hr_1_sm2_kat6b) AS vmax_hr_1_sm2_kat6b,
    max(vmax_hr_1_sm2_kat6b_sd) AS vmax_hr_1_sm2_kat6b_sd,
    max(ku_um_sm2_kat6b) AS ku_um_sm2_kat6b,
    max(kh_um_sm2_kat6b) AS kh_um_sm2_kat6b,
    max(kh_um_sm2_kat6b_sd) AS kh_um_sm2_kat6b_sd,
    max(ku_um_sm2_kat6b_sd) AS ku_um_sm2_kat6b_sd,
    max(vmax_ku_um_1hr_1_sm2_kat6b) AS vmax_ku_um_1hr_1_sm2_kat6b,
    max(vmax_ku_um_1hr_1_sm2_kat6b_sd) AS vmax_ku_um_1hr_1_sm2_kat6b_sd,
    max(vmax_ku_um_1hr_1_sm2_kat6b_n) AS vmax_ku_um_1hr_1_sm2_kat6b_n
  FROM v
  GROUP BY formatted_id
