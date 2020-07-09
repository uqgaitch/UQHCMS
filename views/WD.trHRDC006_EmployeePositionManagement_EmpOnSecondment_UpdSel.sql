USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC006_EmployeePositionManagement_EmpOnSecondment_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC006_EmployeePositionManagement_EmpOnSecondment_UpdSel]  AS
SELECT WD.HRDC006_EmployeePositionManagement.zEmpOnSecondment, WD.EmpScope.zEmpOnSecondment AS zEmpOnSecondmentNew, WD.HRDC006_EmployeePositionManagement.EmployeeID, WD.HRDC006_EmployeePositionManagement.zEmployeeID
FROM   WD.HRDC006_EmployeePositionManagement INNER JOIN
             WD.EmpScope ON WD.HRDC006_EmployeePositionManagement.EmployeeID = WD.EmpScope.WAMIKey AND WD.HRDC006_EmployeePositionManagement.zEmployeeID = WD.EmpScope.EmployeeID
WHERE (WD.EmpScope.zEmpOnSecondment = N'X')






GO
