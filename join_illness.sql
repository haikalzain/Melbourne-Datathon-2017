CREATE TABLE IF NOT EXISTS drugs(
MasterProductID INT,
ChronicIllness TEXT,
ATCLevel5Code TEXT,
EthicalCategoryName TEXT,
EthicalSubCategoryName TEXT


);
--CREATE UNIQUE INDEX product_id_drugs ON drugs(MasterProductID);
INSERT INTO drugs --(MasterProductID, ChronicIllness, ATCLevel5Code)
	SELECT Drug_LookUp.MasterProductID, 
			COALESCE(ChronicIllness, "OTHER") ChronicIllness,
			ATCLevel5Code,
			EthicalCategoryName,
			EthicalSubCategoryName
		FROM Drug_LookUp LEFT OUTER JOIN ChronicIllness_LookUp
			ON Drug_LookUp.MasterProductID = ChronicIllness_LookUp.MasterProductID;

			