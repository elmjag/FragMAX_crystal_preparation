CREATE TABLE IF NOT EXISTS "Project" (
	"Project_Name"	TEXT,
	"Proposal_ID"	TEXT,
	"Project_Description"	TEXT
);
CREATE TABLE IF NOT EXISTS "People" (
	"Forename"	TEXT,
	"Surname"	TEXT,
	"Email"	TEXT,
	"Role"	TEXT,
	"ORCID"	TEXT,
	"Organization_Name"	TEXT,
	"Street"	TEXT,
	"City"	TEXT,
	"ZIP_Code"	TEXT,
	"Country"	TEXT,
	"Phone"	TEXT
);
CREATE TABLE IF NOT EXISTS "CrystalPlate_type" (
	"Plate_Name"	TEXT
);
INSERT INTO CrystalPlate_type VALUES('3-drop_SWISSCI');
CREATE TABLE IF NOT EXISTS "Protein" (
	"Protein_Name"	TEXT,
	"Protein_Acronym"	TEXT,
	"Organsism"	TEXT,
	"Expression_Host"	TEXT,
	"Sequence"	TEXT,
	PRIMARY KEY("Protein_Acronym")
);
CREATE TABLE IF NOT EXISTS "CompoundTable" (
	"Compound_ID"	TEXT,
	"Compound_Name"	TEXT,
	"Vendor_ID"	TEXT,
	"Vendor"	TEXT,
	"Smiles"	TEXT,
	"InChI"	TEXT,
	"CAS"	TEXT,
	PRIMARY KEY("Compound_ID")
);
CREATE TABLE IF NOT EXISTS "CompoundBatchTable" (
	"CompoundBatch_ID"	TEXT,
	"Compound_ID"	TEXT,
	"Library_Name"	TEXT,
	"CompoundPlate_ID"	TEXT,
	"CompoundPlate_Well" TEXT,
	"CompoundPlate_Type" TEXT,
	"State"	TEXT,
	"Solvent"	TEXT,
	"Concentration"	REAL,
	"Comment"	TEXT,
	PRIMARY KEY("CompoundBatch_ID")
);
CREATE TABLE IF NOT EXISTS "MountedCrystals" (
	"Crystal_ID"	TEXT,
	"Pin_Barcode"	TEXT,
	"Puck_Name"	TEXT,
	"Puck_Position"	TEXT,
	"Status"	TEXT,
	"Mount_Date"	TEXT,
	"Soak_ID"	TEXT,
	PRIMARY KEY("Crystal_ID")
);
CREATE TABLE IF NOT EXISTS "CrystalForm" (
	"Crystal_Form"	TEXT,
	"Protein_Acronym"	TEXT,
	"Space_Group"	TEXT,
	"A"	REAL,
	"B"	REAL,
	"C"	REAL,
	"Alpha"	REAL,
	"Beta"	REAL,
	"Gamma"	REAL,
	PRIMARY KEY("Crystal_Form")
);
CREATE TABLE IF NOT EXISTS "SpaceGroupTable" (
	"SpaceGroup_Name"	TEXT,
	"SpaceGroup_Number"	INTEGER
);
CREATE TABLE IF NOT EXISTS "MarkedCrystals" (
	"MarkedCrystal_ID"	TEXT,
	"CrystalPlate_Barcode"	TEXT,
	"CrystalPlate_Well"	TEXT,
	"CrystalPlate_Subwell"	TEXT,
	PRIMARY KEY("MarkedCrystal_ID")
);
CREATE TABLE IF NOT EXISTS "SoakPlate" (
	"SoakPlate_Condition_ID"	TEXT,
	"SoakPlate_Name"	TEXT,
	"SoakPlate_Well"	TEXT,
	"SoakPlate_Subwell"	TEXT,
	"CompoundBatch_ID"	TEXT,
	"Plate_Type"	TEXT,
	"CrystalBuffer"	TEXT,
	"CrystalBuffer_Vol"	REAL,
	"Compound_Vol"	REAL,
	PRIMARY KEY("SoakPlate_Condition_ID")
);
CREATE TABLE IF NOT EXISTS "SoakedCrystals" (
	"Soak_ID"	TEXT,
	"MarkedCrystal_ID"	TEXT,
	"SoakPlate_Condition_ID"	TEXT,
	"Soaked"	TEXT,
	"Soak_Date"	TEXT,
	"Soak_Behaviour"	TEXT,
	"SoakBatch_ID"	TEXT,
	PRIMARY KEY("Soak_ID")
);
CREATE TABLE IF NOT EXISTS "CrystalScreen" (
	"CrystalScreen_ID"	TEXT,
	"CrystalScreen_Name"	TEXT,
	"CrystalScreen_Well"	TEXT,
	"CrystalScreen_Condition"	TEXT,
	PRIMARY KEY("CrystalScreen_ID")
);
CREATE TABLE IF NOT EXISTS "CrystalPlate" (
	"CrystalPlate_Barcode"	TEXT,
	"Protein_Acronym"	TEXT,
	"Protein_Concentration"	REAL,
	"CrystalScreen_Name"	TEXT,
	"Protein_Buffer"	TEXT,
	"Temperature"	REAL,
	"Plate_Type"	TEXT,
	"Reservoir_Volume"	REAL,
	"Subwell_A_Vol_Protein"	REAL,
	"Subwell_A_Vol_Reservoir"	REAL,
	"Subwell_A_Vol_Seed"	REAL,
	"Subwell_C_Vol_Protein"	REAL,
	"Subwell_C_Vol_Reservoir"	REAL,
	"Subwell_C_Vol_Seed"	REAL,
	"Subwell_D_Vol_Protein"	REAL,
	"Subwell_D_Vol_Reservoir"	REAL,
	"Subwell_D_Vol_Seed"	REAL,
	PRIMARY KEY("CrystalPlate_barcode")
);
COMMIT;

