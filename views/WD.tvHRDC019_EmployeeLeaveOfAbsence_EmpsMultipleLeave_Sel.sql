USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC019_EmployeeLeaveOfAbsence_EmpsMultipleLeave_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[tvHRDC019_EmployeeLeaveOfAbsence_EmpsMultipleLeave_Sel]  AS
select employeeid, count(*) as Occurrences from wd.HRDC019_EmployeeLeaveOfAbsence
group by EmployeeID
having count(*) > 1
GO
