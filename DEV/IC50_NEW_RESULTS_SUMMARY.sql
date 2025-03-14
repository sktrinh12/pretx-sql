WITH t AS (
    SELECT
        T4.EXPERIMENT_ID AS experiment_id,
        T3.DISPLAY_NAME AS ID,
        T6.NAME AS ANALYSIS_NAME,
        TO_DATE(SUBSTR(T1.MODIFIED_DATE,1,10)) AS MODIFIED_DATE,
        T10.PLATE_NUMBER,
        T1.ID AS ANALYSIS_RESULTS_ID,
        T1.X_MAX,
        T1.X_MIN,
        T1.Y_AT_MAX_X as PERCENT_INHIBITION,
        T1.REPORTED_RESULT,
        T1.STATUS,
        T1.PARAM1 AS Min,
        T1.PARAM2 AS max,
        T1.PARAM3 AS slope,
        CASE
            WHEN T5.LABEL = 'Inactive' THEN T1.X_MAX
            WHEN T5.LABEL = 'Very Potent' THEN T1.X_MIN
            ELSE T1.PARAM4
        END AS ic50,
        CASE
            WHEN T5.LABEL = 'Inactive' THEN '>'
            WHEN T5.LABEL = 'Very Potent' THEN '<'
        END AS Compound_Status,
        CASE
          WHEN substr(
              t1.reported_result, 1, 1
          ) IN ( '>', '<' ) THEN
          TO_CHAR(
            TO_NUMBER(
              SUBSTR(t1.reported_result, 2, 10)
            ), 
            'FM9999999999990.0000000' )
          ELSE
          TO_CHAR(
              t1.reported_result, 'FM9999999999990.0000000'
          )
        END AS ic50_rr,
        CASE
          WHEN substr(
              t1.reported_result, 1, 1
          ) IN ( '>', '<' ) THEN
          to_char(
              TO_NUMBER(substr(
                  t1.reported_result, 2, 10
              )) * 1000, 'FM9999999999990.0000000'
          )
          ELSE
          to_char(
              TO_NUMBER(t1.reported_result) * 1000, 'FM9999999999990.0000000'
          )
        END AS ic50_rr_nm,
        T1.PARAM4 AS IC50_ORG,
        T1.ERR AS ERR,
        T1.R2 AS R2,
        T3.ID AS SAM_ID,
        T4.PROTOCOL_ID,
        T5.LABEL AS CLASSIFICATION,
        T8.RESULT AS IC90,
        T11.Z_PRIME AS Z_PRIME,
        T11.LOW_AVG,
        T11.HIGH_AVG,
        T11.WELL_ANALYSIS_ID,
        T9.NAME AS NAME
    FROM
        DS3_USERDATA.SU_ANALYSIS_RESULTS T1
        LEFT JOIN DS3_USERDATA.SU_GROUPINGS T2 ON T1.GROUP_ID = T2.ID
        LEFT JOIN DS3_USERDATA.SU_SAMPLES T3 ON T2.SAMPLE_ID = T3.ID
        LEFT JOIN DS3_USERDATA.TM_EXPERIMENTS T4 ON T2.EXPERIMENT_ID = T4.EXPERIMENT_ID
        LEFT JOIN DS3_USERDATA.SU_PLATES T10 ON T10.EXPERIMENT_ID = T2.EXPERIMENT_ID AND T2.PLATE_SET = T10.PLATE_SET
        LEFT JOIN (
            SELECT
                B.EXPERIMENT_ID,
                B.PLATE_NUMBER,
                A.PLATE_ID,
                C.WELL_ANALYSIS_ID,
                ROUND(Z_PRIME,4) AS Z_PRIME,
                LOW_AVG,
                HIGH_AVG
            FROM
                DS3_USERDATA.SU_PLATE_RESULTS A
                LEFT JOIN DS3_USERDATA.SU_PLATES B ON A.PLATE_ID = B.ID
                LEFT JOIN DS3_USERDATA.SU_WELL_LAYERS C ON B.EXPERIMENT_ID = C.EXPERIMENT_ID AND A.LAYER_ID = C.ID
            WHERE
                C.WELL_ANALYSIS_ID = 1
            ORDER BY
                B.EXPERIMENT_ID, B.PLATE_NUMBER
        ) T11 ON T10.ID = T11.PLATE_ID
        LEFT JOIN DS3_USERDATA.SU_CLASSIFICATION_RULES T5 ON T1.RULE_ID = T5.ID
        LEFT JOIN DS3_USERDATA.SU_ANALYSIS_LAYERS T6 ON T1.LAYER_ID = T6.ID
        LEFT JOIN DS3_USERDATA.SU_CHARTS T7 ON T7.RESULT_ID = T1.ID
        LEFT JOIN DS3_USERDATA.SU_DERIVED_RESULTS T8 ON T8.RESULT_ID = T1.ID
        LEFT JOIN DS3_USERDATA.SU_DERIVED_ANALYSES T9 ON T9.ID = T8.DERIVED_ANALYSIS_ID
    WHERE
        T1.STATUS = 1
        AND T4.COMPLETED_DATE IS NOT NULL
        AND T4.PROTOCOL_ID IN (542, 543, 544, 561, 562)
)
SELECT
    experiment_id,
    ID,
    PLATE_NUMBER,
    ANALYSIS_NAME,
    MODIFIED_DATE,
    X_MAX,
    X_MIN,
    REPORTED_RESULT,
    STATUS,
    Min,
    max,
    slope,
    ic50,
    ANALYSIS_RESULTS_ID,
    Compound_Status,
    IC50_RR,
    IC50_RR_NM,
    IC50_ORG,
    ERR,
    R2,
    SAM_ID,
    PROTOCOL_ID,
    CLASSIFICATION,
    Max_Response,
    Absolute_IC50,
    Highest_Concentration,
    Response_at_HC,
    MAX(PERCENT_INHIBITION) AS PERCENT_INHIBITION,
    ROUND(AVG(Z_PRIME), 4) AS Z_PRIME,
    LOW_AVG,
    HIGH_AVG,
    WELL_ANALYSIS_ID
FROM t
PIVOT
(
    MAX(IC90) FOR NAME IN (
        '% Max Response' AS Max_Response,
        'Absolute IC50' AS Absolute_IC50,
        'Highest Concentration (µM)' AS Highest_Concentration,
        '% Response @HC' AS Response_at_HC
    )
) PVT
GROUP BY
    experiment_id,
    ID,
    PLATE_NUMBER,
    ANALYSIS_NAME,
    MODIFIED_DATE,
    X_MAX,X_MIN,
    REPORTED_RESULT,
    STATUS,
    Min,
    max,
    slope,
    ic50,
    ANALYSIS_RESULTS_ID,
    Compound_Status,
    IC50_RR,
    IC50_RR_NM,
    IC50_ORG,
    ERR,
    R2,
    SAM_ID,
    PROTOCOL_ID,
    CLASSIFICATION,
    Max_Response,
    Absolute_IC50,
    Highest_Concentration,
    Response_at_HC,
    LOW_AVG,
    HIGH_AVG,
    WELL_ANALYSIS_ID
ORDER BY
    EXPERIMENT_ID,
    PLATE_NUMBER
