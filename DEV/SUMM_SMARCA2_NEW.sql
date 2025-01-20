SELECT 
    x01_formatted_id,
    -- T2
    max(x02_IC50_UM_SMARCA2_B) as x02_IC50_UM_SMARCA2_B,
    max(x03_N_SMARCA2_B) as x03_N_SMARCA2_B,
    max(x04_SD_SMARCA2_B) as x04_SD_SMARCA2_B,
    max(x05_SDL_SMARCA2_B) as x05_SDL_SMARCA2_B,
    -- T3
    max(x06_IC50_UM_SMARCA2_T) as x06_IC50_UM_SMARCA2_T,
    max(x07_N_SMARCA2_T) as x07_N_SMARCA2_T,
    max(x08_SD_SMARCA2_T) as x08_SD_SMARCA2_T,
    max(x09_SDL_SMARCA2_T) as x09_SDL_SMARCA2_T,
    -- T4
    max(x10_IC50_UM_SMARCA4_B) as x10_IC50_UM_SMARCA4_B,
    max(x11_N_SMARCA4_B) as x11_N_SMARCA4_B,
    max(x12_SD_SMARCA4_B) as x12_SD_SMARCA4_B,
    max(x13_SDL_SMARCA4_B) as x13_SDL_SMARCA4_B,
    -- T5
    max(x10_IC50_UM_SMARCA4_T) as x10_IC50_UM_SMARCA4_T,
    max(x11_N_SMARCA4_T) as x11_N_SMARCA4_T,
    max(x12_SD_SMARCA4_T) as x12_SD_SMARCA4_T,
    max(x13_SDL_SMARCA4_T) as x13_SDL_SMARCA4_T,
    -- T6
    max(x14_DC50_UM_SMARCA2_HiBiT) as x14_DC50_UM_SMARCA2_HiBiT,
    max(x15_N_SMARCA2_HiBiT) as x15_N_SMARCA2_HiBiT,
    max(x16_SD_SMARCA2_HiBiT) as x16_SD_SMARCA2_HiBiT,
    max(x17_SDL_SMARCA2_HiBiT) as x17_SDL_SMARCA2_HiBiT,
    -- T7
    max(x18_DC50_UM_SMARCA2_H520) as x18_DC50_UM_SMARCA2_H520,
    max(x19_N_SMARCA2_H520) as x19_N_SMARCA2_H520,
    max(x20_SD_SMARCA2_H520) as x20_SD_SMARCA2_H520,
    max(x21_SDL_SMARCA2_H520) as x21_SDL_SMARCA2_H520,
    -- T8
    max(x22_DC50_UM_SMARCA4_H520) as x22_DC50_UM_SMARCA4_H520,
    max(x23_N_SMARCA4_H520) as x23_N_SMARCA4_H520,
    max(x24_SD_SMARCA4_H520) as x24_SD_SMARCA4_H520,
    max(x25_SDL_SMARCA4_H520) as x25_SDL_SMARCA4_H520,
    -- T9
    max(x26_DC50_UM_SMARCA2_H1568) as x26_DC50_UM_SMARCA2_H1568,
    max(x27_N_SMARCA2_H1568) as x27_N_SMARCA2_H1568,
    max(x28_SD_SMARCA2_H1568) as x28_SD_SMARCA2_H1568,
    max(x29_SDL_SMARCA2_H1568) as x29_SDL_SMARCA2_H1568,
    -- T10
    max(x30_DC50_UM_SMARCA2_H1693) as x30_DC50_UM_SMARCA2_H1693,
    max(x31_N_SMARCA2_H1693) as x31_N_SMARCA2_H1693,
    max(x32_SD_SMARCA2_H1693) as x32_SD_SMARCA2_H1693,
    max(x33_SDL_SMARCA2_H1693) as x33_SDL_SMARCA2_H1693,
    -- T11
    max(x34_ALPHA_SMARCA2) as x34_ALPHA_SMARCA2,
    -- T12
    max(x35_ALPHA_SMARCA4) as x35_ALPHA_SMARCA4,
    -- T13
    max(x36_IC50_UM_PRO_H1693) as x36_IC50_UM_PRO_H1693,
    max(x37_N_PRO_H1693) as x37_N_PRO_H1693,
    max(x38_SD_PRO_H1693) as x38_SD_PRO_H1693,
    max(x39_SDL_PRO_H1693) as x39_SDL_PRO_H1693,
    -- T14
    max(x40_IC50_UM_PRO_H1703) as x40_IC50_UM_PRO_H1703,
    max(x41_N_PRO_H1703) as x41_N_PRO_H1703,
    max(x42_SD_PRO_H1703) as x42_SD_PRO_H1703,
    max(x43_SDL_PRO_H1703) as x43_SDL_PRO_H1703,
    -- T15
    max(x44_DMAX_HiBiT) as x44_DMAX_HiBiT,
    -- T16
    max(x45_DMAX_SM2_H1693) as x45_DMAX_SM2_H1693,
    -- T17
    max(x46_DMAX_SM2_H520) as x46_DMAX_SM2_H520,
    -- T18
    max(x47_DMAX_SM4_H520) as x47_DMAX_SM4_H520,
    -- T19
    min(IC50_UM_Hibit_HeLa_SMARCA2) as IC50_UM_Hibit_HeLa_SMARCA2,
    min(IC50_NM_Hibit_HeLa_SMARCA2) as IC50_NM_Hibit_HeLa_SMARCA2,
    max(MIN_Hibit_HeLa_SMARCA2) as MIN_Hibit_HeLa_SMARCA2,
    max(DMAX_Hibit_HeLa_SMARCA2) as DMAX_Hibit_HeLa_SMARCA2,
    MAX(N_Hibit_HeLa_SMARCA2) as N_Hibit_HeLa_SMARCA2,
    -- T20
    min(IC50_UM_Hibit_HeLa_SMARCA4) as IC50_UM_Hibit_HeLa_SMARCA4,
    min(IC50_NM_Hibit_HeLa_SMARCA4) as IC50_NM_Hibit_HeLa_SMARCA4,
    max(MIN_Hibit_HeLa_SMARCA4) as MIN_Hibit_HeLa_SMARCA4,
    max(DMAX_Hibit_HeLa_SMARCA4) as DMAX_Hibit_HeLa_SMARCA4,
    MAX(N_Hibit_HeLa_SMARCA4) as N_Hibit_HeLa_SMARCA4,
    -- T21
    min(IC50_UM_Hibit_Pl_HeLa_SMARCA2) as IC50_UM_Hibit_Pl_HeLa_SMARCA2,
    min(IC50_NM_Hibit_Pl_HeLa_SMARCA2) as IC50_NM_Hibit_Pl_HeLa_SMARCA2,
    max(MIN_Hibit_Pl_HeLa_SMARCA2) as MIN_Hibit_Pl_HeLa_SMARCA2,
    max(DMAX_Hibit_Pl_HeLa_SMARCA2) as DMAX_Hibit_Pl_HeLa_SMARCA2,
    max(N_Hibit_Pl_HeLa_SMARCA2) as N_Hibit_Pl_HeLa_SMARCA2,
    -- T22
    min(IC50_UM_Hibit_Pl_HeLa_SMARCA4) as IC50_UM_Hibit_Pl_HeLa_SMARCA4,
    min(IC50_NM_Hibit_Pl_HeLa_SMARCA4) as IC50_NM_Hibit_Pl_HeLa_SMARCA4,
    max(MIN_Hibit_Pl_HeLa_SMARCA4) as MIN_Hibit_Pl_HeLa_SMARCA4,
    max(DMAX_Hibit_Pl_HeLa_SMARCA4) as DMAX_Hibit_Pl_HeLa_SMARCA4,
    max(N_Hibit_Pl_HeLa_SMARCA4) as N_Hibit_Pl_HeLa_SMARCA4,
    -- calculations
    min(IC50_UM_Hibit_HeLa_SMARCA4)/min(IC50_UM_Hibit_HeLa_SMARCA2) as SMARCA2_SELECTIVITY,
    min(IC50_UM_Hibit_Pl_HeLa_SMARCA2)/min(IC50_UM_Hibit_HeLa_SMARCA2) as SMARCA2_PLASMA_SHIFT,
    min(IC50_UM_Hibit_Pl_HeLa_SMARCA4)/min(IC50_UM_Hibit_Pl_HeLa_SMARCA2) as PLASMA_SELECTIVITY,
    -- T23
    max(IC90_UM_Hibit_HeLa_SMARCA2) as IC90_UM_Hibit_HeLa_SMARCA2,
    max(IC90_NM_Hibit_HeLa_SMARCA2) as IC90_NM_Hibit_HeLa_SMARCA2,
    -- T24
    max(IC90_UM_Hibit_HeLa_SMARCA4) as IC90_UM_Hibit_HeLa_SMARCA4,
    max(IC90_NM_Hibit_HeLa_SMARCA4) as IC90_NM_Hibit_HeLa_SMARCA4,
    -- T25
    max(IC90_UM_Hibit_Pl_HeLa_SMARCA2) as IC90_UM_Hibit_Pl_HeLa_SMARCA2,
    max(IC90_NM_Hibit_Pl_HeLa_SMARCA2) as IC90_NM_Hibit_Pl_HeLa_SMARCA2,
    -- T26
    max(IC90_UM_Hibit_Pl_HeLa_SMARCA4) as IC90_UM_Hibit_Pl_HeLa_SMARCA4,
    max(IC90_NM_Hibit_Pl_HeLa_SMARCA4) as IC90_NM_Hibit_Pl_HeLa_SMARCA4,
    -- T27
    min(IC50_UM_H1693) as IC50_UM_H1693,
    min(IC50_NM_H1693) as IC50_NM_H1693,
    max(MIN_H1693) as MIN_H1693,
    max(DMAX_H1693) as DMAX_H1693,
    max(N_IC50_H1693) as N_IC50_H1693,
    -- T28
    min(IC50_UM_Calu_6) as IC50_UM_Calu_6,
    min(IC50_NM_Calu_6) as IC50_NM_Calu_6,
    max(MIN_Calu_6) as MIN_Calu_6,
    max(DMAX_Calu_6) as DMAX_Calu_6,
    max(N_IC50_Calu_6) as N_IC50_Calu_6,
	
	min(IC50_UM_DH82) as IC50_UM_DH82,
    min(IC50_NM_DH82) as IC50_NM_DH82,
    max(MIN_DH82) as MIN_DH82,
    max(DMAX_DH82) as DMAX_DH82,
    max(N_IC50_DH82) as N_IC50_DH82,
	case WHEN MAX(CS_IC50_DH82) = 2     THEN
            ''
        WHEN MAX(CS_IC50_DH82) = 1     THEN
           '>'
		WHEN Min(CS_IC50_DH82) = 0     THEN
           '<' end CS_IC50_DH82,
	
	min(IC50_UM_MDCK) as IC50_UM_MDCK,
    min(IC50_NM_MDCK) as IC50_NM_MDCK,
    max(MIN_MDCK) as MIN_MDCK,
    max(DMAX_MDCK) as DMAX_MDCK,
    max(N_IC50_MDCK) as N_IC50_MDCK,
	case WHEN MAX(CS_IC50_MDCK) = 2     THEN
            ''
        WHEN MAX(CS_IC50_MDCK) = 1     THEN
           '>'
		WHEN Min(CS_IC50_MDCK) = 0     THEN
           '<' end CS_IC50_MDCK,
	
min(IC50_UM_RAOEC) as IC50_UM_RAOEC,
    min(IC50_NM_RAOEC) as IC50_NM_RAOEC,
    max(MIN_RAOEC) as MIN_RAOEC,
    max(DMAX_RAOEC) as DMAX_RAOEC,
    max(N_IC50_RAOEC) as N_IC50_RAOEC,
	case WHEN MAX(CS_IC50_RAOEC) = 2     THEN
            ''
        WHEN MAX(CS_IC50_RAOEC) = 1     THEN
           '>'
		WHEN Min(CS_IC50_RAOEC) = 0     THEN
           '<' end CS_IC50_RAOEC,
	
	min(IC50_UM_Vero) as IC50_UM_Vero,
    min(IC50_NM_Vero) as IC50_NM_Vero,
    max(MIN_Vero) as MIN_Vero,
    max(DMAX_Vero) as DMAX_Vero,
    max(N_IC50_Vero) as N_IC50_Vero,
	case WHEN MAX(CS_IC50_Vero) = 2     THEN
            ''
        WHEN MAX(CS_IC50_Vero) = 1     THEN
           '>'
		WHEN Min(CS_IC50_Vero) = 0     THEN
           '<' end CS_IC50_Vero,
	
	max(x60_DC50_UM_SM2_ICW_H520) as x60_DC50_UM_SM2_ICW_H520,
    max(x61_DC50_NM_SM2_ICW_H520) as x61_DC50_NM_SM2_ICW_H520,
    max(x62_N_SM2_ICW_H520) as x62_N_SM2_ICW_H520,

    max(x70_DC50_UM_SM4_ICW_H520) as x70_DC50_UM_SM4_ICW_H520,
    max(x71_DC50_NM_SM4_ICW_H520) as x71_DC50_NM_SM4_ICW_H520,
    max(x72_N_SM4_ICW_H520) as x72_N_SM4_ICW_H520,
	
	max(x70_DC50_UM_SM4_ICW_H520)/max(x60_DC50_UM_SM2_ICW_H520) as x73_SMARCA_SELECTIVITY,

    max(x80_DC50_UM_SM2_ICW_PL_H1568) as x80_DC50_UM_SM2_ICW_PL_H1568,
    max(x81_DC50_NM_SM2_ICW_PL_H1568) as x81_DC50_NM_SM2_ICW_PL_H1568,
    max(x82_N_SM2_ICW_PL_H1568) as x82_N_SM2_ICW_PL_H1568,

    max(x90_DMAX_SM2_ICW_H520) as x90_DMAX_SM2_ICW_H520,

    max(x91_DMAX_SM4_ICW_H520) as x91_DMAX_SM4_ICW_H520,

    max(x92_DMAX_SM2_ICW_PL_H1568) as x92_DMAX_SM2_ICW_PL_H1568,

    max(x100_DC50_UM_SM2_ICW_H1568) as x100_DC50_UM_SM2_ICW_H1568,
    max(x101_DC50_NM_SM2_ICW_H1568) as x101_DC50_NM_SM2_ICW_H1568,
    max(x102_N_SM2_ICW_H1568) as x102_N_SM2_ICW_H1568,
	
	max(x80_DC50_UM_SM2_ICW_PL_H1568)/max(x100_DC50_UM_SM2_ICW_H1568) as x83_PLASMA_SHIFT,

    max(x110_DMAX_SM2_ICW_H1568) as x110_DMAX_SM2_ICW_H1568,

    max(x120_DC50_UM_SM2_ICW_H1693) as x120_DC50_UM_SM2_ICW_H1693,
    max(x121_DC50_NM_SM2_ICW_H1693) as x121_DC50_NM_SM2_ICW_H1693,
    max(x122_N_SM2_ICW_H1693) as x122_N_SM2_ICW_H1693,

    max(x130_DMAX_SM2_ICW_H1693) as x130_DMAX_SM2_ICW_H1693,

    max(x140_DC50_UM_SM2_HIBIT) as x140_DC50_UM_SM2_HIBIT,
    max(x141_DC50_NM_SM2_HIBIT) as x141_DC50_NM_SM2_HIBIT,
    max(x142_N_SM2_HIBIT) as x142_N_SM2_HIBIT,
 
    max(x150_DMAX_SM2_HIBIT) as x150_DMAX_SM2_HIBIT,
    
	max(H1693_IC50) as H1693_IC50,
    max(H1693_IC50_NM) as H1693_IC50_NM,
    max(N_H1693_IC50) as N_H1693_IC50,

    max(CALU_6_IC50) as CALU_6_IC50,
    max(CALU_6_IC50_NM) as CALU_6_IC50_NM,
    max(N_CALU_6_IC50) as N_CALU_6_IC50,
	
	max(SD_IC50_Hibit_HeLa_SMARCA2) as SD_IC50_Hibit_HeLa_SMARCA2,
	max(SD_IC50_Hibit_HeLa_SMARCA4) as SD_IC50_Hibit_HeLa_SMARCA4,
	max(SD_IC50_Hibit_Pl_HeLa_SMARCA2) as SD_IC50_Hibit_Pl_HeLa_SMARCA2,
	max(SD_IC50_Hibit_Pl_HeLa_SMARCA4) as SD_IC50_Hibit_Pl_HeLa_SMARCA4,
	max(SD_IC50_H1693) as SD_IC50_H1693,
	max(SD_IC50_Calu_6) as SD_IC50_Calu_6,
	max(SD_H1693_IC50) as SD_H1693_IC50,
	max(SD_CALU_6_IC50) as SD_CALU_6_IC50,
	max(SD_IC50_DH82) as SD_IC50_DH82,
	max(SD_IC50_MDCK) as SD_IC50_MDCK,
max(SD_IC50_RAOEC) as SD_IC50_RAOEC,
    max(SD_IC50_Vero) as SD_IC50_Vero,
	
	case WHEN MAX(CS_IC50_Hibit_HeLa_SMARCA2) = 2     THEN
            ''
        WHEN MAX(CS_IC50_Hibit_HeLa_SMARCA2) = 1     THEN
           '>'
		WHEN Min(CS_IC50_Hibit_HeLa_SMARCA2) = 0     THEN
           '<' end CS_IC50_Hibit_HeLa_SMARCA2,
	case WHEN MAX(CS_IC50_Hibit_HeLa_SMARCA4) = 2     THEN
            ''
        WHEN MAX(CS_IC50_Hibit_HeLa_SMARCA4) = 1     THEN
           '>'
		WHEN Min(CS_IC50_Hibit_HeLa_SMARCA4) = 0     THEN
           '<' end CS_IC50_Hibit_HeLa_SMARCA4,
	case WHEN MAX(CS_IC50_Hibit_Pl_HeLa_SMARCA2) = 2     THEN
            ''
        WHEN MAX(CS_IC50_Hibit_Pl_HeLa_SMARCA2) = 1     THEN
           '>'
		WHEN Min(CS_IC50_Hibit_Pl_HeLa_SMARCA2) = 0     THEN
           '<' end CS_IC50_Hibit_Pl_HeLa_SMARCA2,
	case WHEN MAX(CS_IC50_Hibit_Pl_HeLa_SMARCA4) = 2     THEN
            ''
        WHEN MAX(CS_IC50_Hibit_Pl_HeLa_SMARCA4) = 1     THEN
           '>'
		WHEN Min(CS_IC50_Hibit_Pl_HeLa_SMARCA4) = 0     THEN
           '<' end CS_IC50_Hibit_Pl_HeLa_SMARCA4,
	case WHEN MAX(CS_IC50_H1693) = 2     THEN
            ''
        WHEN MAX(CS_IC50_H1693) = 1     THEN
           '>'
		WHEN Min(CS_IC50_H1693) = 0     THEN
           '<' end CS_IC50_H1693,
	case WHEN MAX(CS_IC50_Calu_6) = 2     THEN
            ''
        WHEN MAX(CS_IC50_Calu_6) = 1     THEN
           '>'
		WHEN Min(CS_IC50_Calu_6) = 0     THEN
           '<' end CS_IC50_Calu_6,
	
	max(CS_H1693_IC50) as CS_H1693_IC50,
	max(CS_CALU_6_IC50) as CS_CALU_6_IC50,
	
	max(VMAX_HR_1_SM2) as VMAX_HR_1_SM2,
	max(VMAX_HR_1_SM2_NM) as VMAX_HR_1_SM2_NM,
	max(VMAX_HR_1_SM2_SD) as VMAX_HR_1_SM2_SD,
	max(VMAX_HR_1_SM2_N) as VMAX_HR_1_SM2_N,
	max(KU_UM_SM2) as KU_UM_SM2,
	max(KU_UM_SM2_NM) as KU_UM_SM2_NM,
	max(KU_UM_SM2_SD) as KU_UM_SM2_SD,
	max(KU_UM_SM2_N) as KU_UM_SM2_N,
	max(VMAX_KU_UM_1HR_1_SM2) as VMAX_KU_UM_1HR_1_SM2,
	max(VMAX_KU_UM_1HR_1_SM2_NM) as VMAX_KU_UM_1HR_1_SM2_NM,
	max(VMAX_KU_UM_1HR_1_SM2_SD) as VMAX_KU_UM_1HR_1_SM2_SD,
	max(VMAX_KU_UM_1HR_1_SM2_N) as VMAX_KU_UM_1HR_1_SM2_N,
	
max(VMAX_HR_1_PK) as VMAX_HR_1_PK,
	max(VMAX_HR_1_PK_NM) as VMAX_HR_1_PK_NM,
	max(VMAX_HR_1_PK_SD) as VMAX_HR_1_PK_SD,
	max(VMAX_HR_1_PK_N) as VMAX_HR_1_PK_N,
	max(KU_UM_PK) as KU_UM_PK,
	max(KU_UM_PK_NM) as KU_UM_PK_NM,
	max(KU_UM_PK_SD) as KU_UM_PK_SD,
	max(KU_UM_PK_N) as KU_UM_PK_N,
	max(VMAX_KU_UM_1HR_1_PK) as VMAX_KU_UM_1HR_1_PK,
	max(VMAX_KU_UM_1HR_1_PK_NM) as VMAX_KU_UM_1HR_1_PK_NM,
	max(VMAX_KU_UM_1HR_1_PK_SD) as VMAX_KU_UM_1HR_1_PK_SD,
	max(VMAX_KU_UM_1HR_1_PK_N) as VMAX_KU_UM_1HR_1_PK_N,
	
	max(VMAX_HR_1_SM4) as VMAX_HR_1_SM4,
	max(VMAX_HR_1_SM4_NM) as VMAX_HR_1_SM4_NM,
	max(VMAX_HR_1_SM4_SD) as VMAX_HR_1_SM4_SD,
	max(VMAX_HR_1_SM4_N) as VMAX_HR_1_SM4_N,
	max(KU_UM_SM4) as KU_UM_SM4,
	max(KU_UM_SM4_NM) as KU_UM_SM4_NM,
	max(KU_UM_SM4_SD) as KU_UM_SM4_SD,
	max(KU_UM_SM4_N) as KU_UM_SM4_N,
	max(VMAX_KU_UM_1HR_1_SM4) as VMAX_KU_UM_1HR_1_SM4,
	max(VMAX_KU_UM_1HR_1_SM4_NM) as VMAX_KU_UM_1HR_1_SM4_NM,
	max(VMAX_KU_UM_1HR_1_SM4_SD) as VMAX_KU_UM_1HR_1_SM4_SD,
	max(VMAX_KU_UM_1HR_1_SM4_N) as VMAX_KU_UM_1HR_1_SM4_N,
	
max(VMAX_HR_1_PK4) as VMAX_HR_1_PK4,
	max(VMAX_HR_1_PK4_NM) as VMAX_HR_1_PK4_NM,
	max(VMAX_HR_1_PK4_SD) as VMAX_HR_1_PK4_SD,
	max(VMAX_HR_1_PK4_N) as VMAX_HR_1_PK4_N,
	max(KU_UM_PK4) as KU_UM_PK4,
	max(KU_UM_PK4_NM) as KU_UM_PK4_NM,
	max(KU_UM_PK4_SD) as KU_UM_PK4_SD,
	max(KU_UM_PK4_N) as KU_UM_PK4_N,
	max(VMAX_KU_UM_1HR_1_PK4) as VMAX_KU_UM_1HR_1_PK4,
	max(VMAX_KU_UM_1HR_1_PK4_NM) as VMAX_KU_UM_1HR_1_PK4_NM,
	max(VMAX_KU_UM_1HR_1_PK4_SD) as VMAX_KU_UM_1HR_1_PK4_SD,
	max(VMAX_KU_UM_1HR_1_PK4_N) as VMAX_KU_UM_1HR_1_PK4_N,
	
	max(LE) as LE,
    max(LLE) as LLE
	
    FROM (
      SELECT     
        t1.formatted_id AS x01_formatted_id,  
        --   T2
        CASE WHEN fret.target = 'SMARCA2' AND fret.vcb_conc = '0 uM' THEN fret.p END x02_IC50_UM_SMARCA2_B,
        CASE WHEN fret.target = 'SMARCA2' AND fret.vcb_conc = '0 uM' THEN fret.c END x03_N_SMARCA2_B,
        CASE WHEN fret.target = 'SMARCA2' AND fret.vcb_conc = '0 uM' THEN fret.s2 END x04_SD_SMARCA2_B,
        CASE WHEN fret.target = 'SMARCA2' AND fret.vcb_conc = '0 uM' THEN fret.s1 END x05_SDL_SMARCA2_B,
        
        --   T3
        CASE WHEN fret.target = 'SMARCA2' AND fret.vcb_conc = '5 uM' THEN fret.p END x06_IC50_UM_SMARCA2_T,
        CASE WHEN fret.target = 'SMARCA2' AND fret.vcb_conc = '5 uM' THEN fret.c END x07_N_SMARCA2_T,
        CASE WHEN fret.target = 'SMARCA2' AND fret.vcb_conc = '5 uM' THEN fret.s1 END x08_SD_SMARCA2_T,
        CASE WHEN fret.target = 'SMARCA2' AND fret.vcb_conc = '5 uM' THEN fret.s2 END x09_SDL_SMARCA2_T,
        -- T4
        CASE WHEN fret.target = 'SMARCA4' AND fret.vcb_conc = '0 uM' THEN fret.p END x10_IC50_UM_SMARCA4_B,
        CASE WHEN fret.target = 'SMARCA4' AND fret.vcb_conc = '0 uM' THEN fret.c END x11_N_SMARCA4_B,
        CASE WHEN fret.target = 'SMARCA4' AND fret.vcb_conc = '0 uM' THEN fret.s2 END x12_SD_SMARCA4_B,
        CASE WHEN fret.target = 'SMARCA4' AND fret.vcb_conc = '0 uM' THEN fret.s1 END x13_SDL_SMARCA4_B,
        
        -- T5
        CASE WHEN fret.target = 'SMARCA4' AND fret.vcb_conc = '5 uM' THEN fret.p END x10_IC50_UM_SMARCA4_T,
        CASE WHEN fret.target = 'SMARCA4' AND fret.vcb_conc = '5 uM' THEN fret.c END x11_N_SMARCA4_T,
        CASE WHEN fret.target = 'SMARCA4' AND fret.vcb_conc = '5 uM' THEN fret.s2 END x12_SD_SMARCA4_T,
        CASE WHEN fret.target = 'SMARCA4' AND fret.vcb_conc = '5 uM' THEN fret.s1 END x13_SDL_SMARCA4_T,

        -- T6
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'LgBit_293T' THEN deg.p END x14_DC50_UM_SMARCA2_HiBiT,
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'LgBit_293T' THEN deg.c END x15_N_SMARCA2_HiBiT,
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'LgBit_293T' THEN deg.s2 END x16_SD_SMARCA2_HiBiT,
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'LgBit_293T' THEN deg.s1 END x17_SDL_SMARCA2_HiBiT,
        -- T7
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'NCIH_520' THEN deg.p END x18_DC50_UM_SMARCA2_H520,
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'NCIH_520' THEN deg.c END x19_N_SMARCA2_H520,
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'NCIH_520' THEN deg.s2 END x20_SD_SMARCA2_H520,
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'NCIH_520' THEN deg.s1 END x21_SDL_SMARCA2_H520,
        -- T8
        CASE WHEN deg.TARGET = 'SMARCA4' AND deg.cell_line = 'NCIH_520' THEN deg.p END x22_DC50_UM_SMARCA4_H520,
        CASE WHEN deg.TARGET = 'SMARCA4' AND deg.cell_line = 'NCIH_520' THEN deg.c END x23_N_SMARCA4_H520,
        CASE WHEN deg.TARGET = 'SMARCA4' AND deg.cell_line = 'NCIH_520' THEN deg.s2 END x24_SD_SMARCA4_H520,
        CASE WHEN deg.TARGET = 'SMARCA4' AND deg.cell_line = 'NCIH_520' THEN deg.s1 END x25_SDL_SMARCA4_H520,
        -- T9
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'NCIH_1568' THEN deg.p END x26_DC50_UM_SMARCA2_H1568,
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'NCIH_1568' THEN deg.c END x27_N_SMARCA2_H1568,
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'NCIH_1568' THEN deg.s2 END x28_SD_SMARCA2_H1568,
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'NCIH_1568' THEN deg.s1 END x29_SDL_SMARCA2_H1568,
        -- T10
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'NCIH_1693' THEN deg.p END x30_DC50_UM_SMARCA2_H1693,
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'NCIH_1693' THEN deg.c END x31_N_SMARCA2_H1693,
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'NCIH_1693' THEN deg.s2 END x32_SD_SMARCA2_H1693,
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'NCIH_1693' THEN deg.s1 END x33_SDL_SMARCA2_H1693,

        -- T11
        CASE WHEN fret.TARGET = 'SMARCA2' AND fret.vcb_conc = '5 uM' THEN fret.a END x34_ALPHA_SMARCA2,
        -- T12
        CASE WHEN fret.TARGET = 'SMARCA4' AND fret.vcb_conc = '5 uM' THEN fret.a END x35_ALPHA_SMARCA4,

        -- T13
        CASE WHEN ctgb.time_days = '4' AND ctgb.cell_line = 'NCIH_1693' THEN ctgb.p END x36_IC50_UM_PRO_H1693,
        CASE WHEN ctgb.time_days = '4' AND ctgb.cell_line = 'NCIH_1693' THEN ctgb.c END x37_N_PRO_H1693,
        CASE WHEN ctgb.time_days = '4' AND ctgb.cell_line = 'NCIH_1693' THEN ctgb.s2 END x38_SD_PRO_H1693,
        CASE WHEN ctgb.time_days = '4' AND ctgb.cell_line = 'NCIH_1693' THEN ctgb.s1 END x39_SDL_PRO_H1693,
        -- T14
        CASE WHEN ctgb.time_days = '4' AND ctgb.cell_line = 'NCIH_1703' THEN ctgb.p END x40_IC50_UM_PRO_H1703,
        CASE WHEN ctgb.time_days = '4' AND ctgb.cell_line = 'NCIH_1703' THEN ctgb.c END x41_N_PRO_H1703,
        CASE WHEN ctgb.time_days = '4' AND ctgb.cell_line = 'NCIH_1703' THEN ctgb.s2 END x42_SD_PRO_H1703,
        CASE WHEN ctgb.time_days = '4' AND ctgb.cell_line = 'NCIH_1703' THEN ctgb.s1 END x43_SDL_PRO_H1703,
        -- T15
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'LgBit_293T' THEN deg.a END x44_DMAX_HiBiT,
        -- T16
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'NCIH_1693' THEN deg.a END x45_DMAX_SM2_H1693,
        -- T17
        CASE WHEN deg.TARGET = 'SMARCA2' AND deg.cell_line = 'NCIH_520' THEN deg.a END x46_DMAX_SM2_H520,
        -- T18
        CASE WHEN deg.TARGET = 'SMARCA4' AND deg.cell_line = 'NCIH_520' THEN deg.a END x47_DMAX_SM4_H520,
        -- T19
		CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.p
		     WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL THEN summ.P
             WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL THEN SUMM.R END IC50_UM_Hibit_HeLa_SMARCA2,
        CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL  THEN summ.p*1000 
		     WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL THEN summ.p*1000
		     WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL THEN SUMM.R*1000 END IC50_NM_Hibit_HeLa_SMARCA2,
		CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.s1*1000
             WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL THEN summ.s1*1000		
		     WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL THEN SUMM.s1*1000 END SD_IC50_Hibit_HeLa_SMARCA2,
        CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.q
             WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL THEN summ.q		
		     WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL THEN SUMM.q END MIN_Hibit_HeLa_SMARCA2,
		CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN 100-summ.q
             WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL THEN 100-summ.q		
		     WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL THEN 100-SUMM.q END DMAX_Hibit_HeLa_SMARCA2,
        CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit' THEN SUMM1.D END N_Hibit_HeLa_SMARCA2,
		CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL THEN 2
		     WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='>' THEN 1
             WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='<' THEN 0			 END CS_IC50_Hibit_HeLa_SMARCA2,
		
        -- T20
		CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.p
		     WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL THEN summ.P
             WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL THEN SUMM.R END IC50_UM_Hibit_HeLa_SMARCA4,
        CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL  THEN summ.p*1000 
		     WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL THEN summ.p*1000
		     WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL THEN SUMM.R*1000 END IC50_NM_Hibit_HeLa_SMARCA4,
		CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.s1*1000
             WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL THEN summ.s1*1000		
		     WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL THEN SUMM.s1*1000 END SD_IC50_Hibit_HeLa_SMARCA4,
        CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.q
             WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL THEN summ.q		
		     WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL THEN SUMM.q END MIN_Hibit_HeLa_SMARCA4,
		CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN 100-summ.q
             WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL THEN 100-summ.q		
		     WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL THEN 100-SUMM.q END DMAX_Hibit_HeLa_SMARCA4,
        CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit' THEN SUMM1.D END N_Hibit_HeLa_SMARCA4,
		CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL THEN 2
		     WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='>' THEN 1
			WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='<' THEN 0 END CS_IC50_Hibit_HeLa_SMARCA4,
		
        -- T21
		CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.p
		     WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL THEN summ.P
             WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL THEN SUMM.R END IC50_UM_Hibit_Pl_HeLa_SMARCA2,
        CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL  THEN summ.p*1000 
		     WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL THEN summ.p*1000
		     WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL THEN SUMM.R*1000 END IC50_NM_Hibit_Pl_HeLa_SMARCA2,
		CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.s1*1000
             WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL THEN summ.s1*1000		
		     WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL THEN SUMM.s1*1000 END SD_IC50_Hibit_Pl_HeLa_SMARCA2,
        CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.q
             WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL THEN summ.q		
		     WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL THEN SUMM.q END MIN_Hibit_Pl_HeLa_SMARCA2,
		CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN 100-summ.q
             WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL THEN 100-summ.q		
		     WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL THEN 100-SUMM.q END DMAX_Hibit_Pl_HeLa_SMARCA2,
        CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit Plasma' THEN SUMM1.D END N_Hibit_Pl_HeLa_SMARCA2,
		CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL THEN 2 
		     WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='>' THEN 1
		     WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='<' THEN 0 END CS_IC50_Hibit_Pl_HeLa_SMARCA2,
	
		
        -- T22
		CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.p
		     WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL THEN summ.P
             WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL THEN SUMM.R END IC50_UM_Hibit_Pl_HeLa_SMARCA4,
        CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL  THEN summ.p*1000 
		     WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL THEN summ.p*1000
		     WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL THEN SUMM.R*1000 END IC50_NM_Hibit_Pl_HeLa_SMARCA4,
		CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.s1*1000
             WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL THEN summ.s1*1000		
		     WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL THEN SUMM.s1*1000 END SD_IC50_Hibit_Pl_HeLa_SMARCA4,
        CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.q
             WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL THEN summ.q		
		     WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL THEN SUMM.q END MIN_Hibit_Pl_HeLa_SMARCA4,
		CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN 100-summ.q
             WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL THEN 100-summ.q		
		     WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL THEN 100-SUMM.q END DMAX_Hibit_Pl_HeLa_SMARCA4,
        CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit Plasma' THEN SUMM1.D END N_Hibit_Pl_HeLa_SMARCA4,
		CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL THEN 2 
		     WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='>' THEN 1 
			 WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='<' THEN 0 END CS_IC50_Hibit_Pl_HeLa_SMARCA4,
			 
        -- T23
		CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.p90
		     WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL THEN summ.p90
             WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL THEN SUMM.P90 END IC90_UM_Hibit_HeLa_SMARCA2,
        CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL  THEN summ.p90*1000 
		     WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL THEN summ.p90*1000
		     WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL THEN SUMM.P90*1000 END IC90_NM_Hibit_HeLa_SMARCA2,
		
        -- T24
		CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.p90
		     WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL THEN summ.p90
             WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL THEN SUMM.P90 END IC90_UM_Hibit_HeLa_SMARCA4,
        CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL  THEN summ.p90*1000 
		     WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit' AND SUMM.P IS NOT NULL THEN summ.p90*1000
		     WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit' AND SUMM.P IS NULL THEN SUMM.P90*1000 END IC90_NM_Hibit_HeLa_SMARCA4,
			 
        -- T25
		CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.p90
		     WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL THEN summ.p90
             WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL THEN SUMM.P90 END IC90_UM_Hibit_Pl_HeLa_SMARCA2,
        CASE WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL  THEN summ.p90*1000 
		     WHEN summ.cell_line = 'HeLa-SMARCA2-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL THEN summ.p90*1000
		     WHEN SUMM.cell_line = 'HeLa-SMARCA2-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL THEN SUMM.P90*1000 END IC90_NM_Hibit_Pl_HeLa_SMARCA2,
			 
        -- T26
		CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.p90
		     WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL THEN summ.p90
             WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL THEN SUMM.P90 END IC90_UM_Hibit_Pl_HeLa_SMARCA4,
        CASE WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL  THEN summ.p90*1000 
		     WHEN summ.cell_line = 'HeLa-SMARCA4-HiBit' AND summ.assay_type = 'HiBit Plasma' AND SUMM.P IS NOT NULL THEN summ.p90*1000
		     WHEN SUMM.cell_line = 'HeLa-SMARCA4-HiBit' AND SUMM.assay_type = 'HiBit Plasma' AND SUMM.P IS NULL THEN SUMM.P90*1000 END IC90_NM_Hibit_Pl_HeLa_SMARCA4,
			 
        -- T27
		CASE WHEN summ.cell_line = 'H1693' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.p
		     WHEN summ.cell_line = 'H1693' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.P
             WHEN SUMM.cell_line = 'H1693' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.R END IC50_UM_H1693,
        CASE WHEN summ.cell_line = 'H1693' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL  THEN summ.p*1000 
		     WHEN summ.cell_line = 'H1693' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.p*1000
		     WHEN SUMM.cell_line = 'H1693' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.R*1000 END IC50_NM_H1693,
		CASE WHEN summ.cell_line = 'H1693' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.s1*1000
             WHEN summ.cell_line = 'H1693' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.s1*1000		
		     WHEN SUMM.cell_line = 'H1693' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.s1*1000 END SD_IC50_H1693,
        CASE WHEN summ.cell_line = 'H1693' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.q
             WHEN summ.cell_line = 'H1693' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.q		
		     WHEN SUMM.cell_line = 'H1693' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.q END MIN_H1693,
		CASE WHEN summ.cell_line = 'H1693' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN 100-summ.q
             WHEN summ.cell_line = 'H1693' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN 100-summ.q		
		     WHEN SUMM.cell_line = 'H1693' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN 100-SUMM.q END DMAX_H1693,
        CASE WHEN summ.cell_line = 'H1693' AND summ.assay_type = 'CellTiter-Glo' THEN SUMM1.D END N_IC50_H1693,
		CASE WHEN summ.cell_line = 'H1693' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN 2
		     WHEN SUMM.cell_line = 'H1693' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='>' THEN 1
WHEN SUMM.cell_line = 'H1693' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='<' THEN 0	 END CS_IC50_H1693,
		
        -- T28
		CASE WHEN summ.cell_line = 'Calu-6' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.p
		     WHEN summ.cell_line = 'Calu-6' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.P
             WHEN SUMM.cell_line = 'Calu-6' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.R END IC50_UM_Calu_6,
        CASE WHEN summ.cell_line = 'Calu-6' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL  THEN summ.p*1000 
		     WHEN summ.cell_line = 'Calu-6' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.p*1000
		     WHEN SUMM.cell_line = 'Calu-6' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.R*1000 END IC50_NM_Calu_6,
		CASE WHEN summ.cell_line = 'Calu-6' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.s1*1000
             WHEN summ.cell_line = 'Calu-6' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.s1*1000		
		     WHEN SUMM.cell_line = 'Calu-6' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.s1*1000 END SD_IC50_Calu_6,
        CASE WHEN summ.cell_line = 'Calu-6' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.q
             WHEN summ.cell_line = 'Calu-6' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.q		
		     WHEN SUMM.cell_line = 'Calu-6' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.q END MIN_Calu_6,
		CASE WHEN summ.cell_line = 'Calu-6' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN 100-summ.q
             WHEN summ.cell_line = 'Calu-6' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN 100-summ.q		
		     WHEN SUMM.cell_line = 'Calu-6' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN 100-SUMM.q END DMAX_Calu_6,
        CASE WHEN summ.cell_line = 'Calu-6' AND summ.assay_type = 'CellTiter-Glo' THEN SUMM1.D END N_IC50_Calu_6,
		CASE WHEN summ.cell_line = 'Calu-6' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN 2
		     WHEN SUMM.cell_line = 'Calu-6' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='>' THEN 1
WHEN SUMM.cell_line = 'Calu-6' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='<' THEN 0			 END CS_IC50_Calu_6,
			 
		CASE WHEN summ.cell_line = 'DH82' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.p
		     WHEN summ.cell_line = 'DH82' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.P
             WHEN SUMM.cell_line = 'DH82' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.R END IC50_UM_DH82,
        CASE WHEN summ.cell_line = 'DH82' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL  THEN summ.p*1000 
		     WHEN summ.cell_line = 'DH82' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.p*1000
		     WHEN SUMM.cell_line = 'DH82' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.R*1000 END IC50_NM_DH82,
		CASE WHEN summ.cell_line = 'DH82' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.s1*1000
             WHEN summ.cell_line = 'DH82' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.s1*1000		
		     WHEN SUMM.cell_line = 'DH82' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.s1*1000 END SD_IC50_DH82,
        CASE WHEN summ.cell_line = 'DH82' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.q
             WHEN summ.cell_line = 'DH82' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.q		
		     WHEN SUMM.cell_line = 'DH82' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.q END MIN_DH82,
		CASE WHEN summ.cell_line = 'DH82' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN 100-summ.q
             WHEN summ.cell_line = 'DH82' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN 100-summ.q		
		     WHEN SUMM.cell_line = 'DH82' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN 100-SUMM.q END DMAX_DH82,
        CASE WHEN summ.cell_line = 'DH82' AND summ.assay_type = 'CellTiter-Glo' THEN SUMM1.D END N_IC50_DH82,
		CASE WHEN summ.cell_line = 'DH82' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN 2 
		     WHEN SUMM.cell_line = 'DH82' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='>' THEN 1 
			 WHEN SUMM.cell_line = 'DH82' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='<' THEN 0 END CS_IC50_DH82,
			 
		CASE WHEN summ.cell_line = 'MDCK' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.p
		     WHEN summ.cell_line = 'MDCK' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.P
             WHEN SUMM.cell_line = 'MDCK' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.R END IC50_UM_MDCK,
        CASE WHEN summ.cell_line = 'MDCK' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL  THEN summ.p*1000 
		     WHEN summ.cell_line = 'MDCK' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.p*1000
		     WHEN SUMM.cell_line = 'MDCK' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.R*1000 END IC50_NM_MDCK,
		CASE WHEN summ.cell_line = 'MDCK' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.s1*1000
             WHEN summ.cell_line = 'MDCK' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.s1*1000		
		     WHEN SUMM.cell_line = 'MDCK' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.s1*1000 END SD_IC50_MDCK,
        CASE WHEN summ.cell_line = 'MDCK' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.q
             WHEN summ.cell_line = 'MDCK' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.q		
		     WHEN SUMM.cell_line = 'MDCK' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.q END MIN_MDCK,
		CASE WHEN summ.cell_line = 'MDCK' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN 100-summ.q
             WHEN summ.cell_line = 'MDCK' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN 100-summ.q		
		     WHEN SUMM.cell_line = 'MDCK' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN 100-SUMM.q END DMAX_MDCK,
        CASE WHEN summ.cell_line = 'MDCK' AND summ.assay_type = 'CellTiter-Glo' THEN SUMM1.D END N_IC50_MDCK,
		CASE WHEN summ.cell_line = 'MDCK' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN 2
		     WHEN SUMM.cell_line = 'MDCK' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='>' THEN 1
WHEN SUMM.cell_line = 'MDCK' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='<' THEN 0			 END CS_IC50_MDCK,
			 
CASE WHEN summ.cell_line = 'RAOEC' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.p
		     WHEN summ.cell_line = 'RAOEC' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.P
             WHEN SUMM.cell_line = 'RAOEC' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.R END IC50_UM_RAOEC,
        CASE WHEN summ.cell_line = 'RAOEC' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL  THEN summ.p*1000 
		     WHEN summ.cell_line = 'RAOEC' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.p*1000
		     WHEN SUMM.cell_line = 'RAOEC' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.R*1000 END IC50_NM_RAOEC,
		CASE WHEN summ.cell_line = 'RAOEC' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.s1*1000
             WHEN summ.cell_line = 'RAOEC' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.s1*1000		
		     WHEN SUMM.cell_line = 'RAOEC' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.s1*1000 END SD_IC50_RAOEC,
        CASE WHEN summ.cell_line = 'RAOEC' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.q
             WHEN summ.cell_line = 'RAOEC' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.q		
		     WHEN SUMM.cell_line = 'RAOEC' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.q END MIN_RAOEC,
		CASE WHEN summ.cell_line = 'RAOEC' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN 100-summ.q
             WHEN summ.cell_line = 'RAOEC' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN 100-summ.q		
		     WHEN SUMM.cell_line = 'RAOEC' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN 100-SUMM.q END DMAX_RAOEC,
        CASE WHEN summ.cell_line = 'RAOEC' AND summ.assay_type = 'CellTiter-Glo' THEN SUMM1.D END N_IC50_RAOEC,
		CASE WHEN summ.cell_line = 'RAOEC' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN 2
		     WHEN SUMM.cell_line = 'RAOEC' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='>' THEN 1
WHEN SUMM.cell_line = 'RAOEC' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='<' THEN 0			 END CS_IC50_RAOEC,
	

CASE WHEN summ.cell_line = 'Vero' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.p
		     WHEN summ.cell_line = 'Vero' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.P
             WHEN SUMM.cell_line = 'Vero' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.R END IC50_UM_Vero,
        CASE WHEN summ.cell_line = 'Vero' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL  THEN summ.p*1000 
		     WHEN summ.cell_line = 'Vero' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.p*1000
		     WHEN SUMM.cell_line = 'Vero' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.R*1000 END IC50_NM_Vero,
		CASE WHEN summ.cell_line = 'Vero' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.s1*1000
             WHEN summ.cell_line = 'Vero' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.s1*1000		
		     WHEN SUMM.cell_line = 'Vero' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.s1*1000 END SD_IC50_Vero,
        CASE WHEN summ.cell_line = 'Vero' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN summ.q
             WHEN summ.cell_line = 'Vero' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN summ.q		
		     WHEN SUMM.cell_line = 'Vero' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN SUMM.q END MIN_Vero,
		CASE WHEN summ.cell_line = 'Vero' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL AND SUMM.R IS NOT NULL THEN 100-summ.q
             WHEN summ.cell_line = 'Vero' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN 100-summ.q		
		     WHEN SUMM.cell_line = 'Vero' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL THEN 100-SUMM.q END DMAX_Vero,
        CASE WHEN summ.cell_line = 'Vero' AND summ.assay_type = 'CellTiter-Glo' THEN SUMM1.D END N_IC50_Vero,
		CASE WHEN summ.cell_line = 'Vero' AND summ.assay_type = 'CellTiter-Glo' AND SUMM.P IS NOT NULL THEN 2 
		     WHEN SUMM.cell_line = 'Vero' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='>' THEN 1 
			 WHEN SUMM.cell_line = 'Vero' AND SUMM.assay_type = 'CellTiter-Glo' AND SUMM.P IS NULL AND SUMM.R IS NOT NULL and SUMM.compound_status='<' THEN 0 END CS_IC50_Vero,
		
		
		CASE WHEN T9.ASSAY_TYPE = 'ICW' AND T9.CELL_LINE = 'NCIH_520' AND T9.TARGET = 'SMARCA2' THEN T9.p END x60_DC50_UM_SM2_ICW_H520,
        CASE WHEN T9.ASSAY_TYPE = 'ICW' AND T9.CELL_LINE = 'NCIH_520' AND T9.TARGET = 'SMARCA2' THEN T9.p*1000 END x61_DC50_NM_SM2_ICW_H520,
        CASE WHEN T9.ASSAY_TYPE = 'ICW' AND T9.CELL_LINE = 'NCIH_520' AND T9.TARGET = 'SMARCA2' THEN T9.c END x62_N_SM2_ICW_H520,

        CASE WHEN T9.ASSAY_TYPE = 'ICW' AND T9.CELL_LINE = 'NCIH_520' AND T9.TARGET = 'SMARCA4' THEN T9.p END x70_DC50_UM_SM4_ICW_H520,
        CASE WHEN T9.ASSAY_TYPE = 'ICW' AND T9.CELL_LINE = 'NCIH_520' AND T9.TARGET = 'SMARCA4' THEN T9.p*1000 END x71_DC50_NM_SM4_ICW_H520,
        CASE WHEN T9.ASSAY_TYPE = 'ICW' AND T9.CELL_LINE = 'NCIH_520' AND T9.TARGET = 'SMARCA4' THEN T9.c END x72_N_SM4_ICW_H520,

        CASE WHEN T9.ASSAY_TYPE = 'ICW_PLASMA' AND T9.CELL_LINE = 'NCIH_1568' AND T9.TARGET = 'SMARCA2' THEN T9.p END x80_DC50_UM_SM2_ICW_PL_H1568,
        CASE WHEN T9.ASSAY_TYPE = 'ICW_PLASMA' AND T9.CELL_LINE = 'NCIH_1568' AND T9.TARGET = 'SMARCA2' THEN T9.p*1000 END x81_DC50_NM_SM2_ICW_PL_H1568,
        CASE WHEN T9.ASSAY_TYPE = 'ICW_PLASMA' AND T9.CELL_LINE = 'NCIH_1568' AND T9.TARGET = 'SMARCA2' THEN T9.c END x82_N_SM2_ICW_PL_H1568,

        CASE WHEN T9.ASSAY_TYPE = 'ICW' AND T9.CELL_LINE = 'NCIH_520' AND T9.TARGET = 'SMARCA2' THEN T9.p END x90_DMAX_SM2_ICW_H520,

        CASE WHEN T9.ASSAY_TYPE = 'ICW' AND T9.CELL_LINE = 'NCIH_520' AND T9.TARGET = 'SMARCA4' THEN T9.p END x91_DMAX_SM4_ICW_H520,

        CASE WHEN T9.ASSAY_TYPE = 'ICW_PLASMA' AND T9.CELL_LINE = 'NCIH_1568' AND T9.TARGET = 'SMARCA2' THEN T9.p END x92_DMAX_SM2_ICW_PL_H1568,

        CASE WHEN T9.ASSAY_TYPE = 'ICW' AND T9.CELL_LINE = 'NCIH_1568' AND T9.TARGET = 'SMARCA2' THEN T9.p END x100_DC50_UM_SM2_ICW_H1568,
        CASE WHEN T9.ASSAY_TYPE = 'ICW' AND T9.CELL_LINE = 'NCIH_1568' AND T9.TARGET = 'SMARCA2' THEN T9.p*1000 END x101_DC50_NM_SM2_ICW_H1568,
        CASE WHEN T9.ASSAY_TYPE = 'ICW' AND T9.CELL_LINE = 'NCIH_1568' AND T9.TARGET = 'SMARCA2' THEN T9.c END x102_N_SM2_ICW_H1568,

        CASE WHEN T9.ASSAY_TYPE = 'ICW' AND T9.CELL_LINE = 'NCIH_1568' AND T9.TARGET = 'SMARCA2' THEN T9.p END x110_DMAX_SM2_ICW_H1568,

        CASE WHEN T9.ASSAY_TYPE = 'ICW' AND T9.CELL_LINE = 'NCIH_1693' AND T9.TARGET = 'SMARCA2' THEN T9.p END x120_DC50_UM_SM2_ICW_H1693,
        CASE WHEN T9.ASSAY_TYPE = 'ICW' AND T9.CELL_LINE = 'NCIH_1693' AND T9.TARGET = 'SMARCA2' THEN T9.p*1000 END x121_DC50_NM_SM2_ICW_H1693,
        CASE WHEN T9.ASSAY_TYPE = 'ICW' AND T9.CELL_LINE = 'NCIH_1693' AND T9.TARGET = 'SMARCA2' THEN T9.c END x122_N_SM2_ICW_H1693,

        CASE WHEN T9.ASSAY_TYPE = 'ICW' AND T9.CELL_LINE = 'NCIH_1693' AND T9.TARGET = 'SMARCA2' THEN T9.p END x130_DMAX_SM2_ICW_H1693,

        CASE WHEN T9.ASSAY_TYPE = 'HiBit-EP' AND T9.CELL_LINE = 'LgBit_293T' AND T9.TARGET = 'SMARCA2' THEN T9.p END x140_DC50_UM_SM2_HIBIT,
        CASE WHEN T9.ASSAY_TYPE = 'HiBit-EP' AND T9.CELL_LINE = 'LgBit_293T' AND T9.TARGET = 'SMARCA2' THEN T9.p*1000 END x141_DC50_NM_SM2_HIBIT,
        CASE WHEN T9.ASSAY_TYPE = 'HiBit-EP' AND T9.CELL_LINE = 'LgBit_293T' AND T9.TARGET = 'SMARCA2' THEN T9.c END x142_N_SM2_HIBIT,

        CASE WHEN T9.ASSAY_TYPE = 'HiBit-EP' AND T9.CELL_LINE = 'LgBit_293T' AND T9.TARGET = 'SMARCA2' THEN T9.p END x150_DMAX_SM2_HIBIT,
        
		CASE WHEN T12.cell_line = 'H1693' THEN T12.p END H1693_IC50,
        CASE WHEN T12.cell_line = 'H1693' THEN T12.p*1000 END H1693_IC50_NM,
		CASE WHEN T12.cell_line = 'H1693' THEN T12.s1*1000 END SD_H1693_IC50,
        CASE WHEN T12.cell_line = 'H1693' THEN T12.c END N_H1693_IC50,
		CASE WHEN T12.cell_line = 'H1693' THEN T12.COMPOUND_STATUS END CS_H1693_IC50,

        CASE WHEN T12.cell_line = 'Calu-6' THEN T12.p END CALU_6_IC50,
        CASE WHEN T12.cell_line = 'Calu-6' THEN T12.p*1000 END CALU_6_IC50_NM,
		CASE WHEN T12.cell_line = 'Calu-6' THEN T12.s1*1000 END SD_CALU_6_IC50,
        CASE WHEN T12.cell_line = 'Calu-6' THEN T12.c END N_CALU_6_IC50,
		CASE WHEN T12.cell_line = 'Calu-6' THEN T12.COMPOUND_STATUS END CS_CALU_6_IC50,
		
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.p END VMAX_HR_1_SM2,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.p*1000 END VMAX_HR_1_SM2_NM,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.s1 END VMAX_HR_1_SM2_SD,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.C END VMAX_HR_1_SM2_N,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.q END KU_UM_SM2,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.q*1000 END KU_UM_SM2_NM,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.q1 END KU_UM_SM2_SD,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.C END KU_UM_SM2_N,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.r END VMAX_KU_UM_1HR_1_SM2,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.r*1000 END VMAX_KU_UM_1HR_1_SM2_NM,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.r1 END VMAX_KU_UM_1HR_1_SM2_SD,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.C END VMAX_KU_UM_1HR_1_SM2_N,
	
	
CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.p END VMAX_HR_1_PK,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.p*1000 END VMAX_HR_1_PK_NM,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.s1 END VMAX_HR_1_PK_SD,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.C END VMAX_HR_1_PK_N,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.q END KU_UM_PK,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.q*1000 END KU_UM_PK_NM,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.q1 END KU_UM_PK_SD,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.C END KU_UM_PK_N,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.r END VMAX_KU_UM_1HR_1_PK,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.r*1000 END VMAX_KU_UM_1HR_1_PK_NM,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.r1 END VMAX_KU_UM_1HR_1_PK_SD,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA2-HiBit' THEN T13.C END VMAX_KU_UM_1HR_1_PK_N,

		
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.p END VMAX_HR_1_SM4,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.p*1000 END VMAX_HR_1_SM4_NM,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.s1 END VMAX_HR_1_SM4_SD,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.C END VMAX_HR_1_SM4_N,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.q END KU_UM_SM4,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.q*1000 END KU_UM_SM4_NM,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.q1 END KU_UM_SM4_SD,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.C END KU_UM_SM4_N,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.r END VMAX_KU_UM_1HR_1_SM4,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.r*1000 END VMAX_KU_UM_1HR_1_SM4_NM,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.r1 END VMAX_KU_UM_1HR_1_SM4_SD,
		CASE WHEN T13.ASSAY_TYPE = 'Hibit Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.C END VMAX_KU_UM_1HR_1_SM4_N,
		
CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.p END VMAX_HR_1_PK4,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.p*1000 END VMAX_HR_1_PK4_NM,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.s1 END VMAX_HR_1_PK4_SD,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.C END VMAX_HR_1_PK4_N,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.q END KU_UM_PK4,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.q*1000 END KU_UM_PK4_NM,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.q1 END KU_UM_PK4_SD,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.C END KU_UM_PK4_N,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.r END VMAX_KU_UM_1HR_1_PK4,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.r*1000 END VMAX_KU_UM_1HR_1_PK4_NM,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.r1 END VMAX_KU_UM_1HR_1_PK4_SD,
		CASE WHEN T13.ASSAY_TYPE = 'Plasma Kinetics' AND T13.CELL_LINE = 'HeLa-SMARCA4-HiBit' THEN T13.C END VMAX_KU_UM_1HR_1_PK4_N,
	
		T2.LIGAND_EFFICIENCY as LE,
        T2.LIPOPHILLIC_EFFICIENCY as LLE
		
    FROM
        ds3_userdata.SMARCA2_summary_vw t1 -- 4885
		
	LEFT JOIN 
	(SELECT A.FORMATTED_ID,
	A.P,
	A.C,
	B.HAC,
	(1.4*(-log(10,(A.P*(POWER(10,-9))))/B.HAC)) AS LIGAND_EFFICIENCY,
	(-log(10,(A.P*POWER(10,-9)))) AS PIC50,
	((-log(10,(A.P*POWER(10,-9)))) - B.XLOGP) AS LIPOPHILLIC_EFFICIENCY
	FROM
	((SELECT 
	FORMATTED_ID,
	cell_line,
    assay_type,
    project_name_ro,
	POWER(10, AVG(LOG(10, ic50))) as p, 
	COUNT(FORMATTED_ID) as c
	FROM DS3_USERDATA.smarca2_registry_summary
	WHERE cell_line = 'HeLa-SMARCA2-HiBit' AND assay_type = 'HiBit'
	AND IC50 > 0
	GROUP BY FORMATTED_ID,cell_line,assay_type,project_name_ro)A
	LEFT JOIN 
	DS3_USERDATA.CALC_PHYS_PROPERTIES B
	ON A.FORMATTED_ID = B.CP_ID)
	ORDER BY FORMATTED_ID)T2
	ON T1.FORMATTED_ID = T2.FORMATTED_ID
	
    LEFT JOIN 
        (SELECT 
            formatted_id, 
            TARGET,
            vcb_conc,
            AVG(A_VALUE) as a,
            POWER(10, AVG(LOG(10, CASE WHEN ic50_um > 0 THEN ic50_um ELSE NULL END))) AS p,
            STDDEV(CASE WHEN ic50_um > 0 THEN ic50_um ELSE NULL END) AS s1,
            round(STDDEV(CASE WHEN ic50_um > 0 THEN ic50_um ELSE NULL END), 2 - 1 - floor(LOG(10, nullif(STDDEV(CASE WHEN ic50_um > 0 THEN ic50_um ELSE NULL END), 0)))) AS s2, 
            COUNT(formatted_id) AS c
        FROM ds3_userdata.smarca_fret
        GROUP BY formatted_id, target, vcb_conc) fret
    ON t1.formatted_id  =  fret.formatted_id
    LEFT JOIN 
        (SELECT 
            formatted_id, 
            target,
            cell_line,
            AVG(CASE WHEN DMAX_PCT > 0 THEN DMAX_PCT ELSE NULL END) as a,
            POWER(10, AVG(LOG(10, CASE WHEN dc50_um > 0 THEN dc50_um ELSE NULL END))) AS p,
            STDDEV(CASE WHEN dc50_um > 0 THEN dc50_um ELSE NULL END) AS s1,
            round(STDDEV(CASE WHEN dc50_um > 0 THEN dc50_um ELSE NULL END), 2 - 1 - floor(LOG(10, nullif(STDDEV(CASE WHEN dc50_um > 0 THEN dc50_um ELSE NULL END), 0)))) AS s2, 
            COUNT(formatted_id) AS c
        FROM ds3_userdata.smarca_deg_20191017
        GROUP BY formatted_id, target, cell_line) deg
    ON t1.formatted_id  =  deg.formatted_id    
    LEFT JOIN 
        (SELECT 
            formatted_id,
            cell_line,
            time_days,
            POWER(10, AVG(LOG(10, CASE WHEN ic50_um > 0 THEN ic50_um ELSE NULL END))) AS p,
            STDDEV(CASE WHEN ic50_um > 0 THEN ic50_um ELSE NULL END) AS s1,
            round(STDDEV(CASE WHEN ic50_um > 0 THEN ic50_um ELSE NULL END), 2 - 1 - floor(LOG(10, nullif(STDDEV(CASE WHEN ic50_um > 0 THEN ic50_um ELSE NULL END), 0)))) AS s2, 
            COUNT(formatted_id) AS c
        FROM ds3_userdata.smarca_ctg_b
        GROUP BY formatted_id, cell_line, time_days) ctgb
    ON t1.formatted_id  =  ctgb.formatted_id
	
	LEFT JOIN 
        (SELECT * FROM ((SELECT 
            formatted_id, 
            cell_line,
            assay_type,
			COMPOUND_STATUS,
            project_name_ro,
            POWER(10, AVG(LOG(10, CASE WHEN IC90 > 0 THEN IC90 ELSE NULL END))) as p90, -- IC90
            POWER(10, AVG(LOG(10, CASE WHEN ic50 > 0 THEN ic50 ELSE NULL END))) AS p, -- IC50
			NULL AS R,
			STDDEV(CASE WHEN ic50 > 0 THEN ic50 ELSE NULL END) AS s1,
			round(STDDEV(CASE WHEN ic50 > 0 THEN ic50 ELSE NULL END), 2 - 1 - floor(LOG(10, nullif(STDDEV(CASE WHEN ic50 > 0 THEN ic50 ELSE NULL END), 0)))) AS s2,
            POWER(10, AVG(LOG(10,CASE WHEN MIN > 0 THEN MIN ELSE NULL END))) AS q, -- MIN
            COUNT(formatted_id) AS c,
			0 as D
        FROM ds3_userdata.smarca2_registry_summary
		WHERE COMPOUND_STATUS IS NULL
        GROUP BY formatted_id, cell_line, assay_type, project_name_ro,COMPOUND_STATUS)
	
	     UNION ALL
		 
        (SELECT 
            formatted_id, 
            cell_line,
            assay_type,
			COMPOUND_STATUS,
            project_name_ro,
            POWER(10, AVG(LOG(10, CASE WHEN IC90 > 0 THEN IC90 ELSE NULL END))) as P90, -- IC90
			NULL AS P,
            MAX(ic50) AS R, -- IC50
			STDDEV(CASE WHEN ic50 > 0 THEN ic50 ELSE NULL END) AS s1,
			round(STDDEV(CASE WHEN ic50 > 0 THEN ic50 ELSE NULL END), 2 - 1 - floor(LOG(10, nullif(STDDEV(CASE WHEN ic50 > 0 THEN ic50 ELSE NULL END), 0)))) AS s2,
            POWER(10, AVG(LOG(10,CASE WHEN MIN > 0 THEN MIN ELSE NULL END))) AS q, -- MIN
			0 AS C,
            COUNT(formatted_id) AS D
        FROM ds3_userdata.smarca2_registry_summary
		WHERE COMPOUND_STATUS IS NOT NULL
        GROUP BY formatted_id, cell_line, assay_type, project_name_ro,COMPOUND_STATUS))) SUMM
    ON t1.formatted_id  =  summ.formatted_id
	
	LEFT JOIN
		(SELECT
            FORMATTED_ID,
			ASSAY_TYPE,
			CELL_LINE,
			TARGET,
            POWER(10, AVG(LOG(10, CASE WHEN DC50_UM > 0 THEN DC50_UM ELSE NULL END))) as p,
			STDDEV(CASE WHEN DC50_UM > 0 THEN DC50_UM ELSE NULL END) AS s1,
			round(STDDEV(CASE WHEN DC50_UM > 0 THEN DC50_UM ELSE NULL END), 2 - 1 - floor(LOG(10, nullif(STDDEV(CASE WHEN DC50_UM > 0 THEN DC50_UM ELSE NULL END), 0)))) AS s2,
			POWER(10, AVG(LOG(10, CASE WHEN DMAX_PCT > 0 THEN DMAX_PCT ELSE NULL END))) as pdmax,
            COUNT(formatted_id) AS c
        FROM ds3_userdata.SMARCA_DEG_NEW
        GROUP BY FORMATTED_ID, CELL_LINE, ASSAY_TYPE, TARGET) T9
		ON t1.formatted_id  =  T9.formatted_id
	LEFT JOIN
		(SELECT
            FORMATTED_ID,
			CELL_LINE,
			COMPOUND_STATUS,
            POWER(10, AVG(LOG(10, CASE WHEN ic50 > 0 THEN ic50 ELSE NULL END))) as p,
			STDDEV(CASE WHEN ic50 > 0 THEN ic50 ELSE NULL END) AS s1,
			round(STDDEV(CASE WHEN ic50 > 0 THEN ic50 ELSE NULL END), 2 - 1 - floor(LOG(10, nullif(STDDEV(CASE WHEN ic50 > 0 THEN ic50 ELSE NULL END), 0)))) AS s2,
            COUNT(formatted_id) AS c
        FROM ds3_userdata.SMARCA2_REGISTRY_SUMMARY
        GROUP BY FORMATTED_ID,CELL_LINE,COMPOUND_STATUS) T12
		ON t1.formatted_id  =  T12.formatted_id
	LEFT JOIN
		(SELECT
            FORMATTED_ID,
			ASSAY_TYPE,
			CELL_LINE,
            POWER(10, AVG(LOG(10, VMAX_HR_1))) as p,
			POWER(10, AVG(LOG(10, KU_UM))) as q,
			POWER(10, AVG(LOG(10, VMAX_KU_UM_1HR_1))) as r,
			STDDEV(VMAX_HR_1) AS s1,
			STDDEV(KU_UM) AS q1,
			STDDEV(VMAX_KU_UM_1HR_1) AS r1,
			round(STDDEV(VMAX_HR_1), 2 - 1 - floor(LOG(10, nullif(STDDEV(VMAX_HR_1), 0)))) AS s2,
			round(STDDEV(KU_UM), 2 - 1 - floor(LOG(10, nullif(STDDEV(KU_UM), 0)))) AS q2,
			round(STDDEV(VMAX_KU_UM_1HR_1), 2 - 1 - floor(LOG(10, nullif(STDDEV(VMAX_KU_UM_1HR_1), 0)))) AS r2,
            COUNT(formatted_id) AS c
        FROM ds3_userdata.SMARCA2_KINETIC
        GROUP BY FORMATTED_ID,ASSAY_TYPE,CELL_LINE) T13
		ON t1.formatted_id  =  T13.formatted_id
	LEFT JOIN
	    (SELECT 
            formatted_id, 
            cell_line,
            assay_type,
            project_name_ro,
            COUNT(formatted_id) AS D
        FROM ds3_userdata.smarca2_registry_summary
        GROUP BY formatted_id, cell_line, assay_type, project_name_ro) SUMM1

		ON T1.FORMATTED_ID = SUMM1.FORMATTED_ID and SUMM.cell_line=SUMM1.cell_line AND SUMM.assay_type=SUMM1.assay_type

)
GROUP BY x01_formatted_id
