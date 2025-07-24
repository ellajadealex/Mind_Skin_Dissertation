INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
-- Insert measurement values into Visit_Measurement table using coding and visit lookup

SELECT v.visit_id, m.measurement_id, s.sbfa_twel_det2
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_twel_det2'
WHERE s.sbfa_twel_det2 IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_arm_flux1
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_arm_flux1'
WHERE s.sbfa_arm_flux1 IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_arm_flux2
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_arm_flux2'
WHERE s.sbfa_arm_flux2 IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_arm_flux3
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_arm_flux3'
WHERE s.sbfa_arm_flux3 IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_arm_cur
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_arm_cur'
WHERE s.sbfa_arm_cur IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_temp
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_temp'
WHERE s.sbfa_temp IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_humidity
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_humidity'
WHERE s.sbfa_humidity IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_ph_det
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_ph_det'
WHERE s.sbfa_ph_det IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_ph1
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_ph1'
WHERE s.sbfa_ph1 IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_ph2
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_ph2'
WHERE s.sbfa_ph2 IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sbfa_ph3
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_ph3'
WHERE s.sbfa_ph3 IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.se_easi
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'se_easi'
WHERE s.se_easi IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.poem_score
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'poem_score'
WHERE s.poem_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.bmsi_adverse_score
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'bmsi_adverse_score'
WHERE s.bmsi_adverse_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.bmsi_capable_score
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'bmsi_capable_score'
WHERE s.bmsi_capable_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.bmsi_response_score
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'bmsi_response_score'
WHERE s.bmsi_response_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.btms_bm_score
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'btms_bm_score'
WHERE s.btms_bm_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.btms_bthreat_score
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'btms_bthreat_score'
WHERE s.btms_bthreat_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.btms_tscore
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'btms_tscore'
WHERE s.btms_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.vas_score
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'vas_score'
WHERE s.vas_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.skinqol_used
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'skinqol_used'
WHERE s.skinqol_used IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.skinqol_score
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'skinqol_score'
WHERE s.skinqol_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_srbd_scale
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_srbd_scale'
WHERE s.sdc_srbd_scale IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_sleepiness_scale
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_sleepiness_scale'
WHERE s.sdc_sleepiness_scale IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_restless_leg_scale
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_restless_leg_scale'
WHERE s.sdc_restless_leg_scale IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_mtainsc
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_mtainsc'
WHERE s.sdc_mtainsc IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_mtainsc_tscore
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_mtainsc_tscore'
WHERE s.sdc_mtainsc_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdsc_breath
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_breath'
WHERE s.sdsc_breath IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_breath_tscore
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_breath_tscore'
WHERE s.sdc_breath_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdsc_arousal
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_arousal'
WHERE s.sdsc_arousal IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_arousal_tscore
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_arousal_tscore'
WHERE s.sdc_arousal_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdsc_transit
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_transit'
WHERE s.sdsc_transit IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_transit_tscore
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_transit_tscore'
WHERE s.sdc_transit_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdsc_somnol
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_somnol'
WHERE s.sdsc_somnol IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_somnol_tscore
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_somnol_tscore'
WHERE s.sdc_somnol_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdsc_hyper
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_hyper'
WHERE s.sdsc_hyper IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdc_hyper_tscore
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdc_hyper_tscore'
WHERE s.sdc_hyper_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdsc_tscore
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_tscore'
WHERE s.sdsc_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.sdsc_total_t_score
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_total_t_score'
WHERE s.sdsc_total_t_score IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.ehi_tscore
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'ehi_tscore'
WHERE s.ehi_tscore IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.wasi_fsiq4
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'wasi_fsiq4'
WHERE s.wasi_fsiq4 IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.GNG_RT_GOS
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'GNG_RT_GOS'
WHERE s.GNG_RT_GOS IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.GNG_SD_GOS
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'GNG_SD_GOS'
WHERE s.GNG_SD_GOS IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.GNG_PI_ALL
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'GNG_PI_ALL'
WHERE s.GNG_PI_ALL IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.GNG_AG_PR
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'GNG_AG_PR'
WHERE s.GNG_AG_PR IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.CPT_OM_ALL
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'CPT_OM_ALL'
WHERE s.CPT_OM_ALL IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.CPT_PRE_ALL
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'CPT_PRE_ALL'
WHERE s.CPT_PRE_ALL IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.CPT_CM_ALL
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'CPT_CM_ALL'
WHERE s.CPT_CM_ALL IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.CPT_MRT_ALL
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'CPT_MRT_ALL'
WHERE s.CPT_MRT_ALL IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.CPT_SD_ALL
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'CPT_SD_ALL'
WHERE s.CPT_SD_ALL IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.STR_RTCONGR
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'STR_RTCONGR'
WHERE s.STR_RTCONGR IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.STR_SDCONGR
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'STR_SDCONGR'
WHERE s.STR_SDCONGR IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.STR_PM_ALL
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'STR_PM_ALL'
WHERE s.STR_PM_ALL IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.STR_RT_EFF
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'STR_RT_EFF'
WHERE s.STR_RT_EFF IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.TD_ERR
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'TD_ERR'
WHERE s.TD_ERR IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.MCVT_OM
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'MCVT_OM'
WHERE s.MCVT_OM IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.MCVT_COM
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'MCVT_COM'
WHERE s.MCVT_COM IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.COMP_PREM
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'COMP_PREM'
WHERE s.COMP_PREM IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.COMP_MRT
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'COMP_MRT'
WHERE s.COMP_MRT IS NOT NULL
UNION ALL

SELECT v.visit_id, m.measurement_id, s.COMP_CV
FROM Visit_Measurement_Staging_Wide s
JOIN Visit v ON s.subject_id = v.subject_id AND s.type = v.type
JOIN Measurement m ON m.coding = 'COMP_CV'
WHERE s.COMP_CV IS NOT NULL;