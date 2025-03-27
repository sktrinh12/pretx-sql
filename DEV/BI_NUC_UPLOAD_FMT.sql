SELECT
    "ENTRY",
    "FORMATTED_ID",
    "FORMATTED_BATCH_ID",
    "LNB",
    "STUDY_NUMBER",
    "SITE",
    "CREATED_DATE",
    "ANALYTE",
    "ADC_CONC_UM",
    "TOTAL_PAYLOAD_UM",
    "INCUB_COND",
    "ASSAY",
    "MATRIX",
    "NUM_DAYS",
    CASE
        WHEN "RELEASE" = 0 THEN '0.0000'
        ELSE to_char(round("RELEASE", 4 - floor(log(10, abs("RELEASE")) + 1)), 'FM9990.0000')
    END AS release,
    "COMMENTS"
  FROM ds3_userdata.bi_nuc_upload
