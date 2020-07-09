USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC004_ApplicantBiographic_InsSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC004_ApplicantBiographic_InsSel]  AS
select WAMIKey as EmployeeID, WAMIKey, 'AURION' as zSource, getdate() as zLoadDate 
from [WD].svEmpScope_UniqueWAMIKey_Sel 


GO
