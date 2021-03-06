USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC006_EmployeePositionManagement_zSubs_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC006_EmployeePositionManagement_zSubs_UpdSel]  AS
SELECT  WD.HRDC006_EmployeePositionManagement.EmployeeID, WD.HRDC006_EmployeePositionManagement.zEmployeeID, WD.HRDC006_EmployeePositionManagement.zSubs, 'X' AS zSubsNew, WD.EmpScope.PositionID
FROM   WD.HRDC006_EmployeePositionManagement INNER JOIN
             WD.EmpScope ON WD.HRDC006_EmployeePositionManagement.EmployeeID = WD.EmpScope.WAMIKey AND WD.HRDC006_EmployeePositionManagement.zEmployeeID = WD.EmpScope.EmployeeID AND 
             WD.HRDC006_EmployeePositionManagement.JobPositionID = WD.EmpScope.PositionID
WHERE (WD.EmpScope.zEmpOnSecondment = N'X') AND (WD.HRDC006_EmployeePositionManagement.zEmpOnSecondment = N'X') AND (WD.EmpScope.zSubs = N'X')






GO
