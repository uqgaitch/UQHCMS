USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC006_EmployeePositionManagement_AdditionalPosition_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- changed for E2E loads

ALTER view [WD].[trHRDC006_EmployeePositionManagement_AdditionalPosition_UpdSel]  AS
SELECT WD.HRDC006_EmployeePositionManagement.AdditionalPosition, 'Y' AS AdditionalPositionNew,
WD.HRDC006_EmployeePositionManagement.EmployeeID, WD.HRDC006_EmployeePositionManagement.HireDate
FROM   WD.tvHRDC006_EmployeePositionManagement_MinHireDate_Sel INNER JOIN
             WD.HRDC006_EmployeePositionManagement ON WD.tvHRDC006_EmployeePositionManagement_MinHireDate_Sel.EmployeeID = WD.HRDC006_EmployeePositionManagement.EmployeeID AND 
             WD.tvHRDC006_EmployeePositionManagement_MinHireDate_Sel.HireDate < WD.HRDC006_EmployeePositionManagement.HireDate
and zEmpOnSecondment is null




GO
