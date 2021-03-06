USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC006_EmployeePositionManagement_BusinessTitle_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC006_EmployeePositionManagement_BusinessTitle_UpdSel] AS
SELECT WD.HRDC006_EmployeePositionManagement.BusinessTitle, AUR.T104_EMPLOYMENT_HISTORY.T104F115_TITLE AS BusinessTitleNew, WD.EmpScope.zPositionToBeCreated, WD.HRDC006_EmployeePositionManagement.JobPositionID
FROM   WD.HRDC006_EmployeePositionManagement INNER JOIN
             WD.EmpScope ON WD.HRDC006_EmployeePositionManagement.JobPositionID = WD.EmpScope.PositionID INNER JOIN
             AUR.T104_EMPLOYMENT_HISTORY ON WD.EmpScope.zAurionPositionID = AUR.T104_EMPLOYMENT_HISTORY.T104F040_POSITION_NO
WHERE (WD.EmpScope.zPositionToBeCreated = N'X')
GO
