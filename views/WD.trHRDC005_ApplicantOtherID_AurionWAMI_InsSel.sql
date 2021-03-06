USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC005_ApplicantOtherID_AurionWAMI_InsSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC005_ApplicantOtherID_AurionWAMI_InsSel] as
SELECT        WAMIKey AS EmployeeID, 
WAMIKey as CustomID1,
'Aurion WAMI' as CustomID1TypeName, 
'Aurion WAMI Key' as CustomID1Description,
cast(GoLiveDate as date) as CustomID1IssuedDate, 
'' as CustomID1ExpirationDate,


WAMIKey AS zWAMIKey, zSource, GETDATE() AS zLoadDate
FROM            WD.svEmpScope_UniqueWAMIKey_Sel cross join
WD.Param
GO
