USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC002_ApplicantAddressDetails_ReformatConstructedData_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC002_ApplicantAddressDetails_ReformatConstructedData_UpdSel]
AS
SELECT EmployeeID, dbo.PadNum(EmployeeID, 7) AS EmployeeIDNew, 

zAddressLine1, AddressLine1 as zAddressLine1New,
zRegion, Region as zRegionNew,
zPostalCode, PostalCode as zPostalCodeNew,
zWAMIKey, 
dbo.PadNum(EmployeeID, 7) AS zWAMIKeyNew, zSource, 'Constructed' AS zSourceNew, zLoadDate, GETDATE() AS zLoadDateNew
FROM   WD.HRDC002_ApplicantAddress
WHERE (zSource IS NULL)
GO
