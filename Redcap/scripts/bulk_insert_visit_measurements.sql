INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sbfa_twel_det2
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_twel_det2'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sbfa_arm_flux1
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_arm_flux1'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sbfa_arm_flux2
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_arm_flux2'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sbfa_arm_flux3
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_arm_flux3'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sbfa_arm_cur
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_arm_cur'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sbfa_temp
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_temp'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sbfa_humidity
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_humidity'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sbfa_ph_det
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_ph_det'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sbfa_ph1
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_ph1'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sbfa_ph2
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_ph2'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sbfa_ph3
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_ph3'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.se_easi
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'se_easi'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.poem_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'poem_score'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.bmsi_adverse_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'bmsi_adverse_score'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.bmsi_capable_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'bmsi_capable_score'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.bmsi_response_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'bmsi_response_score'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.btms_bm_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'btms_bm_score'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.btms_bthreat_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'btms_bthreat_score'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.btms_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'btms_tscore'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.vas_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'vas_score'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.skinqol_used
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'skinqol_used'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.skinqol_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'skinqol_score'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sdc_srbd_scale
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_srbd_scale'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sdc_sleepiness_scale
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_sleepiness_scale'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sdc_restless_leg_scale
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_restless_leg_scale'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sdc_mtainsc
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_mtainsc'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sdc_mtainsc_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_mtainsc_tscore'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sdsc_breath
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_breath'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sdc_breath_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_breath_tscore'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sdsc_arousal
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_arousal'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sdc_arousal_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_arousal_tscore'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sdsc_transit
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_transit'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sdc_transit_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_transit_tscore'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sdsc_somnol
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_somnol'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sdc_somnol_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_somnol_tscore'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sdsc_hyper
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_hyper'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sdc_hyper_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_hyper_tscore'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sdsc_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_tscore'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.sdsc_total_t_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_total_t_score'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.ehi_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'ehi_tscore'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.wasi_fsiq4
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'wasi_fsiq4'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.GNG_RT_GOS
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'GNG_RT_GOS'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.GNG_SD_GOS
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'GNG_SD_GOS'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.GNG_PI_ALL
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'GNG_PI_ALL'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.GNG_AG_PR
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'GNG_AG_PR'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.CPT_OM_ALL
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'CPT_OM_ALL'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.CPT_PRE_ALL
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'CPT_PRE_ALL'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.CPT_CM_ALL
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'CPT_CM_ALL'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.CPT_MRT_ALL
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'CPT_MRT_ALL'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.CPT_SD_ALL
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'CPT_SD_ALL'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.STR_RTCONGR
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'STR_RTCONGR'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.STR_SDCONGR
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'STR_SDCONGR'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.STR_PM_ALL
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'STR_PM_ALL'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.STR_RT_EFF
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'STR_RT_EFF'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.TD_ERR
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'TD_ERR'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.MCVT_OM
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'MCVT_OM'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.MCVT_COM
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'MCVT_COM'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.COMP_PREM
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'COMP_PREM'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.COMP_MRT
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'COMP_MRT'
UNION ALL
SELECT v.visit_id, m.measurement_id, vs.COMP_CV
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'COMP_CV';