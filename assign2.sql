
-- Name: Alivia Ankrum
-- EMAIL: aankrum@unomaha.edu
-- Class: BIOI 4870/CSCI 8876, Spring 2022 
-- Assignment #: 2
-- 
-- Honor Pledge: On my honor as a student of the University of Nebraska at 
-- Omaha, I have neither given nor received unauthorized help on 
-- this programming assignment.
-- 
-- Partners: NONE
-- 
-- Sources: MySQL 8.0 Reference Manual "Chapter 11 Data Types",
-- w3schools.com "SQL CHECK Constraint'

CREATE TABLE protein_records (
	accession_number VARCHAR(30) NOT NULL, 
	organism VARCHAR(50) NOT NULL, 
	gene VARCHAR(50) NOT NULL, 
	isoform VARCHAR(30), 
	sequence VARCHAR(500) NOT NULL, 
	PRIMARY KEY (accession_number)
); 

INSERT INTO protein_records VALUES (
	'NP_001285984.1', 
	'Drosophila melanogaster', 
	'cytochrome c proximal', 
	'B', 
	'MGVPAGDVEKGKKLFVQRCAQCHTVEAGGKHKVGPNLHGLIGRKTGQAAGFAYTDANKAKGITWNEDTLFEYLENPKKYIPGTKMIFAGLKKPNERGDLIAYLKSATK'
); 

INSERT INTO protein_records VALUES (
	'NP_477176.1', 
	'Drosophila melanogaster', 
	'cytochrome c proximal', 
	'A', 
	'MGVPAGDVEKGKKLFVQRCAQCHTVEAGGKHKVGPNLHGLIGRKTGQAAGFAYTDANKAKGITWNEDTLFEYLENPKKYIPGTKMIFAGLKKPNERGDLIAYLKSATK'
);

INSERT INTO protein_records VALUES (
	'AHN54498.1', 
	'Drosophila melanogaster', 
	'cytochrome c proximal', 
	'B', 
	'MGVPAGDVEKGKKLFVQRCAQCHTVEAGGKHKVGPNLHGLIGRKTGQAAGFAYTDANKAKGITWNEDTLFEYLENPKKYIPGTKMIFAGLKKPNERGDLIAYLKSATK'
);

INSERT INTO protein_records VALUES (
	'AAF53554.1', 
	'Drosophila melanogaster', 
	'cytochrome c proximal', 
	'A', 
	'MGVPAGDVEKGKKLFVQRCAQCHTVEAGGKHKVGPNLHGLIGRKTGQAAGFAYTDANKAKGITWNEDTLFEYLENPKKYIPGTKMIFAGLKKPNERGDLIAYLKSATK'
);

INSERT INTO protein_records VALUES (
	'NP_001260509.1', 
	'Drosophila melanogaster', 
	'cytochrome c distal', 
	'B', 
	'MGSGDAENGKKIFVQKCAQCHTYEVGGKHKVGPNLGGVVGRKCGTAAGYKYTDANIKKGVTWTEGNLDEYLKDPKKYIPGTKMVFAGLKKAEERADLIAFLKSNK'
);

INSERT INTO protein_records VALUES (
	'NP_477164.1', 
	'Drosophila melanogaster', 
	'cytochrome c distal', 
	'A', 
	'MGSGDAENGKKIFVQKCAQCHTYEVGGKHKVGPNLGGVVGRKCGTAAGYKYTDANIKKGVTWTEGNLDEYLKDPKKYIPGTKMVFAGLKKAEERADLIAFLKSNK'
);

INSERT INTO protein_records VALUES (
	'AGB93044.1', 
	'Drosophila melanogaster', 
	'cytochrome c distal', 
	'B', 
	'MGSGDAENGKKIFVQKCAQCHTYEVGGKHKVGPNLGGVVGRKCGTAAGYKYTDANIKKGVTWTEGNLDEYLKDPKKYIPGTKMVFAGLKKAEERADLIAFLKSNK'
);

INSERT INTO protein_records VALUES (
	'AAF53553.1', 
	'Drosophila melanogaster', 
	'cytochrome c distal', 
	'A', 
	'MGSGDAENGKKIFVQKCAQCHTYEVGGKHKVGPNLGGVVGRKCGTAAGYKYTDANIKKGVTWTEGNLDEYLKDPKKYIPGTKMVFAGLKKAEERADLIAFLKSNK'
);

INSERT INTO protein_records VALUES (
	'AAB72175.1', 
	'Arabidopsis thaliana', 
	'cytochrome C', 
	NULL, 
	'MASFDEAPPGNAKAGEKIFRTKCAQCHTVEAGAGHKQGPNLNGLFGRQSGTTAGYSYSAANKNKAVEWEEKALYDYLLNPKKYIPGTKMVFPGLKKPQDRADLIAYLKESTAPK'
);

INSERT INTO protein_records VALUES (
	'XP_009316014.1', 
	'Trypanosoma grayi', 
	'cytochrome c', 
	NULL, 
	'MPPKAREPLPPGDAVKGEKIFKGRAAQCHTGSKGGANGVGPNLFGIVGRRSGTIEGFSYSKANESSGVVWTPEVLDVYLENPKKFMPGTKMSFAGLKKPQERADLIAYLATLKE'
);

CREATE TABLE dna_rna_link (
	p_accession_number VARCHAR(30) NOT NULL, 
	d_accession_number VARCHAR(30) NOT NULL, 
	p_length INT, 
	curation VARCHAR(30) CHECK (curation = 'provisional' OR curation = 'curated' OR curation = 'refseq'), 
	last_updated DATE
); 

INSERT INTO dna_rna_link VALUES (
	'AAB72175.1', 
	'ATAF000657', 
	114, 
	'provisional', 
	'2007-11-30'
);

INSERT INTO dna_rna_link VALUES (
	'AAF53553.1', 
	'AE014134.6', 
	105, 
	'provisional', 
	'2020-04-20'
);

INSERT INTO dna_rna_link VALUES (
	'AAF53554.1', 
	'AE014134.6', 
	108, 
	'provisional', 
	'2020-04-20'
);

INSERT INTO dna_rna_link VALUES (
	'AGB93044.1', 
	'AE014134.6', 
	105, 
	'provisional', 
	'2020-04-20'
);

INSERT INTO dna_rna_link VALUES (
	'AHN54498.1', 
	'AE014134.6', 
	108, 
	'provisional', 
	'2020-04-20'
);

INSERT INTO dna_rna_link VALUES (
	'NP_001260509.1', 
	'NM_001273580.1', 
	105, 
	'curated', 
	'2020-04-22'
);

INSERT INTO dna_rna_link VALUES (
	'NP_001285984.1', 
	'NM_001299055.1', 
	108, 
	'curated', 
	'2020-04-22'
);

INSERT INTO dna_rna_link VALUES (
	'NP_477164.1', 
	'NM_057816.5', 
	105, 
	'curated', 
	'2020-04-22'
);

INSERT INTO dna_rna_link VALUES (
	'NP_477176.1', 
	'NM_057828.4', 
	108, 
	'curated', 
	'2020-04-22'
);

INSERT INTO dna_rna_link VALUES (
	'XP_009316014.1', 
	'XM_009317739.1', 
	114, 
	'refseq', 
	'2015-06-09'
);
