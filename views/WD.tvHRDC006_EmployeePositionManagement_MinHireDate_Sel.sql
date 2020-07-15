USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC006_EmployeePositionManagement_MinHireDate_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[tvHRDC006_EmployeePositionManagement_MinHireDate_Sel]  AS
SELECT EmployeeID, MIN(HireDate) AS HireDate
FROM   WD.HRDC006_EmployeePositionManagement
WHERE (zEmpOnSecondment IS NULL)
GROUP BY EmployeeID







GO
