USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC006_EmployeePositionManagement_MultipleEmps_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[tvHRDC006_EmployeePositionManagement_MultipleEmps_Sel] AS

SELECT a.EmployeeID, COUNT(*) AS Occurrences
FROM   WD.HRDC006_EmployeePositionManagement a
WHERE (a.zExclude IS NULL) and a.LoadPhase = '1' and a.AdditionalPosition is null
GROUP BY a.EmployeeID
HAVING (COUNT(*) > 1) 


GO
