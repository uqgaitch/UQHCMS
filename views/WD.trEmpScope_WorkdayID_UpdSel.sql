USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_WorkdayID_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trEmpScope_WorkdayID_UpdSel]  AS
SELECT WD.EmpScope.WorkdayID, WD.EmpscopeWorkdayMapping.WorkdayID AS WorkdayIDNew
FROM   WD.EmpScope INNER JOIN
             WD.EmpscopeWorkdayMapping ON WD.EmpScope.WAMIKey = WD.EmpscopeWorkdayMapping.WAMIKey
GO
