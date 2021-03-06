USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_LegalMiddleName_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_LegalMiddleName_UpdSel] AS
SELECT LegalFirstName, 
	LegalMiddleName,
	LegalMiddleNameNew
from (
SELECT         WD.HRDC001_ApplicantPersonalAndContact.LegalFirstName,
WD.HRDC001_ApplicantPersonalAndContact.LegalMiddleName,
ltrim(substring(AUR.T000_WAMI.T000F020_GIVEN_NAMES,CHARINDEX(' ', AUR.T000_WAMI.T000F020_GIVEN_NAMES) +1 , len(AUR.T000_WAMI.T000F020_GIVEN_NAMES))) as LegalMiddleNameNew
-- OLD VERSION - Changed for the above code - PR - 18.03.2020
--LTRIM(SUBSTRING(AUR.T000_WAMI.T000F020_GIVEN_NAMES, CHARINDEX(' ', AUR.T000_WAMI.T000F020_GIVEN_NAMES), CHARINDEX(' ', 
--                        LTRIM(SUBSTRING(AUR.T000_WAMI.T000F020_GIVEN_NAMES, CHARINDEX(' ', AUR.T000_WAMI.T000F020_GIVEN_NAMES), LEN(AUR.T000_WAMI.T000F020_GIVEN_NAMES) - CHARINDEX(' ', 
--                         AUR.T000_WAMI.T000F020_GIVEN_NAMES)))))) AS LegalMiddleNameNew, WD.HRDC001_ApplicantPersonalAndContact.EmployeeID
FROM            WD.HRDC001_ApplicantPersonalAndContact INNER JOIN
                         AUR.T000_WAMI ON WD.HRDC001_ApplicantPersonalAndContact.EmployeeID = AUR.T000_WAMI.T000F005_WAMI_KEY
) A
where LegalFirstName <> LegalMiddleNameNew
GO
