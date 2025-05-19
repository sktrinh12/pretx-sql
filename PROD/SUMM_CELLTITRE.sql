SELECT 
	FORMATTED_ID,
	MIN(BT549_IC50) as BT549_IC50,
	case WHEN MAX(BT549_CS) = 2     THEN
            ''
        WHEN MAX(BT549_CS) = 1     THEN
           '>'
		WHEN Min(BT549_CS) = 0     THEN
           '<' end BT549_CS,
    max(BT549_ABS_IC50) as BT549_ABS_IC50,
	max(BT549_RESP_AT_HC) as BT549_RESP_AT_HC,
	max(BT549_MAX_RESP) as BT549_MAX_RESP,
    max(BT549_SD_IC50) as BT549_SD_IC50,
	max(BT549_SD_ABS_IC50) as BT549_SD_ABS_IC50,
    max(BT549_SD_RESP_AT_HC) as BT549_SD_RESP_AT_HC,
	max(BT549_SD_MAX_RESP) as BT549_SD_MAX_RESP,
	max(BT549_HC) as BT549_HC,
	max(BT549_N) as BT549_N,
	
    MIN(T47D_IC50) as T47D_IC50,
		case WHEN MAX(T47D_CS) = 2     THEN
            ''
        WHEN MAX(T47D_CS) = 1     THEN
           '>'
		WHEN Min(T47D_CS) = 0     THEN
           '<' end T47D_CS,
	max(T47D_ABS_IC50) as T47D_ABS_IC50,
    max(T47D_RESP_AT_HC) as T47D_RESP_AT_HC,
	max(T47D_MAX_RESP) as T47D_MAX_RESP,
	max(T47D_SD_IC50) as T47D_SD_IC50,
    max(T47D_SD_ABS_IC50) as T47D_SD_ABS_IC50,
	max(T47D_SD_RESP_AT_HC) as T47D_SD_RESP_AT_HC,
	max(T47D_SD_MAX_RESP) as T47D_SD_MAX_RESP,
	max(T47D_HC) as T47D_HC,
    max(T47D_N) as T47D_N,
	
	MIN(SKBR3_IC50) as SKBR3_IC50,
		case WHEN MAX(SKBR3_CS) = 2     THEN
            ''
        WHEN MAX(SKBR3_CS) = 1     THEN
           '>'
		WHEN Min(SKBR3_CS) = 0     THEN
           '<' end SKBR3_CS,
    max(SKBR3_ABS_IC50) as SKBR3_ABS_IC50,
	max(SKBR3_RESP_AT_HC) as SKBR3_RESP_AT_HC,
	max(SKBR3_MAX_RESP) as SKBR3_MAX_RESP,
    max(SKBR3_SD_IC50) as SKBR3_SD_IC50,
	max(SKBR3_SD_ABS_IC50) as SKBR3_SD_ABS_IC50,
    max(SKBR3_SD_RESP_AT_HC) as SKBR3_SD_RESP_AT_HC,
	max(SKBR3_SD_MAX_RESP) as SKBR3_SD_MAX_RESP,
	max(SKBR3_HC) as SKBR3_HC,
	max(SKBR3_N) as SKBR3_N,
	
    MIN(ZR751_IC50) as ZR751_IC50,
	case WHEN MAX(ZR751_CS) = 2     THEN
            ''
        WHEN MAX(ZR751_CS) = 1     THEN
           '>'
		WHEN Min(ZR751_CS) = 0     THEN
           '<' end ZR751_CS,
	max(ZR751_ABS_IC50) as ZR751_ABS_IC50,
	max(ZR751_RESP_AT_HC) as ZR751_RESP_AT_HC,
	max(ZR751_MAX_RESP) as ZR751_MAX_RESP,
    max(ZR751_SD_IC50) as ZR751_SD_IC50,
	max(ZR751_SD_ABS_IC50) as ZR751_SD_ABS_IC50,
    max(ZR751_SD_RESP_AT_HC) as ZR751_SD_RESP_AT_HC,
	max(ZR751_SD_MAX_RESP) as ZR751_SD_MAX_RESP,
	max(ZR751_HC) as ZR751_HC,
	max(ZR751_N) as ZR751_N,
	
	MIN(HCC1954_IC50) as HCC1954_IC50,
		case WHEN MAX(HCC1954_CS) = 2     THEN
            ''
        WHEN MAX(HCC1954_CS) = 1     THEN
           '>'
		WHEN Min(HCC1954_CS) = 0     THEN
           '<' end HCC1954_CS,
	max(HCC1954_ABS_IC50) as HCC1954_ABS_IC50,
	max(HCC1954_RESP_AT_HC) as HCC1954_RESP_AT_HC,
	max(HCC1954_MAX_RESP) as HCC1954_MAX_RESP,
    max(HCC1954_SD_IC50) as HCC1954_SD_IC50,
	max(HCC1954_SD_ABS_IC50) as HCC1954_SD_ABS_IC50,
    max(HCC1954_SD_RESP_AT_HC) as HCC1954_SD_RESP_AT_HC,
	max(HCC1954_SD_MAX_RESP) as HCC1954_SD_MAX_RESP,
	max(HCC1954_HC) as HCC1954_HC,
	max(HCC1954_N) as HCC1954_N,
	
	MIN(MCF10A_P_IC50) as MCF10A_P_IC50,
		case WHEN MAX(MCF10A_P_CS) = 2     THEN
            ''
        WHEN MAX(MCF10A_P_CS) = 1     THEN
           '>'
		WHEN Min(MCF10A_P_CS) = 0     THEN
           '<' end MCF10A_P_CS,
	max(MCF10A_P_ABS_IC50) as MCF10A_P_ABS_IC50,
	max(MCF10A_P_RESP_AT_HC) as MCF10A_P_RESP_AT_HC,
	max(MCF10A_P_MAX_RESP) as MCF10A_P_MAX_RESP,
    max(MCF10A_P_SD_IC50) as MCF10A_P_SD_IC50,
	max(MCF10A_P_SD_ABS_IC50) as MCF10A_P_SD_ABS_IC50,
    max(MCF10A_P_SD_RESP_AT_HC) as MCF10A_P_SD_RESP_AT_HC,
	max(MCF10A_P_SD_MAX_RESP) as MCF10A_P_SD_MAX_RESP,
	max(MCF10A_P_HC) as MCF10A_P_HC,
	max(MCF10A_P_N) as MCF10A_P_N,
	
	MIN(MCF10A_PH_IC50) as MCF10A_PH_IC50,
	case WHEN MAX(MCF10A_PH_CS) = 2     THEN
            ''
        WHEN MAX(MCF10A_PH_CS) = 1     THEN
           '>'
		WHEN Min(MCF10A_PH_CS) = 0     THEN
           '<' end MCF10A_PH_CS,
	max(MCF10A_PH_ABS_IC50) as MCF10A_PH_ABS_IC50,
	max(MCF10A_PH_RESP_AT_HC) as MCF10A_PH_RESP_AT_HC,
	max(MCF10A_PH_MAX_RESP) as MCF10A_PH_MAX_RESP,
    max(MCF10A_PH_SD_IC50) as MCF10A_PH_SD_IC50,
	max(MCF10A_PH_SD_ABS_IC50) as MCF10A_PH_SD_ABS_IC50,
    max(MCF10A_PH_SD_RESP_AT_HC) as MCF10A_PH_SD_RESP_AT_HC,
	max(MCF10A_PH_SD_MAX_RESP) as MCF10A_PH_SD_MAX_RESP,
	max(MCF10A_PH_HC) as MCF10A_PH_HC,
	max(MCF10A_PH_N) as MCF10A_PH_N,
	
   (MIN(MCF10A_P_IC50) / MIN(MCF10A_PH_IC50)) as Selectivity_Ratio
    

FROM(
      SELECT     
        T0.formatted_id AS FORMATTED_ID,
		
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p1*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL THEN T1.p1*1000 		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NULL THEN T1.M1*1000 END BT549_IC50,
		CASE WHEN  T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL THEN 2
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NULL AND T1.M1 IS NOT NULL and T1.compound_status='>' THEN 1
WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NULL AND T1.M1 IS NOT NULL and T1.compound_status='<' THEN 0			 END BT549_CS,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p2*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL THEN T1.p2*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NULL THEN T1.p2*1000 END BT549_ABS_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p3
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL THEN T1.p3		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NULL THEN T1.p3 END BT549_RESP_AT_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p4
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL THEN T1.p4		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NULL THEN T1.p4 END BT549_MAX_RESP,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s1*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL THEN T1.s1*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NULL THEN T1.s1*1000 END BT549_SD_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s2*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL THEN T1.s2*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NULL THEN T1.s2*1000 END BT549_SD_ABS_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s3
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL THEN T1.s3		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NULL THEN T1.s3 END BT549_SD_RESP_AT_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s4
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL THEN T1.s4		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NULL THEN T1.s4 END BT549_SD_MAX_RESP,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.HC
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NOT NULL THEN T1.HC		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' AND T1.P1 IS NULL THEN T1.HC END BT549_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'BT549' THEN T2.D END BT549_N,
			 
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p1*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL THEN T1.p1*1000 		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NULL THEN T1.M1*1000 END T47D_IC50,
		CASE WHEN  T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL THEN 2 
			 WHEN  T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NULL AND T1.M1 IS NOT NULL and T1.compound_status='>' THEN 1
WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND  T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NULL AND T1.M1 IS NOT NULL and T1.compound_status='<' THEN 0 	 END T47D_CS, 
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p2*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL THEN T1.p2*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NULL THEN T1.p2*1000 END T47D_ABS_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p3
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL THEN T1.p3		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NULL THEN T1.p3 END T47D_RESP_AT_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p4
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL THEN T1.p4		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NULL THEN T1.p4 END T47D_MAX_RESP,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s1*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL THEN T1.s1*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NULL THEN T1.s1*1000 END T47D_SD_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s2*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL THEN T1.s2*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NULL THEN T1.s2*1000 END T47D_SD_ABS_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s3
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL THEN T1.s3		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NULL THEN T1.s3 END T47D_SD_RESP_AT_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s4
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL THEN T1.s4		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NULL THEN T1.s4 END T47D_SD_MAX_RESP,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.HC
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NOT NULL THEN T1.HC		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' AND T1.P1 IS NULL THEN T1.HC END T47D_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'T47D' THEN T2.D END T47D_N,
			 
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p1*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL THEN T1.p1*1000 		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NULL THEN T1.M1*1000 END SKBR3_IC50,
		CASE WHEN  T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL THEN 2 
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND  T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NULL AND T1.M1 IS NOT NULL and T1.compound_status='>' THEN 1
WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND  T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NULL AND T1.M1 IS NOT NULL and T1.compound_status='<' THEN 0			 END SKBR3_CS,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p2*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL THEN T1.p2*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NULL THEN T1.p2*1000 END SKBR3_ABS_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p3
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL THEN T1.p3		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NULL THEN T1.p3 END SKBR3_RESP_AT_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p4
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL THEN T1.p4		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NULL THEN T1.p4 END SKBR3_MAX_RESP,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s1*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL THEN T1.s1*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NULL THEN T1.s1*1000 END SKBR3_SD_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s2*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL THEN T1.s2*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NULL THEN T1.s2*1000 END SKBR3_SD_ABS_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s3
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL THEN T1.s3		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NULL THEN T1.s3 END SKBR3_SD_RESP_AT_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s4
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL THEN T1.s4		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NULL THEN T1.s4 END SKBR3_SD_MAX_RESP,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.HC
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NOT NULL THEN T1.HC		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' AND T1.P1 IS NULL THEN T1.HC END SKBR3_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'SKBR3' THEN T2.D END SKBR3_N,
			 
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p1*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL THEN T1.p1*1000 		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NULL THEN T1.M1*1000 END ZR751_IC50,
		CASE WHEN  T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL THEN 2 
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND  T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NULL AND T1.M1 IS NOT NULL and T1.compound_status='>' THEN 1
WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND  T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NULL AND T1.M1 IS NOT NULL and T1.compound_status='<' THEN 0			 END ZR751_CS,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p2*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL THEN T1.p2*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NULL THEN T1.p2*1000 END ZR751_ABS_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p3
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL THEN T1.p3		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NULL THEN T1.p3 END ZR751_RESP_AT_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p4
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL THEN T1.p4		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NULL THEN T1.p4 END ZR751_MAX_RESP,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s1*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL THEN T1.s1*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NULL THEN T1.s1*1000 END ZR751_SD_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s2*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL THEN T1.s2*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NULL THEN T1.s2*1000 END ZR751_SD_ABS_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s3
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL THEN T1.s3		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NULL THEN T1.s3 END ZR751_SD_RESP_AT_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s4
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL THEN T1.s4		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NULL THEN T1.s4 END ZR751_SD_MAX_RESP,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.HC
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NOT NULL THEN T1.HC		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' AND T1.P1 IS NULL THEN T1.HC END ZR751_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'ZR751' THEN T2.D END ZR751_N,
			 
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p1*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL THEN T1.p1*1000 		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NULL THEN T1.M1*1000 END HCC1954_IC50,
		CASE WHEN  T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL THEN 2
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND  T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NULL AND T1.M1 IS NOT NULL and T1.compound_status='>' THEN 1
WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND  T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NULL AND T1.M1 IS NOT NULL and T1.compound_status='<' THEN 0			 END HCC1954_CS,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p2*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL THEN T1.p2*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NULL THEN T1.p2*1000 END HCC1954_ABS_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p3
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL THEN T1.p3		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NULL THEN T1.p3 END HCC1954_RESP_AT_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p4
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL THEN T1.p4		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NULL THEN T1.p4 END HCC1954_MAX_RESP,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s1*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL THEN T1.s1*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NULL THEN T1.s1*1000 END HCC1954_SD_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s2*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL THEN T1.s2*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NULL THEN T1.s2*1000 END HCC1954_SD_ABS_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s3
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL THEN T1.s3		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NULL THEN T1.s3 END HCC1954_SD_RESP_AT_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s4
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL THEN T1.s4		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NULL THEN T1.s4 END HCC1954_SD_MAX_RESP,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.HC
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NOT NULL THEN T1.HC		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' AND T1.P1 IS NULL THEN T1.HC END HCC1954_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'HCC1954' THEN T2.D END HCC1954_N, 

        CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p1*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL THEN T1.p1*1000 		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NULL THEN T1.M1*1000 END MCF10A_P_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND  T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL THEN 2
			 WHEN  T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NULL AND T1.M1 IS NOT NULL and T1.compound_status='>' THEN 1
WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND  T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NULL AND T1.M1 IS NOT NULL and T1.compound_status='<' THEN 0			 END MCF10A_P_CS,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p2*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL THEN T1.p2*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NULL THEN T1.p2*1000 END MCF10A_P_ABS_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p3
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL THEN T1.p3		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NULL THEN T1.p3 END MCF10A_P_RESP_AT_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p4
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL THEN T1.p4		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NULL THEN T1.p4 END MCF10A_P_MAX_RESP,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s1*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL THEN T1.s1*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NULL THEN T1.s1*1000 END MCF10A_P_SD_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s2*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL THEN T1.s2*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NULL THEN T1.s2*1000 END MCF10A_P_SD_ABS_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s3
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL THEN T1.s3		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NULL THEN T1.s3 END MCF10A_P_SD_RESP_AT_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s4
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL THEN T1.s4		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NULL THEN T1.s4 END MCF10A_P_SD_MAX_RESP,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.HC
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NOT NULL THEN T1.HC		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' AND T1.P1 IS NULL THEN T1.HC END MCF10A_P_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - Parental' THEN T2.D END MCF10A_P_N,			 
		

        CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p1*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL THEN T1.p1*1000 		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NULL THEN T1.M1*1000 END MCF10A_PH_IC50,
		CASE WHEN  T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL THEN 2
			 WHEN  T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NULL AND T1.M1 IS NOT NULL and T1.compound_status='>' THEN 1
 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND  T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NULL AND T1.M1 IS NOT NULL and T1.compound_status='<' THEN 0 	 END MCF10A_PH_CS,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p2*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL THEN T1.p2*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NULL THEN T1.p2*1000 END MCF10A_PH_ABS_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p3
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL THEN T1.p3		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NULL THEN T1.p3 END MCF10A_PH_RESP_AT_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.p4
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL THEN T1.p4		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NULL THEN T1.p4 END MCF10A_PH_MAX_RESP,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s1*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL THEN T1.s1*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NULL THEN T1.s1*1000 END MCF10A_PH_SD_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s2*1000
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL THEN T1.s2*1000		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NULL THEN T1.s2*1000 END MCF10A_PH_SD_ABS_IC50,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s3
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL THEN T1.s3		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NULL THEN T1.s3 END MCF10A_PH_SD_RESP_AT_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.s4
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL THEN T1.s4		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NULL THEN T1.s4 END MCF10A_PH_SD_MAX_RESP,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL AND T1.M1 IS NOT NULL THEN T1.HC
             WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NOT NULL THEN T1.HC		
			 WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' AND T1.P1 IS NULL THEN T1.HC END MCF10A_PH_HC,
		CASE WHEN T1.PROJECT_NAME_RO IN ('PI3Kα','PI3Ka-Degrader') AND T1.Assay_Types = 'CellTiter-Glo' AND T1.Cell_Lines = 'MCF10A - PIK3CA H1047R' THEN T2.D END MCF10A_PH_N
		
		
FROM
        ds3_userdata.PI3KΑ_REG_DATA_VW T0
		
LEFT JOIN 

	(SELECT * FROM ((SELECT 
	A.FORMATTED_ID, 
	ROUND(POWER(10, AVG(LOG(10,CASE WHEN A.IC50_RR > 0 THEN A.IC50_RR ELSE NULL END))),4) as p1,
	NULL AS M1,
    POWER(10, AVG(LOG(10,CASE WHEN A.ABSOLUTE_IC50 > 0 THEN A.ABSOLUTE_IC50 ELSE NULL END))) as p2,
    POWER(10, AVG(LOG(10,CASE WHEN A.RESPONSE_AT_HC > 0 THEN A.RESPONSE_AT_HC ELSE NULL END))) as p3,
	POWER(10, AVG(LOG(10,CASE WHEN A.MAX_RESPONSE > 0 THEN A.MAX_RESPONSE ELSE NULL END))) as p4,
    STDDEV(A.IC50_RR) AS S1,
    STDDEV(A.ABSOLUTE_IC50) AS S2,
    STDDEV(A.RESPONSE_AT_HC) AS S3,
    STDDEV(A.MAX_RESPONSE) AS S4,
	A.ASSAY_TYPE AS ASSAY_TYPES,
	A.CELL_LINE AS CELL_LINES,
	MAX(A.HIGHEST_CONCENTRATION) AS HC,
	A.PROJECT_NAME_RO,
	A.COMPOUND_STATUS,
	COUNT(A.FORMATTED_ID) as c
	FROM DS3_USERDATA.PI3K_CELTITRE_REGISTRY_SUMMARY A
	WHERE A.COMPOUND_STATUS IS NULL
	GROUP BY A.FORMATTED_ID,A.ASSAY_TYPE,A.CELL_LINE,A.PROJECT_NAME_RO,A.HIGHEST_CONCENTRATION,A.COMPOUND_STATUS)
	
	UNION ALL
	
	(SELECT 
	A.FORMATTED_ID,
    NULL AS P1,	
	MAX(A.IC50_RR) as M1,
    POWER(10, AVG(LOG(10,CASE WHEN A.ABSOLUTE_IC50 > 0 THEN A.ABSOLUTE_IC50 ELSE NULL END))) as p2,
    POWER(10, AVG(LOG(10,CASE WHEN A.RESPONSE_AT_HC > 0 THEN A.RESPONSE_AT_HC ELSE NULL END))) as p3,
	POWER(10, AVG(LOG(10,CASE WHEN A.MAX_RESPONSE > 0 THEN A.MAX_RESPONSE ELSE NULL END))) as p4,
    STDDEV(A.IC50_RR) AS S1,
    STDDEV(A.ABSOLUTE_IC50) AS S2,
    STDDEV(A.RESPONSE_AT_HC) AS S3,
    STDDEV(A.MAX_RESPONSE) AS S4,
	A.ASSAY_TYPE AS ASSAY_TYPES,
	A.CELL_LINE AS CELL_LINES,
	MAX(A.HIGHEST_CONCENTRATION) AS HC,
	A.PROJECT_NAME_RO,
	A.COMPOUND_STATUS,
	COUNT(A.FORMATTED_ID) as c
	FROM DS3_USERDATA.PI3K_CELTITRE_REGISTRY_SUMMARY A
	WHERE A.COMPOUND_STATUS IS NOT NULL
	GROUP BY A.FORMATTED_ID,A.ASSAY_TYPE,A.CELL_LINE,A.PROJECT_NAME_RO,A.HIGHEST_CONCENTRATION,A.COMPOUND_STATUS))) T1
	ON T0.FORMATTED_ID = T1.FORMATTED_ID
	
LEFT JOIN

	(SELECT 
	A.FORMATTED_ID,
	A.ASSAY_TYPE AS ASSAY_TYPES,
	A.CELL_LINE AS CELL_LINES,
	A.PROJECT_NAME_RO,
	COUNT(A.FORMATTED_ID) as D
	FROM DS3_USERDATA.PI3K_CELTITRE_REGISTRY_SUMMARY A
	GROUP BY A.FORMATTED_ID,A.ASSAY_TYPE,A.CELL_LINE,A.PROJECT_NAME_RO) T2
	ON T0.FORMATTED_ID = T2.FORMATTED_ID AND T1.CELL_LINES=T2.CELL_LINES AND T1.ASSAY_TYPES=T2.ASSAY_TYPES
	
)
GROUP BY FORMATTED_ID
