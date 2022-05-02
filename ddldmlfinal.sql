/*dropping tables if they exist*/
DROP TABLE project; 

DROP TABLE experiment; 

DROP TABLE run; 

DROP TABLE organisms; 

DROP TABLE sample; 

DROP TABLE phylum; 

/*DDL to create tables*/
CREATE TABLE project (title VARCHAR(30),  center VARCHAR(30),  project_id VARCHAR(30) NOT NULL,  PRIMARY KEY(project_id));

CREATE TABLE experiment (experiment_id VARCHAR(30) NOT NULL, sample_id VARCHAR(30) NOT NULL, run_id VARCHAR(30) NOT NULL, platform VARCHAR(30), model VARCHAR(30), organism VARCHAR(30), sequence_type VARCHAR(30), PRIMARY KEY(experiment_id)); 

CREATE TABLE run(run_id VARCHAR(30) NOT NULL, read_count INT, base_count INT); 

CREATE TABLE organisms(run_id VARCHAR(30) NOT NULL, feature_id VARCHAR(50), kingdom VARCHAR(30), phylum VARCHAR(30), class VARCHAR(30), orders VARCHAR(30), family VARCHAR(30), genus VARCHAR(30), species VARCHAR(30), confidence DOUBLE(11,10)); 

CREATE TABLE sample(sample_id VARCHAR(30) NOT NULL, acid_reflux TINYTEXT, acne_medication TINYTEXT, acne_medication_otc TINYTEXT, add_adhd TINYTEXT, age_cat TINYTEXT, age_corrected TINYTEXT, age_years TINYTEXT, alcohol_consumption TINYTEXT, alcohol_frequency TINYTEXT, alcohol_types TINYTEXT, alcohol_types_beercider TINYTEXT, alcohol_types_red_wine TINYTEXT, alcohol_types_sour_beers TINYTEXT, alcohol_types_spiritshard_alcohol TINYTEXT, alcohol_types_unspecified TINYTEXT, alcohol_types_white_wine TINYTEXT, allergic_to TINYTEXT, allergic_to_i_have_no_food_allergies_that_i_know_of TINYTEXT, allergic_to_other TINYTEXT, allergic_to_peanuts TINYTEXT, allergic_to_shellfish TINYTEXT, allergic_to_tree_nuts TINYTEXT, allergic_to_unspecified TINYTEXT, altitude TINYTEXT, alzheimers TINYTEXT, anonymized_name TINYTEXT, antibiotic_history TINYTEXT, appendix_removed TINYTEXT, artificial_sweeteners TINYTEXT, asd TINYTEXT, assigned_from_geo TINYTEXT, autoimmune TINYTEXT, birth_year TINYTEXT, bmi TINYTEXT, bmi_cat TINYTEXT, bmi_corrected TINYTEXT, body_habitat TINYTEXT, body_product TINYTEXT, body_site TINYTEXT, bowel_movement_frequency TINYTEXT, bowel_movement_quality TINYTEXT, breastmilk_formula_ensure TINYTEXT, cancer TINYTEXT, cancer_treatment TINYTEXT, cardiovascular_disease TINYTEXT, cat TINYTEXT, cdiff TINYTEXT, census_region TINYTEXT, chickenpox TINYTEXT, clinical_condition TINYTEXT, collection_date TINYTEXT, collection_month TINYTEXT, collection_season TINYTEXT, collection_time TINYTEXT, collection_timestamp TINYTEXT, consume_animal_products_abx TINYTEXT, contraceptive TINYTEXT, cosmetics_frequency TINYTEXT, country TINYTEXT, country_of_birth TINYTEXT, country_residence TINYTEXT, csection TINYTEXT, deodorant_use TINYTEXT, depression_bipolar_schizophrenia TINYTEXT, depth TINYTEXT, diabetes TINYTEXT, diabetes_type TINYTEXT, diet_type TINYTEXT, dna_extracted TINYTEXT, dog TINYTEXT, dominant_hand TINYTEXT, drinking_water_source TINYTEXT, drinks_per_session TINYTEXT, economic_region TINYTEXT, elevation TINYTEXT, env_biome TINYTEXT, env_feature TINYTEXT, env_material TINYTEXT, env_package TINYTEXT, epilepsy_or_seizure_disorder TINYTEXT, exercise_frequency TINYTEXT, exercise_location TINYTEXT, fed_as_infant TINYTEXT, fermented_plant_frequency TINYTEXT, flossing_frequency TINYTEXT, flu_vaccine_date TINYTEXT, frozen_dessert_frequency TINYTEXT, fruit_frequency TINYTEXT, fungal_overgrowth TINYTEXT, geo_loc_name TINYTEXT, gluten TINYTEXT, has_physical_specimen TINYTEXT, height_cm TINYTEXT, height_units TINYTEXT, high_fat_red_meat_frequency TINYTEXT, homecooked_meals_frequency TINYTEXT, host_common_name TINYTEXT, host_subject_id TINYTEXT, host_taxid TINYTEXT, ibd TINYTEXT, ibd_diagnosis TINYTEXT, ibd_diagnosis_refined TINYTEXT, ibs TINYTEXT, kidney_disease TINYTEXT, lactose TINYTEXT, last_move TINYTEXT, last_travel TINYTEXT, latitude TINYTEXT, level_of_education TINYTEXT, liver_disease TINYTEXT, livingwith TINYTEXT, longitude TINYTEXT, lowgrain_diet_type TINYTEXT, lung_disease TINYTEXT, meat_eggs_frequency TINYTEXT, mental_illness TINYTEXT, mental_illness_type TINYTEXT, mental_illness_type_anorexia_nervosa TINYTEXT, mental_illness_type_bipolar_disorder TINYTEXT, mental_illness_type_bulimia_nervosa TINYTEXT, mental_illness_type_depression TINYTEXT, mental_illness_type_ptsd_posttraumatic_stress_disorder TINYTEXT, mental_illness_type_schizophrenia TINYTEXT, mental_illness_type_substance_abuse TINYTEXT, mental_illness_type_unspecified TINYTEXT, migraine TINYTEXT, milk_cheese_frequency TINYTEXT, milk_substitute_frequency TINYTEXT, multivitamin TINYTEXT, nail_biter TINYTEXT, non_food_allergies TINYTEXT, non_food_allergies_beestings TINYTEXT, non_food_allergies_drug_eg_penicillin TINYTEXT, non_food_allergies_pet_dander TINYTEXT, non_food_allergies_poison_ivyoak TINYTEXT, non_food_allergies_sun TINYTEXT, non_food_allergies_unspecified TINYTEXT, olive_oil TINYTEXT, one_liter_of_water_a_day_frequency TINYTEXT, other_supplement_frequency TINYTEXT, pets_other TINYTEXT, physical_specimen_location TINYTEXT, physical_specimen_remaining TINYTEXT, pku TINYTEXT, pool_frequency TINYTEXT, poultry_frequency TINYTEXT, pregnant TINYTEXT, prepared_meals_frequency TINYTEXT, probiotic_frequency TINYTEXT, public TINYTEXT, race TINYTEXT, ready_to_eat_meals_frequency TINYTEXT, red_meat_frequency TINYTEXT, roommates TINYTEXT, roommates_in_study TINYTEXT, salted_snacks_frequency TINYTEXT, sample_type TINYTEXT, seafood_frequency TINYTEXT, seasonal_allergies TINYTEXT, sex TINYTEXT, sibo TINYTEXT, skin_condition TINYTEXT, sleep_duration TINYTEXT, smoking_frequency TINYTEXT, softener TINYTEXT, specialized_diet TINYTEXT, specialized_diet_exclude_dairy TINYTEXT, specialized_diet_exclude_nightshades TINYTEXT, specialized_diet_exclude_refined_sugars TINYTEXT, specialized_diet_fodmap TINYTEXT, specialized_diet_halaal TINYTEXT, specialized_diet_i_do_not_eat_a_specialized_diet TINYTEXT, specialized_diet_kosher TINYTEXT, specialized_diet_modified_paleo_diet TINYTEXT, specialized_diet_other_restrictions_not_described_here TINYTEXT, specialized_diet_paleodiet_or_primal_diet TINYTEXT, specialized_diet_raw_food_diet TINYTEXT, specialized_diet_unspecified TINYTEXT, specialized_diet_westenprice_or_other_lowgrain_low_processed_fo TINYTEXT, state TINYTEXT, subset_age TINYTEXT, subset_antibiotic_history TINYTEXT, subset_bmi TINYTEXT, subset_diabetes TINYTEXT, subset_healthy TINYTEXT, subset_ibd TINYTEXT, sugar_sweetened_drink_frequency TINYTEXT, sugary_sweets_frequency TINYTEXT, survey_id TINYTEXT, teethbrushing_frequency TINYTEXT, thyroid TINYTEXT, title TINYTEXT, tonsils_removed TINYTEXT, types_of_plants TINYTEXT, vegetable_frequency TINYTEXT, vitamin_b_supplement_frequency TINYTEXT, vitamin_d_supplement_frequency TINYTEXT, vivid_dreams TINYTEXT, weight_change TINYTEXT, weight_kg TINYTEXT, weight_units TINYTEXT, whole_eggs TINYTEXT, whole_grain_frequency TINYTEXT, PRIMARY KEY(sample_id)); 

CREATE TABLE phylum (name VARCHAR(30), nucleotide INT(10), protein INT(10), pubmed INT(10), PRIMARY KEY(name)); 


/*DML to insert data into tables*/
INSERT INTO project VALUES ('American Gut Project', 'UCSDMI', 'PRJEB11419'); 


INSERT INTO experiment VALUES ('ERX1152774', 'SAMEA3607589', 'ERR1072624', 'ILLUMINA', 'Illumina MiSeq', 'human gut metagenome', '16SrRNA'); 

INSERT INTO experiment VALUES ('ERX1152775', 'SAMEA3607590', 'ERR1072625', 'ILLUMINA', 'Illumina MiSeq', 'human gut metagenome', '16SrRNA'); 

INSERT INTO experiment VALUES ('ERX1152776', 'SAMEA3607591', 'ERR1072626', 'ILLUMINA', 'Illumina MiSeq', 'human gut metagenome', '16SrRNA'); 

INSERT INTO experiment VALUES ('ERX1152777', 'SAMEA3607592', 'ERR1072627', 'ILLUMINA', 'Illumina MiSeq', 'human gut metagenome', '16SrRNA'); 

INSERT INTO experiment VALUES ('ERX1152778', 'SAMEA3607593', 'ERR1072628', 'ILLUMINA', 'Illumina MiSeq', 'human gut metagenome', '16SrRNA'); 

INSERT INTO experiment VALUES ('ERX1152779', 'SAMEA3607594', 'ERR1072629', 'ILLUMINA', 'Illumina MiSeq', 'human gut metagenome', '16SrRNA'); 

INSERT INTO experiment VALUES ('ERX1152780', 'SAMEA3607595', 'ERR1072630', 'ILLUMINA', 'Illumina MiSeq', 'human gut metagenome', '16SrRNA'); 

INSERT INTO experiment VALUES ('ERX1152781', 'SAMEA3607596', 'ERR1072631', 'ILLUMINA', 'Illumina MiSeq', 'human gut metagenome', '16SrRNA'); 

INSERT INTO experiment VALUES ('ERX1152782', 'SAMEA3607597', 'ERR1072632', 'ILLUMINA', 'Illumina MiSeq', 'human gut metagenome', '16SrRNA'); 

INSERT INTO experiment VALUES ('ERX1152783', 'SAMEA3607598', 'ERR1072633', 'ILLUMINA', 'Illumina MiSeq', 'human gut metagenome', '16SrRNA'); 


INSERT INTO run VALUES ('ERR1072624', '17838', '2688198');

INSERT INTO run VALUES ('ERR1072625', '21267', '3198000');

INSERT INTO run VALUES ('ERR1072626', '25136', '3787410'); 

INSERT INTO run VALUES ('ERR1072627', '8842', '1326488');

INSERT INTO run VALUES ('ERR1072628', '24918', '3753923');

INSERT INTO run VALUES ('ERR1072629', '23830', '3586791');

INSERT INTO run VALUES ('ERR1072630', '27661', '4159463');

INSERT INTO run VALUES ('ERR1072631', '38829', '5848848'); 

INSERT INTO run VALUES ('ERR1072632', '27158', '4092953');

INSERT INTO run VALUES ('ERR1072633', '44388', '6666347');


LOAD DATA LOCAL INFILE 'ERR1072624.csv' INTO TABLE organisms FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n' IGNORE 1 ROWS; 

LOAD DATA LOCAL INFILE 'ERR1072625.csv' INTO TABLE organisms FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n' IGNORE 1 ROWS; 

LOAD DATA LOCAL INFILE 'ERR1072626.csv' INTO TABLE organisms FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n' IGNORE 1 ROWS; 

LOAD DATA LOCAL INFILE 'ERR1072627.csv' INTO TABLE organisms FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n' IGNORE 1 ROWS; 

LOAD DATA LOCAL INFILE 'ERR1072628.csv' INTO TABLE organisms FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n' IGNORE 1 ROWS; 

LOAD DATA LOCAL INFILE 'ERR1072629.csv' INTO TABLE organisms FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n' IGNORE 1 ROWS; 

LOAD DATA LOCAL INFILE 'ERR1072630.csv' INTO TABLE organisms FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n' IGNORE 1 ROWS; 

LOAD DATA LOCAL INFILE 'ERR1072631.csv' INTO TABLE organisms FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n' IGNORE 1 ROWS; 

LOAD DATA LOCAL INFILE 'ERR1072632.csv' INTO TABLE organisms FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n' IGNORE 1 ROWS; 

LOAD DATA LOCAL INFILE 'ERR1072633.csv' INTO TABLE organisms FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n' IGNORE 1 ROWS; 


LOAD DATA LOCAL INFILE 'SAMEA3607589.csv' INTO TABLE sample FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n'; 

LOAD DATA LOCAL INFILE 'SAMEA3607590.csv' INTO TABLE sample FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n'; 

LOAD DATA LOCAL INFILE 'SAMEA3607591.csv' INTO TABLE sample FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n'; 

LOAD DATA LOCAL INFILE 'SAMEA3607592.csv' INTO TABLE sample FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n'; 

LOAD DATA LOCAL INFILE 'SAMEA3607593.csv' INTO TABLE sample FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n'; 

LOAD DATA LOCAL INFILE 'SAMEA3607594.csv' INTO TABLE sample FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n'; 

LOAD DATA LOCAL INFILE 'SAMEA3607595.csv' INTO TABLE sample FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n'; 

LOAD DATA LOCAL INFILE 'SAMEA3607596.csv' INTO TABLE sample FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n'; 

LOAD DATA LOCAL INFILE 'SAMEA3607597.csv' INTO TABLE sample FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n'; 

LOAD DATA LOCAL INFILE 'SAMEA3607598.csv' INTO TABLE sample FIELDS TERMINATED BY ',' ENCLOSED BY '' LINES TERMINATED BY '\n'; 

INSERT INTO phylum VALUES ('Firmicutes', 14620361, 200965350, 412693); 

INSERT INTO phylum VALUES ('Bacteroidetes', 1927837, 35467468, 83477); 

INSERT INTO phylum VALUES ('Proteobacteria', 43336872, 470927919, 724437); 

INSERT INTO phylum VALUES ('Actinobacteria', 5817562, 106533595, 263375); 

INSERT INTO phylum VALUES ('Tenericutes', 153846, 1069205, 47081); 

INSERT INTO phylum VALUES ('Verrucomicrobia', 211813, 2006960, 16294); 

INSERT INTO phylum VALUES ('Cyanobacteria', 587444, 6621142, 37117); 

INSERT INTO phylum VALUES ('Lentisphaerae', 21539, 118539, 1441); 

INSERT INTO phylum VALUES ('Euryarchaeota', 321857, 5044999, 28023); 

INSERT INTO phylum VALUES ('Synergistetes', 27028, 162533, 2761); 

INSERT INTO phylum VALUES ('Fusobacteria', 77246, 842900, 19784); 


