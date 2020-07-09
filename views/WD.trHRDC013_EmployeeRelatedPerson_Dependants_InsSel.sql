USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC013_EmployeeRelatedPerson_Dependants_InsSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC013_EmployeeRelatedPerson_Dependants_InsSel]  AS
SELECT        WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey as EmployeeID
,'D' + cast(T004F005_WAMI_KEY as varchar(8)) + '-' + cast(row_number() over (partition by T004F005_WAMI_KEY order by T004F010_TRANS_NO) as varchar(3)) as DependantBeneficiaryID
,AUR.T004_DEPENDANTS.T004F020_RELATIONSHIP_CODE as RelatedPersonRelationshipName
,'TITLE' as PrefixType
, case 
	when 
		AUR.T004_DEPENDANTS.T004F025_NAME like 'MR %' or
		AUR.T004_DEPENDANTS.T004F025_NAME like 'MR.%' or
		AUR.T004_DEPENDANTS.T004F025_NAME like 'MS %' or
		AUR.T004_DEPENDANTS.T004F025_NAME like 'MRS %' or
		AUR.T004_DEPENDANTS.T004F025_NAME like 'MRS.%' or
		AUR.T004_DEPENDANTS.T004F025_NAME like 'DR %' or 
		AUR.T004_DEPENDANTS.T004F025_NAME like 'PROFESSOR %' or
		AUR.T004_DEPENDANTS.T004F025_NAME like 'PROF %' or
		AUR.T004_DEPENDANTS.T004F025_NAME like 'PROF.%' or
		AUR.T004_DEPENDANTS.T004F025_NAME like 'DR.%' 
		then SUBSTRING(AUR.T004_DEPENDANTS.T004F025_NAME, 1, CHARINDEX(' ', AUR.T004_DEPENDANTS.T004F025_NAME) - 1)
		 else '' end as Prefix

, case 
	when 
		AUR.T004_DEPENDANTS.T004F025_NAME not like 'MR %' and
		AUR.T004_DEPENDANTS.T004F025_NAME not like 'MR.%' and
		AUR.T004_DEPENDANTS.T004F025_NAME not like 'MS %' and
		AUR.T004_DEPENDANTS.T004F025_NAME not like 'MISS%' and
		AUR.T004_DEPENDANTS.T004F025_NAME not like 'MRS %' and
		AUR.T004_DEPENDANTS.T004F025_NAME not like 'MRS.%' and
		AUR.T004_DEPENDANTS.T004F025_NAME not like 'DR %' and
		AUR.T004_DEPENDANTS.T004F025_NAME not like 'PROFESSOR %' and
		AUR.T004_DEPENDANTS.T004F025_NAME not like 'PROF %' and
		AUR.T004_DEPENDANTS.T004F025_NAME not like 'PROF.%' and
		AUR.T004_DEPENDANTS.T004F025_NAME not like 'DR.%' 
		then SUBSTRING(AUR.T004_DEPENDANTS.T004F025_NAME, 1, CHARINDEX(' ', AUR.T004_DEPENDANTS.T004F025_NAME) )

		when AUR.T004_DEPENDANTS.T004F025_NAME like 'MR %' or 
		AUR.T004_DEPENDANTS.T004F025_NAME like 'MR.%' or
		AUR.T004_DEPENDANTS.T004F025_NAME like 'MS %' or
		AUR.T004_DEPENDANTS.T004F025_NAME like 'MRS %' or
		AUR.T004_DEPENDANTS.T004F025_NAME like 'MISS %' or
		AUR.T004_DEPENDANTS.T004F025_NAME like 'DR %' or 
		AUR.T004_DEPENDANTS.T004F025_NAME like 'PROFESSOR %' or 
		AUR.T004_DEPENDANTS.T004F025_NAME like 'PROF %' or
		AUR.T004_DEPENDANTS.T004F025_NAME like 'PROF.%' or
		AUR.T004_DEPENDANTS.T004F025_NAME like 'DR.%' then
		ltrim(substring(AUR.T004_DEPENDANTS.T004F025_NAME,
			charindex(' ',AUR.T004_DEPENDANTS.T004F025_NAME), 
			CHARINDEX(' ',ltrim(SUBSTRING(AUR.T004_DEPENDANTS.T004F025_NAME,
			charindex(' ',AUR.T004_DEPENDANTS.T004F025_NAME),
			LEN(AUR.T004_DEPENDANTS.T004F025_NAME)-charindex(' ',AUR.T004_DEPENDANTS.T004F025_NAME)))) ))
		 else '' end as FirstName

,ltrim(RIGHT(AUR.T004_DEPENDANTS.T004F025_NAME, CHARINDEX(' ', REVERSE(AUR.T004_DEPENDANTS.T004F025_NAME)) )) AS LastName
,convert(nvarchar,AUR.T004_DEPENDANTS.T004F040_DATE_OF_BIRTH , 23) as DateOfBirth
,AUR.T004_DEPENDANTS.T004F035_GENDER as Gender
,'DEPENDANT' as zType
,AUR.T004_DEPENDANTS.T004F025_NAME as zName
,WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey AS zWAMIKey
,'AURION' as zSource
,getdate() as zLoadDate
FROM            WD.svEmpScope_UniqueWAMIKey_Sel INNER JOIN
                         AUR.T004_DEPENDANTS ON WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey = AUR.T004_DEPENDANTS.T004F005_WAMI_KEY
						 where AUR.T004_DEPENDANTS.T004F020_RELATIONSHIP_CODE is not null
						
						
GO
