SELECT * FROM (SELECT
      power(10, 2 * sqrt(2) * stddev_ic50) AS ic50,
      formatted_id,assay_type,cell_line,NULL AS TARGET,NULL AS COFACTOR,NULL AS COFACTOR_CONC
  FROM
      (
          SELECT
              STDDEV(log_m_ic50) AS stddev_ic50,
              formatted_id,assay_type,cell_line
          FROM
              (
SELECT
                      log(10, median) AS log_m_ic50,
                      ROWNUM,
                      created_date,
                      formatted_id,
                 ROW_NUMBER()
                                      OVER(PARTITION BY formatted_id, assay_type,cell_line
                                           ORDER BY created_date DESC
                                      ) AS order_by,

COUNT(formatted_id) OVER (PARTITION BY formatted_id, assay_type,cell_line) as c,
                      assay_type,
                              cell_line
                  FROM
                      (
                          SELECT
                              created_date,
                              MEDIAN(IC50_NM) AS median,
                              formatted_id,
                              assay_type,
                              cell_line
                          FROM
                              (
                                  SELECT IC50_NM,   CREATED_DATE,                           
                                      formatted_id,
                                      assay_type,cell_line,ORDER_BY
 FROM (SELECT
                                       IC50*1000 AS IC50_NM ,    to_date(SUBSTR(CREATED_DATE,1,10) ) AS CREATED_DATE,                           
                                      formatted_id,
                                      assay_type,
                                      cell_line,
                                      ROW_NUMBER()
                                      OVER(PARTITION BY formatted_id, assay_type,cell_line
                                           ORDER BY created_date DESC
                                      ) AS order_by,

COUNT(formatted_id) OVER (PARTITION BY formatted_id, assay_type,cell_line) as c
                                  FROM
                                      KAT6A_REGISTRY_SUMMARY
                                  WHERE classification <> 'Very Potent' AND
compound_status is null and formatted_id in (SELECT REFERENCE_COMPOUNDS FROM (SELECT A.REFERENCE_COMPOUNDS,B.CREATED_DATE,ASSAY_TYPE,
ROW_NUMBER() OVER (PARTITION BY A.PROJECT_CODE,ASSAY_TYPE ORDER BY B.CREATED_DATE DESC) AS r
FROM TM_PROTOCOL_PROPS_PIVOT A
JOIN KAT6A_SUMMARY_VW C ON A.REFERENCE_COMPOUNDS=C.FORMATTED_ID
JOIN TM_EXPERIMENTS B ON A.EXPERIMENT_ID=B.EXPERIMENT_ID
WHERE REFERENCE_COMPOUNDS IS NOT NULL AND ASSAY_TYPE IS NOT NULL
ORDER BY CREATED_DATE DESC)WHERE R =1)
                                  GROUP BY
                                      created_date,
                                      formatted_id,
                                      assay_type,
                                      cell_line,
                                      IC50)
WHERE C>=6 
                              )
                          
                          GROUP BY
                              created_date,
                              formatted_id,
                              assay_type,
                              cell_line
                          ORDER BY
                              created_date DESC
                      )
)
          WHERE
                                
             C>=6 AND order_by BETWEEN 1 AND 6
              
          GROUP BY
              formatted_id,
			  assay_type,
              cell_line
   )) WHERE CELL_LINE IS NOT NULL AND ASSAY_TYPE IS NOT NULL
   
   
   UNION ALL
   
   SELECT * FROM (SELECT
      power(10, 2 * sqrt(2) * stddev_ic50) AS ic50,
      formatted_id,'TR-FRET' AS ASSAY_TYPE,NULL AS CELL_LINE,TARGET,COFACTOR,COFACTOR_CONC
  FROM
      (
          SELECT
              STDDEV(log_m_ic50) AS stddev_ic50,
              formatted_id,TARGET,COFACTOR,COFACTOR_CONC
          FROM
              (
SELECT
                      log(10, median) AS log_m_ic50,
                      ROWNUM,
                      created_date,
                      formatted_id,
                 ROW_NUMBER()
                                      OVER(PARTITION BY formatted_id, TARGET, COFACTOR,COFACTOR_CONC
                                           ORDER BY created_date DESC
                                      ) AS order_by,

COUNT(formatted_id) OVER (PARTITION BY formatted_id, TARGET, COFACTOR,COFACTOR_CONC) as c,COFACTOR,
                      COFACTOR_CONC,
                      TARGET
                  FROM
                      (
                          SELECT
                              created_date,
                              MEDIAN(IC50_NM) AS median,
                              formatted_id,
                              COFACTOR,
                              COFACTOR_CONC,
                              TARGET
                          FROM
                              (
                                  SELECT IC50_NM,   CREATED_DATE,                           
                                      formatted_id,
                                      TARGET,
                                      COFACTOR,COFACTOR_CONC,ORDER_BY
 FROM (SELECT
                                      IC50_NM,    to_date(SUBSTR(CREATED_DATE,1,10) ) AS CREATED_DATE,                           
                                      formatted_id,
                                      TARGET,
                                      COFACTOR,
                                      COFACTOR_CONC,
                                      ROW_NUMBER()
                                      OVER(PARTITION BY formatted_id, TARGET, COFACTOR_CONC,COFACTOR
                                           ORDER BY created_date DESC
                                      ) AS order_by,

COUNT(formatted_id) OVER (PARTITION BY formatted_id, TARGET, COFACTOR, COFACTOR_CONC) as c
                                  FROM
                                      KAT6A_TRFRET_REGISTRY_SUMMARY
                                  WHERE classification <> 'Very Potent' AND
                                     COMPOUND_STATUS IS NULL AND formatted_id in (SELECT REFERENCE_COMPOUNDS FROM (SELECT A.PROJECT_NAME,A.REFERENCE_COMPOUNDS,B.CREATED_DATE,
ROW_NUMBER() OVER (PARTITION BY A.PROJECT_CODE ORDER BY B.CREATED_DATE DESC) AS r
FROM TM_PROTOCOL_PROPS_PIVOT A
JOIN KAT6A_SUMMARY_VW C ON A.REFERENCE_COMPOUNDS=C.FORMATTED_ID
JOIN TM_EXPERIMENTS B ON A.EXPERIMENT_ID=B.EXPERIMENT_ID
WHERE A.PROTOCOL_ID IN ('441','543') AND REFERENCE_COMPOUNDS IS NOT NULL
ORDER BY CREATED_DATE DESC)WHERE R =1)
                                  GROUP BY
                                      created_date,
                                      formatted_id,
                                      TARGET,
									  COFACTOR,
                                      COFACTOR_CONC,
                                      IC50_NM)
WHERE C>=6 
                              )
                          
                          GROUP BY
                              created_date,
                              formatted_id,
                              COFACTOR,
                              COFACTOR_CONC,
                              TARGET
                          ORDER BY
                              created_date DESC
                      )
)
          WHERE
                                
             C>=6 AND order_by BETWEEN 1 AND 6
              
          GROUP BY
              formatted_id,
			  COFACTOR,
			  COFACTOR_CONC,
                              TARGET
   ))WHERE TARGET IS NOT NULL AND COFACTOR IS NOT NULL AND COFACTOR_CONC IS NOT NULL
   
   UNION ALL
   
   SELECT * FROM (SELECT
      power(10, 2 * sqrt(2) * stddev_ic50) AS ic50,
      formatted_id,assay_type,cell_line,NULL AS TARGET,NULL AS COFACTOR,NULL AS COFACTOR_CONC
  FROM
      (
          SELECT
              STDDEV(log_m_ic50) AS stddev_ic50,
              formatted_id,assay_type,cell_line
          FROM
              (
SELECT
                      log(10, median) AS log_m_ic50,
                      ROWNUM,
                      created_date,
                      formatted_id,
                 ROW_NUMBER()
                                      OVER(PARTITION BY formatted_id, assay_type,cell_line
                                           ORDER BY created_date DESC
                                      ) AS order_by,

COUNT(formatted_id) OVER (PARTITION BY formatted_id, assay_type,cell_line) as c,
                      assay_type,
                              cell_line
                  FROM
                      (
                          SELECT
                              created_date,
                              MEDIAN(IC50_NM) AS median,
                              formatted_id,
                              assay_type,
                              cell_line
                          FROM
                              (
                                  SELECT IC50_NM,   CREATED_DATE,                           
                                      formatted_id,
                                      assay_type,cell_line,ORDER_BY
 FROM (SELECT
                                       IC50*1000 AS IC50_NM ,    to_date(SUBSTR(CREATED_DATE,1,10) ) AS CREATED_DATE,                           
                                      formatted_id,
                                      assay_type,
                                      cell_line,
                                      ROW_NUMBER()
                                      OVER(PARTITION BY formatted_id, assay_type,cell_line
                                           ORDER BY created_date DESC
                                      ) AS order_by,

COUNT(formatted_id) OVER (PARTITION BY formatted_id, assay_type,cell_line) as c
                                  FROM
                                      KAT6A_ICW_REGISTRY_SUMMARY
                                  WHERE classification <> 'Very Potent' AND
compound_status is null and formatted_id in(SELECT REFERENCE_COMPOUNDS FROM (SELECT A.REFERENCE_COMPOUNDS,B.CREATED_DATE,ASSAY_TYPE,
ROW_NUMBER() OVER (PARTITION BY A.PROJECT_CODE,ASSAY_TYPE ORDER BY B.CREATED_DATE DESC) AS r
FROM TM_PROTOCOL_PROPS_PIVOT A
JOIN KAT6A_SUMMARY_VW C ON A.REFERENCE_COMPOUNDS=C.FORMATTED_ID
JOIN TM_EXPERIMENTS B ON A.EXPERIMENT_ID=B.EXPERIMENT_ID
WHERE REFERENCE_COMPOUNDS IS NOT NULL AND ASSAY_TYPE IS NOT NULL
ORDER BY CREATED_DATE DESC)WHERE R =1)
                                  GROUP BY
                                      created_date,
                                      formatted_id,
                                      assay_type,
                                      cell_line,
                                      IC50)
WHERE C>=6 
                              )
                          
                          GROUP BY
                              created_date,
                              formatted_id,
                              assay_type,
                              cell_line
                          ORDER BY
                              created_date DESC
                      )
)
          WHERE
                                
             C>=6 AND order_by BETWEEN 1 AND 6
              
          GROUP BY
              formatted_id,
			  assay_type,
              cell_line
   ))
   WHERE ASSAY_TYPE IS NOT NULL AND CELL_LINE IS NOT NULL
