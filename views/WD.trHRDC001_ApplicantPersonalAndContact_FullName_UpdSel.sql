USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_FullName_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_FullName_UpdSel] AS
SELECT        WD.HRDC001_ApplicantPersonalAndContact.zGivenNames, AUR.T000_WAMI.T000F020_GIVEN_NAMES AS zGivenNamesNew, WD.HRDC001_ApplicantPersonalAndContact.zSurname, 
                         AUR.T000_WAMI.T000F015_SURNAME AS zSurnameNew, WD.HRDC001_ApplicantPersonalAndContact.FullName, SUBSTRING(AUR.T000_WAMI.T000F020_GIVEN_NAMES, 1, CHARINDEX(' ', 
                         AUR.T000_WAMI.T000F020_GIVEN_NAMES + ' ') - 1) + '_' + REPLACE(AUR.T000_WAMI.T000F015_SURNAME, ' ', '_') AS FullNameNew
FROM            WD.HRDC001_ApplicantPersonalAndContact INNER JOIN
                         AUR.T000_WAMI ON WD.HRDC001_ApplicantPersonalAndContact.EmployeeID = AUR.T000_WAMI.T000F005_WAMI_KEY
GO
