USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC006_EmployeePositionManagement_WorkShiftName_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC006_EmployeePositionManagement_WorkShiftName_UpdSel] AS
SELECT WD.EmpScope.zPositionToBeCreated, WD.HRDC006_EmployeePositionManagement.JobPositionID, WD.HRDC006_EmployeePositionManagement.WorkShiftName, WD.WORKSHIFT_TMP.WS_ID AS WorkShiftNameNew
FROM   WD.HRDC006_EmployeePositionManagement INNER JOIN
             WD.EmpScope ON WD.HRDC006_EmployeePositionManagement.JobPositionID = WD.EmpScope.PositionID INNER JOIN
             WD.WORKSHIFT_TMP ON WD.EmpScope.zAurionPositionID = WD.WORKSHIFT_TMP.PosNum
WHERE (WD.EmpScope.zPositionToBeCreated = N'X')
GO
