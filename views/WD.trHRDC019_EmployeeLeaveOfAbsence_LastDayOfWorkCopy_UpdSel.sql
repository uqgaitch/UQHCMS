USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC019_EmployeeLeaveOfAbsence_LastDayOfWorkCopy_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER view [WD].[trHRDC019_EmployeeLeaveOfAbsence_LastDayOfWorkCopy_UpdSel]  AS
SELECT        LastDayOfWork, zLastDayOfWork AS LastDayOfWorkNew
FROM            WD.HRDC019_EmployeeLeaveOfAbsence

GO
