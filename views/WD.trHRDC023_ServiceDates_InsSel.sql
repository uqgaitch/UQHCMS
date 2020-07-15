USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC023_ServiceDates_InsSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC023_ServiceDates_InsSel]  AS
SELECT 
WamiKey  as EmployeeContingentWorkerID,
WamiKey as zWamiKey,
'AURION' as zSource,
getdate() as zLoadDate
FROM            wd.svEmpScope_UniqueWAMIKey_Sel 
GO
