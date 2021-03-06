USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC006_EmployeePositionManagement_Location_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC006_EmployeePositionManagement_Location_UpdSel] AS
SELECT WD.HRDC006_EmployeePositionManagement.Location, DD.ddPositionsPES.[Location ID] AS LocationNew, WD.HRDC006_EmployeePositionManagement.JobPositionID
FROM   WD.HRDC006_EmployeePositionManagement INNER JOIN
             DD.ddPositionsPES ON WD.HRDC006_EmployeePositionManagement.JobPositionID = DD.ddPositionsPES.[Back to ToC]
GO
