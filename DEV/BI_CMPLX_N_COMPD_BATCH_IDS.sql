WITH t AS (
  SELECT
      a.id AS a_id,
      b.id,
      b.bioreg_id,
      a.antibody_name,
      b.name
  FROM
      (
          SELECT
              b.date_created,
              b.id,
              b.bioreg_id,
              a.child_id,
              b.name AS antibody_name
          FROM
              c2c.complex_child a
          JOIN c2c.complex b ON b.id = a.complex_id
      ) a
  JOIN (
      SELECT *
      FROM
          c2c.complex_child a
      JOIN c2c.complex b ON b.id = a.child_id
      WHERE
          upper(composition) NOT LIKE '%DELETED%'
  ) b ON b.child_id = a.child_id
),
v as (
  SELECT
       bioreg_id,
       b.formatted_id,
       c.formatted_batch_id
     FROM ds3_userdata.adc_conjugate_vw a
     JOIN c$pinpoint.reg_data b ON a.formatted_id = b.formatted_id
     JOIN c$pinpoint.reg_batches c ON b.reg_id = c.reg_id
),
x as (
SELECT
            c.id           AS protein_sample_id,
            a.complex_id,
            b.id,
            b.bioreg_id,
            a.child_id,
            c.bioreg_id    AS batch_id

        FROM
                 c2c.complex_child a
            JOIN c2c.complex           b ON b.id = a.child_id
            JOIN (SELECT * FROM c2c.protein_sample WHERE DELETED=0)      c ON c.complex_id = b.id
where upper(b.composition) NOT LIKE '%DELETED%'
)
select 
  ROW_NUMBER() OVER (ORDER BY a.bioreg_id, a.formatted_batch_id) AS ID,
  a.bioreg_id,
  a.formatted_id,
  a.formatted_batch_id,
  c.batch_id,
  b.antibody_name,
  b.name
FROM v a
JOIN t b on b.bioreg_id =  a.bioreg_id
JOIN x c on b.bioreg_id = c.bioreg_id
order by a.bioreg_id, a.formatted_batch_id
