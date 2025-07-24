INSERT INTO Participant_Comorbidity (participant_id, comorbidity_id, has_comorbidity)
SELECT p.participant_id, c.comorbidity_id, pcs.mh_asthma
FROM Participant_Comorbidity_Staging pcs
JOIN Participant p ON pcs.subject_id = p.subject_id
JOIN Comorbidity c ON c.coding = 'mh_asthma'
UNION ALL
SELECT p.participant_id, c.comorbidity_id, pcs.mh_rhino
FROM Participant_Comorbidity_Staging pcs
JOIN Participant p ON pcs.subject_id = p.subject_id
JOIN Comorbidity c ON c.coding = 'mh_rhino'
UNION ALL
SELECT p.participant_id, c.comorbidity_id, pcs.mh_fdalle
FROM Participant_Comorbidity_Staging pcs
JOIN Participant p ON pcs.subject_id = p.subject_id
JOIN Comorbidity c ON c.coding = 'mh_fdalle'
UNION ALL
SELECT p.participant_id, c.comorbidity_id, pcs.mh_ctalle
FROM Participant_Comorbidity_Staging pcs
JOIN Participant p ON pcs.subject_id = p.subject_id
JOIN Comorbidity c ON c.coding = 'mh_ctalle'
UNION ALL
SELECT p.participant_id, c.comorbidity_id, pcs.mh_slpdist
FROM Participant_Comorbidity_Staging pcs
JOIN Participant p ON pcs.subject_id = p.subject_id
JOIN Comorbidity c ON c.coding = 'mh_slpdist';