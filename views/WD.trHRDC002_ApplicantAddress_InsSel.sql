USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC002_ApplicantAddress_InsSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trHRDC002_ApplicantAddress_InsSel]  AS
select 
WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey as EmployeeID, 
WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey, 'AURION' as zSource, getdate() as zLoadDate
from WD.svEmpScope_UniqueWAMIKey_Sel 







GO
