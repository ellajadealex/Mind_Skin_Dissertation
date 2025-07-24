
SELECT v.visit_id, m.measurement_id, s.sbfa_twel_det2 AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_twel_det2'
WHERE s.sbfa_twel_det2 IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_arm_flux1 AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_arm_flux1'
WHERE s.sbfa_arm_flux1 IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_arm_flux2 AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_arm_flux2'
WHERE s.sbfa_arm_flux2 IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_arm_flux3 AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_arm_flux3'
WHERE s.sbfa_arm_flux3 IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_arm_cur AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_arm_cur'
WHERE s.sbfa_arm_cur IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_temp AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_temp'
WHERE s.sbfa_temp IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_humidity AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_humidity'
WHERE s.sbfa_humidity IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_ph_det AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_ph_det'
WHERE s.sbfa_ph_det IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_ph1 AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_ph1'
WHERE s.sbfa_ph1 IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_ph2 AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_ph2'
WHERE s.sbfa_ph2 IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_ph3 AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_ph3'
WHERE s.sbfa_ph3 IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.se_easi AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'se_easi'
WHERE s.se_easi IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.poem_score AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'poem_score'
WHERE s.poem_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.bmsi_adverse_score AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'bmsi_adverse_score'
WHERE s.bmsi_adverse_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.bmsi_capable_score AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'bmsi_capable_score'
WHERE s.bmsi_capable_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.bmsi_response_score AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'bmsi_response_score'
WHERE s.bmsi_response_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.btms_bm_score AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'btms_bm_score'
WHERE s.btms_bm_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.btms_bthreat_score AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'btms_bthreat_score'
WHERE s.btms_bthreat_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.btms_tscore AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'btms_tscore'
WHERE s.btms_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.vas_score AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'vas_score'
WHERE s.vas_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.skinqol_used AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'skinqol_used'
WHERE s.skinqol_used IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.skinqol_score AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'skinqol_score'
WHERE s.skinqol_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_srbd_scale AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_srbd_scale'
WHERE s.sdc_srbd_scale IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_sleepiness_scale AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_sleepiness_scale'
WHERE s.sdc_sleepiness_scale IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_restless_leg_scale AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_restless_leg_scale'
WHERE s.sdc_restless_leg_scale IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_mtainsc AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_mtainsc'
WHERE s.sdc_mtainsc IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_mtainsc_tscore AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_mtainsc_tscore'
WHERE s.sdc_mtainsc_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdsc_breath AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_breath'
WHERE s.sdsc_breath IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_breath_tscore AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_breath_tscore'
WHERE s.sdc_breath_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdsc_arousal AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_arousal'
WHERE s.sdsc_arousal IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_arousal_tscore AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_arousal_tscore'
WHERE s.sdc_arousal_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdsc_transit AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_transit'
WHERE s.sdsc_transit IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_transit_tscore AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_transit_tscore'
WHERE s.sdc_transit_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdsc_somnol AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_somnol'
WHERE s.sdsc_somnol IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_somnol_tscore AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_somnol_tscore'
WHERE s.sdc_somnol_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdsc_hyper AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_hyper'
WHERE s.sdsc_hyper IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_hyper_tscore AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_hyper_tscore'
WHERE s.sdc_hyper_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdsc_tscore AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_tscore'
WHERE s.sdsc_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdsc_total_t_score AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_total_t_score'
WHERE s.sdsc_total_t_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.ehi_tscore AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'ehi_tscore'
WHERE s.ehi_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.wasi_fsiq4 AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'wasi_fsiq4'
WHERE s.wasi_fsiq4 IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.GNG_RT_GOS AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'GNG_RT_GOS'
WHERE s.GNG_RT_GOS IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.GNG_SD_GOS AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'GNG_SD_GOS'
WHERE s.GNG_SD_GOS IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.GNG_PI_ALL AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'GNG_PI_ALL'
WHERE s.GNG_PI_ALL IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.GNG_AG_PR AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'GNG_AG_PR'
WHERE s.GNG_AG_PR IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.CPT_OM_ALL AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'CPT_OM_ALL'
WHERE s.CPT_OM_ALL IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.CPT_PRE_ALL AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'CPT_PRE_ALL'
WHERE s.CPT_PRE_ALL IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.CPT_CM_ALL AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'CPT_CM_ALL'
WHERE s.CPT_CM_ALL IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.CPT_MRT_ALL AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'CPT_MRT_ALL'
WHERE s.CPT_MRT_ALL IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.CPT_SD_ALL AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'CPT_SD_ALL'
WHERE s.CPT_SD_ALL IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.STR_RTCONGR AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'STR_RTCONGR'
WHERE s.STR_RTCONGR IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.STR_SDCONGR AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'STR_SDCONGR'
WHERE s.STR_SDCONGR IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.STR_PM_ALL AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'STR_PM_ALL'
WHERE s.STR_PM_ALL IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.STR_RT_EFF AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'STR_RT_EFF'
WHERE s.STR_RT_EFF IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.TD_ERR AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'TD_ERR'
WHERE s.TD_ERR IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.MCVT_OM AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'MCVT_OM'
WHERE s.MCVT_OM IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.MCVT_COM AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'MCVT_COM'
WHERE s.MCVT_COM IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.COMP_PREM AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'COMP_PREM'
WHERE s.COMP_PREM IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.COMP_MRT AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'COMP_MRT'
WHERE s.COMP_MRT IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.COMP_CV AS value
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'COMP_CV'
WHERE s.COMP_CV IS NOT NULL;