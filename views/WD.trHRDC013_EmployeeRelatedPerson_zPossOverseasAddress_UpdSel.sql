USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC013_EmployeeRelatedPerson_zPossOverseasAddress_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trHRDC013_EmployeeRelatedPerson_zPossOverseasAddress_UpdSel]  AS
SELECT zPossOverseasAddress, 'X' AS zPossOverseasAddressNew, HomeAddressCountryISOCode
FROM   WD.HRDC013_EmployeeRelatedPerson
WHERE (NOT (HomeAddressCountryISOCode IN (N'AU', N'AUS')))
GO
