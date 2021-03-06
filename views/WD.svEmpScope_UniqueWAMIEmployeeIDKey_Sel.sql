USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[svEmpScope_UniqueWAMIEmployeeIDKey_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[svEmpScope_UniqueWAMIEmployeeIDKey_Sel]
AS
SELECT DISTINCT WAMIKey, EmployeeID, zSource
FROM            WD.EmpScope
WHERE        (zExclude IS NULL) AND (zSource = 'AURION')
GO
