USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC013_EmployeeRelatedPerson_BlankAddressAsNotComplete_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trHRDC013_EmployeeRelatedPerson_BlankAddressAsNotComplete_UpdSel]  AS
SELECT        HomeAddressCountryISOCode, NULL AS HomeAddressCountryISOCodeNew, 
HomeAddressLine1, NULL AS HomeAddressLine1New, 
zHomeAddressLine1, NULL AS zHomeAddressLine1New, 
HomeMunicipality, NULL AS HomeMunicipalityNew, HomeRegion, NULL AS HomeRegionNew, 
                         HomePostalCode, NULL AS HomePostalCodeNew, HomePrimary, NULL AS HomePrimaryNew,
						 zAddressNotComplete, 'X' as zAddressNotCompleteNew
FROM            WD.HRDC013_EmployeeRelatedPerson
WHERE        (HomeAddressCountryISOCode IS NOT NULL) AND ((HomeAddressLine1 IS NULL) OR
                         (HomeMunicipality IS NULL) OR
                         (HomeRegion IS NULL) OR
                         (HomePostalCode IS NULL) OR zHomeAddressLine1 is null)
						
GO
