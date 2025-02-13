Study Summary:TALL,select a.protocol||':'||a.protocol_id "Protocol",a.descr "Description",(select pref_name||' '||lastname from gateway.ROLES_NONTP_PERSONNEL where isid=upper(b.isid))||' ('||b.isid||')' "Creator",nvl(to_char(b.CREATED_DATE,'-DATEFORMAT- HH24:MI:SS'), '') "Created", nvl(to_char(b.COMPLETED_DATE,'-DATEFORMAT- HH24:MI:SS'), '') "Completed",'-USERFIRST- -USERLAST- (-USER-)' "Counter-signer",to_char(sysdate,'-DATEFORMAT- HH24:MI:SS') "Countersigned" from DS3_USERDATA.TM_PROTOCOLS a, DS3_USERDATA.TM_experiments b where a.protocol_id=b.protocol_id  and b.experiment_id=?


_DOTSPLIT_Results:NORMAL,
SELECT P.PLATE_NUMBER as Plate_No ,T3.DISPLAY_NAME AS ID , 

 R.MOLFILE AS STRUCTURES ,
 CASE
        WHEN substr(t1.reported_result, 1, 1) IN ('>', '<') THEN
            substr(t1.reported_result, 1, 1) || 
            TO_CHAR(ROUND(TO_NUMBER(substr(t1.reported_result, 2, 10)) * 1000, 4), 'FM9999999999990.0000')
        ELSE
            TO_CHAR(ROUND(TO_NUMBER(t1.reported_result) * 1000, 4), 'FM9999999999990.0000')
    END AS REL_IC50_NM,
  round(T1.PARAM1,3)  Min__ ,
 round(T1.PARAM2,3)  max____,
 round(T1.PARAM3,3) slope__  ,
  round(T1.PARAM4,4) ic50___  ,
round(T8.RESULT,4) ic90___, 
  
T7.DATA AS GRAPH ,

  T5.LABEL        AS CLASSIFICATION,
CASE T1.status
    WHEN 1
    THEN 'VALIDATED'
    WHEN 2
    THEN 'INVALIDATED'
    WHEN 3
    THEN 'PUBLISHED'
    ELSE 'NOT VALIDATED'
  END STATUS   
FROM DS3_USERDATA.SU_ANALYSIS_RESULTS T1 ,
  DS3_USERDATA.SU_GROUPINGS T2 ,
  DS3_USERDATA.SU_SAMPLES T3 ,
  DS3_USERDATA.SU_CLASSIFICATION_RULES T5 ,
  DS3_USERDATA.SU_ANALYSIS_LAYERS T6 ,
  DS3_USERDATA.SU_CHARTS T7,
  DS3_USERDATA.SU_DERIVED_RESULTS T8,
  C$PINPOINT.REG_DATA R,
DS3_USERDATA.SU_PLATES P
WHERE T1.LAYER_ID    = T6.ID
AND T1.RULE_ID       = T5.ID
AND T1.GROUP_ID      = T2.ID
AND T2.SAMPLE_ID  = T3.ID
AND T7.RESULT_ID     = T1.ID
AND R.FORMATTED_ID = substr(T3.display_name,1,10)
AND P.PLATE_SET=T2.PLATE_SET
AND T8.RESULT_ID=T1.ID
AND P.EXPERIMENT_ID=T2.EXPERIMENT_ID
AND T2.EXPERIMENT_ID=?
order by P.PLATE_NUMBER, T6.NAME,T3.DISPLAY_NAME

_DOTSPLIT_Well Results:NORMAL,
select
p.plate_number,
p.name plate_name,
s.display_name,
round(ws.conc,5) conc,
ws.conc_unit,
wl.name layer,
wr.value result,
CASE wr.status
    WHEN 1
    THEN 'VALIDATED'
    WHEN 2
    THEN 'INVALIDATED'
    WHEN 3
    THEN 'PUBLISHED'
    ELSE 'NOT VALIDATED'
  END VALIDATED
from ds3_userdata.su_well_results wr
join ds3_userdata.su_well_layers wl on wl.id=wr.layer_id
join ds3_userdata.su_wells w on w.id=wr.well_id
join ds3_userdata.su_plates p on p.id=w.plate_id
join ds3_userdata.su_well_samples ws on ws.well_id=w.id
join ds3_userdata.su_samples s on s.id=ws.sample_id
where s.display_name!='None' and WL.EXPERIMENT_ID=?
order by wl.name,p.plate_number, w.rowval, w.colval
