CREATE TABLE `Participant`(
    `participant_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `subject_id` VARCHAR(4) NOT NULL,
    `age` DOUBLE NULL,
    `group` INT NULL,
    `sex` INT NULL,
    `is_active` BOOLEAN NOT NULL
);
CREATE TABLE `Visit`(
    `visit_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `participant_id` INT NOT NULL,
    `type` VARCHAR(255) NOT NULL,
    `height` DOUBLE NOT NULL,
    `weight` DOUBLE NOT NULL
);
CREATE TABLE `Participant_Diagnostic_Criteria`(
    `participant_diagnostic_criteria_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `participant_id` INT NOT NULL,
    `diagnostic_criteria_id` INT NOT NULL,
    `met` BOOLEAN NOT NULL
);
CREATE TABLE `Ethnicity_Group`(
    `ethnicity_group_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `group_name` VARCHAR(60) NOT NULL
);
CREATE TABLE `Ethnicity_Subtype`(
    `ethnicity_subtype_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `ethnicity_group_id` INT NOT NULL,
    `subtype_name` VARCHAR(100) NOT NULL
);
CREATE TABLE `Participant_Ethnicity`(
    `participant_ethnicity_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `participant_id` INT NOT NULL,
    `ethnicity_subtype_id` INT NOT NULL
);
CREATE TABLE `Medication`(
    `medication_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `medication_category_id` INT NOT NULL,
    `name` VARCHAR(30) NULL,
    `potency` VARCHAR(20) NULL,
    `units` VARCHAR(10) NULL,
    `frequency` VARCHAR(40) NULL
);
CREATE TABLE `Participant_Medication`(
    `participant_medication_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `participant_id` INT NOT NULL,
    `medication_id` INT NOT NULL,
    `sequence` INT NOT NULL
);
CREATE TABLE `Domain`(
    `domain_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL COMMENT 'Unique'
);
CREATE TABLE `Assessment`(
    `assessment_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `domain_id` INT NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `coding` VARCHAR(10) NOT NULL
);
CREATE TABLE `Visit_Measurement`(
    `visit_measurement_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `visit_id` INT NOT NULL,
    `measurement_id` INT NOT NULL,
    `value` VARCHAR(50) NULL
);
CREATE TABLE `Measurement`(
    `measurement_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `assessment_id` INT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `description` VARCHAR(255) NULL,
    `unit` VARCHAR(35) NULL
);
CREATE TABLE `Diagnostic_Criteria`(
    `diagnostic_criteria_id` INT NOT NULL,
    `criteria` VARCHAR(150) NOT NULL,
    `notes` VARCHAR(255) NULL,
    PRIMARY KEY(`diagnostic_criteria_id`)
);
CREATE TABLE `Comorbidity`(
    `comorbidity_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL
);
CREATE TABLE `Participant_Comorbidity`(
    `participant_comorbidity_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `participant_id` INT NOT NULL,
    `comorbidity_id` INT NOT NULL,
    `has_comorbidity` VARCHAR(10) NULL
);
CREATE TABLE `Medication_Category`(
    `medication_category_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `category` VARCHAR(40) NOT NULL
);
ALTER TABLE
    `Measurement` ADD CONSTRAINT `measurement_assessment_id_foreign` FOREIGN KEY(`assessment_id`) REFERENCES `Assessment`(`assessment_id`);
ALTER TABLE
    `Participant_Ethnicity` ADD CONSTRAINT `participant_ethnicity_ethnicity_subtype_id_foreign` FOREIGN KEY(`ethnicity_subtype_id`) REFERENCES `Ethnicity_Subtype`(`ethnicity_subtype_id`);
ALTER TABLE
    `Participant_Diagnostic_Criteria` ADD CONSTRAINT `participant_diagnostic_criteria_participant_id_foreign` FOREIGN KEY(`participant_id`) REFERENCES `Participant`(`participant_id`);
ALTER TABLE
    `Participant_Ethnicity` ADD CONSTRAINT `participant_ethnicity_participant_id_foreign` FOREIGN KEY(`participant_id`) REFERENCES `Participant`(`participant_id`);
ALTER TABLE
    `Visit` ADD CONSTRAINT `visit_participant_id_foreign` FOREIGN KEY(`participant_id`) REFERENCES `Participant`(`participant_id`);
ALTER TABLE
    `Ethnicity_Subtype` ADD CONSTRAINT `ethnicity_subtype_ethnicity_group_id_foreign` FOREIGN KEY(`ethnicity_group_id`) REFERENCES `Ethnicity_Group`(`ethnicity_group_id`);
ALTER TABLE
    `Visit_Measurement` ADD CONSTRAINT `visit_measurement_measurement_id_foreign` FOREIGN KEY(`measurement_id`) REFERENCES `Measurement`(`measurement_id`);
ALTER TABLE
    `Assessment` ADD CONSTRAINT `assessment_domain_id_foreign` FOREIGN KEY(`domain_id`) REFERENCES `Domain`(`domain_id`);
ALTER TABLE
    `Visit_Measurement` ADD CONSTRAINT `visit_measurement_visit_id_foreign` FOREIGN KEY(`visit_id`) REFERENCES `Visit`(`visit_id`);
ALTER TABLE
    `Participant_Medication` ADD CONSTRAINT `participant_medication_participant_id_foreign` FOREIGN KEY(`participant_id`) REFERENCES `Participant`(`participant_id`);
ALTER TABLE
    `Medication` ADD CONSTRAINT `medication_medication_category_id_foreign` FOREIGN KEY(`medication_category_id`) REFERENCES `Medication_Category`(`medication_category_id`);
ALTER TABLE
    `Participant_Medication` ADD CONSTRAINT `participant_medication_medication_id_foreign` FOREIGN KEY(`medication_id`) REFERENCES `Medication`(`medication_id`);
ALTER TABLE
    `Participant_Comorbidity` ADD CONSTRAINT `participant_comorbidity_comorbidity_id_foreign` FOREIGN KEY(`comorbidity_id`) REFERENCES `Comorbidity`(`comorbidity_id`);
ALTER TABLE
    `Participant_Diagnostic_Criteria` ADD CONSTRAINT `participant_diagnostic_criteria_diagnostic_criteria_id_foreign` FOREIGN KEY(`diagnostic_criteria_id`) REFERENCES `Diagnostic_Criteria`(`diagnostic_criteria_id`);
ALTER TABLE
    `Participant_Comorbidity` ADD CONSTRAINT `participant_comorbidity_participant_id_foreign` FOREIGN KEY(`participant_id`) REFERENCES `Participant`(`participant_id`);