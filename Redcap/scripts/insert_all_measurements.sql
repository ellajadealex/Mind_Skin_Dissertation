-- ----------------------------------------
-- sbfa_twel_det2
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sbfa_twel_det2
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_twel_det2';

-- ----------------------------------------
-- sbfa_arm_flux1
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sbfa_arm_flux1
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_arm_flux1';

-- ----------------------------------------
-- sbfa_arm_flux2
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sbfa_arm_flux2
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_arm_flux2';

-- ----------------------------------------
-- sbfa_arm_flux3
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sbfa_arm_flux3
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_arm_flux3';

-- ----------------------------------------
-- sbfa_arm_cur
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sbfa_arm_cur
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_arm_cur';

-- ----------------------------------------
-- sbfa_temp
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sbfa_temp
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_temp';

-- ----------------------------------------
-- sbfa_humidity
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sbfa_humidity
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_humidity';

-- ----------------------------------------
-- sbfa_ph_det
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sbfa_ph_det
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_ph_det';

-- ----------------------------------------
-- sbfa_ph1
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sbfa_ph1
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_ph1';

-- ----------------------------------------
-- sbfa_ph2
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sbfa_ph2
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_ph2';

-- ----------------------------------------
-- sbfa_ph3
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sbfa_ph3
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sbfa_ph3';

-- ----------------------------------------
-- se_easi
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.se_easi
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'se_easi';

-- ----------------------------------------
-- poem_score
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.poem_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'poem_score';

-- ----------------------------------------
-- bmsi_adverse_score
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.bmsi_adverse_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'bmsi_adverse_score';

-- ----------------------------------------
-- bmsi_capable_score
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.bmsi_capable_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'bmsi_capable_score';

-- ----------------------------------------
-- bmsi_response_score
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.bmsi_response_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'bmsi_response_score';

-- ----------------------------------------
-- btms_bm_score
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.btms_bm_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'btms_bm_score';

-- ----------------------------------------
-- btms_bthreat_score
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.btms_bthreat_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'btms_bthreat_score';

-- ----------------------------------------
-- btms_tscore
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.btms_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'btms_tscore';

-- ----------------------------------------
-- vas_score
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.vas_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'vas_score';

-- ----------------------------------------
-- skinqol_used
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.skinqol_used
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'skinqol_used';

-- ----------------------------------------
-- skinqol_score
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.skinqol_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'skinqol_score';

-- ----------------------------------------
-- sdc_srbd_scale
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sdc_srbd_scale
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_srbd_scale';

-- ----------------------------------------
-- sdc_sleepiness_scale
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sdc_sleepiness_scale
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_sleepiness_scale';

-- ----------------------------------------
-- sdc_restless_leg_scale
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sdc_restless_leg_scale
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_restless_leg_scale';

-- ----------------------------------------
-- sdc_mtainsc
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sdc_mtainsc
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_mtainsc';

-- ----------------------------------------
-- sdc_mtainsc_tscore
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sdc_mtainsc_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_mtainsc_tscore';

-- ----------------------------------------
-- sdsc_breath
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sdsc_breath
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_breath';

-- ----------------------------------------
-- sdc_breath_tscore
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sdc_breath_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_breath_tscore';

-- ----------------------------------------
-- sdsc_arousal
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sdsc_arousal
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_arousal';

-- ----------------------------------------
-- sdc_arousal_tscore
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sdc_arousal_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_arousal_tscore';

-- ----------------------------------------
-- sdsc_transit
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sdsc_transit
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_transit';

-- ----------------------------------------
-- sdc_transit_tscore
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sdc_transit_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdc_transit_tscore';

-- ----------------------------------------
-- sdsc_somnol
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sdsc_somnol
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_somnol';

-- ----------------------------------------
-- sdsc_somnol_tscore
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sdsc_somnol_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_somnol_tscore';

-- ----------------------------------------
-- sdsc_hyper
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sdsc_hyper
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_hyper';

-- ----------------------------------------
-- sdsc_hyper_tscore
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sdsc_hyper_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_hyper_tscore';

-- ----------------------------------------
-- sdsc_tscore
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sdsc_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_tscore';

-- ----------------------------------------
-- sdsc_total_t_score
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.sdsc_total_t_score
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'sdsc_total_t_score';

-- ----------------------------------------
-- ehi_tscore
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.ehi_tscore
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'ehi_tscore';

-- ----------------------------------------
-- wasi_fsiq4
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.wasi_fsiq4
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'wasi_fsiq4';

-- ----------------------------------------
-- GNG_RT_GOS
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.GNG_RT_GOS
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'GNG_RT_GOS';

-- ----------------------------------------
-- GNG_SD_GOS
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.GNG_SD_GOS
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'GNG_SD_GOS';

-- ----------------------------------------
-- GNG_PI_ALL
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.GNG_PI_ALL
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'GNG_PI_ALL';

-- ----------------------------------------
-- GNG_AG_PR
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.GNG_AG_PR
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'GNG_AG_PR';

-- ----------------------------------------
-- CPT_OM_ALL
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.CPT_OM_ALL
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'CPT_OM_ALL';

-- ----------------------------------------
-- CPT_PRE_ALL
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.CPT_PRE_ALL
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'CPT_PRE_ALL';

-- ----------------------------------------
-- CPT_CM_ALL
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.CPT_CM_ALL
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'CPT_CM_ALL';

-- ----------------------------------------
-- CPT_MRT_ALL
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.CPT_MRT_ALL
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'CPT_MRT_ALL';

-- ----------------------------------------
-- CPT_SD_ALL
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.CPT_SD_ALL
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'CPT_SD_ALL';

-- ----------------------------------------
-- STR_RTCONGR
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.STR_RTCONGR
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'STR_RTCONGR';

-- ----------------------------------------
-- STR_SDCONGR
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.STR_SDCONGR
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'STR_SDCONGR';

-- ----------------------------------------
-- STR_PM_ALL
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.STR_PM_ALL
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'STR_PM_ALL';

-- ----------------------------------------
-- STR_RT_EFF
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.STR_RT_EFF
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'STR_RT_EFF';

-- ----------------------------------------
-- TD_ERR
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.TD_ERR
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'TD_ERR';

-- ----------------------------------------
-- MCVT_OM
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.MCVT_OM
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'MCVT_OM';

-- ----------------------------------------
-- MCVT_COM
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.MCVT_COM
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'MCVT_COM';

-- ----------------------------------------
-- COMP_PREM
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.COMP_PREM
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'COMP_PREM';

-- ----------------------------------------
-- COMP_MRT
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.COMP_MRT
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'COMP_MRT';

-- ----------------------------------------
-- COMP_CV
-- ----------------------------------------
INSERT INTO Visit_Measurement (visit_id, measurement_id, value)
SELECT v.visit_id, m.measurement_id, vs.COMP_CV
FROM Visit_Measurement_Staging_Wide vs
JOIN Participant p ON vs.subject_id = p.subject_id
JOIN Visit v ON v.participant_id = p.participant_id AND vs.type = v.type
JOIN Measurement m ON m.coding = 'COMP_CV';
