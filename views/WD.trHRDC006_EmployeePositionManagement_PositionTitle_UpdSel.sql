USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC006_EmployeePositionManagement_PositionTitle_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC006_EmployeePositionManagement_PositionTitle_UpdSel] AS
SELECT WD.HRDC006_EmployeePositionManagement.PositionTitle, 
AUR.T101_POSITION.T101F045_POSITION_TITLE AS PositionTitleNew, 
WD.HRDC006_EmployeePositionManagement.Location, 
AUR.T101_POSITION.T101F035_LOCATION_CODE AS LocationNew, 
WD.HRDC006_EmployeePositionManagement.DefaultWeeklyHours, 
AUR.T101_POSITION.T101F095_HOURS_PER_WEEK AS DefaultWeeklyHoursNew, WD.HRDC006_EmployeePositionManagement.zDefaultWeeklyHours ,
SUBSTRING(AUR.T101_POSITION.T101F095_HOURS_PER_WEEK,1,2)+'.'+replace(left(round((100.0 / 60.0) *substring(AUR.T101_POSITION.T101F095_HOURS_PER_WEEK,4,2) ,2),2),'.','0') AS zDefaultWeeklyHoursNew, WD.EmpScope.zPositionToBeCreated, WD.HRDC006_EmployeePositionManagement.JobPositionID
FROM   WD.HRDC006_EmployeePositionManagement INNER JOIN
             WD.EmpScope ON WD.HRDC006_EmployeePositionManagement.JobPositionID = WD.EmpScope.PositionID INNER JOIN
             AUR.T101_POSITION ON WD.EmpScope.zAurionPositionID = AUR.T101_POSITION.T101F005_POSITION_NO
WHERE (WD.EmpScope.zPositionToBeCreated = N'X')
GO
