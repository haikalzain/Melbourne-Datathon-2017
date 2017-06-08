/*------------------------------------------
Melbourne Datathon 2017

Some SQL that will load all the data into
an SQL Server database
--------------------------------------------*/


CREATE TABLE transactions
(
	Patient_ID	int
,	Store_ID	smallint
,	Prescriber_ID	int
,	Drug_ID	smallint
,	SourceSystem_Code	varchar(1)
,	Prescription_Week	DATE
,	Dispense_Week	DATE
,	Drug_Code	varchar(37)
,	NHS_Code	varchar(6)
,	IsDeferredScript	tinyint
,	Script_Qty	smallint
,	Dispensed_Qty	smallint
,	MaxDispense_Qty	smallint
,	PatientPrice_Amt	float
,	WholeSalePrice_Amt	float
,	GovernmentReclaim_Amt	float
,	RepeatsTotal_Qty	smallint
,	RepeatsLeft_Qty	smallint
,	StreamlinedApproval_Code	smallint
);
----------------------------
-- PATIENTS
----------------------------

CREATE TABLE patients
(
	Patient_ID	int
,	gender	varchar(1)
,	year_of_birth	smallint
,	postcode	varchar(4) 
);

CREATE TABLE stores
(
	Store_ID	smallint
,	StateCode	varchar(3)
,	postcode	varchar(4)
);




----------------------------
-- DRUGS
----------------------------

CREATE TABLE Drug_LookUp
(
	MasterProductID	smallint
,	MasterProductCode	varchar(9)
,	MasterProductFullName	varchar(61)
,	BrandName	varchar(30)
,	FormCode	varchar(10)
,	StrengthCode	varchar(21)
,	PackSizeNumber	smallint
,	GenericIngredientName	varchar(30)
,	EthicalSubCategoryName	varchar(21)
,	EthicalCategoryName	varchar(16)
,	ManufacturerCode	varchar(9)
,	ManufacturerName	varchar(27)
,	ManufacturerGroupID	smallint
,	ManufacturerGroupCode	varchar(43)
,	ChemistListPrice	float
,	ATCLevel5Code	varchar(7)
,	ATCLevel4Code	varchar(5)
,	ATCLevel3Code	varchar(4)
,	ATCLevel2Code	varchar(3)
,	ATCLevel1Code	varchar(2)
);




----------------------------
-- CHRONIC ILLNESS
----------------------------

CREATE TABLE ChronicIllness_LookUp
(
	ChronicIllness	varchar(44)
,	MasterProductID	smallint
,	MasterProductFullName	varchar(59)
);

----------------------------
-- ATC
----------------------------

CREATE TABLE ATC_LookUp
(
	ATCLevel1Code	varchar(2)
,	ATCLevel1Name	varchar(63)
,	ATCLevel2Code	varchar(3)
,	ATCLevel2Name	varchar(64)
,	ATCLevel3Code	varchar(4)
,	ATCLevel3Name	varchar(71)
,	ATCLevel4Code	varchar(5)
,	ATCLevel4Name	varchar(92)
,	ATCLevel5Code	varchar(7)
,	ATCLevel5Name	varchar(78)
);


