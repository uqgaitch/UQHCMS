USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeaveConnectToOrigLastDayOfWork_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[tvHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeaveConnectToOrigLastDayOfWork_Sel]  AS
SELECT         WD.HRDC019_EmployeeLeaveOfAbsence.EmployeeID, HRDC019_EmployeeLeaveOfAbsence_1.zLastDayOfWork, WD.HRDC019_EmployeeLeaveOfAbsence.zLastDayOfWork AS zLastDayOfWorkNew, 
                         HRDC019_EmployeeLeaveOfAbsence_1.FirstDayOfLeave, HRDC019_EmployeeLeaveOfAbsence_1.EstimatedLastDayOfLeave
FROM            WD.HRDC019_EmployeeLeaveOfAbsence INNER JOIN
                         WD.HRDC019_EmployeeLeaveOfAbsence AS HRDC019_EmployeeLeaveOfAbsence_1 ON WD.HRDC019_EmployeeLeaveOfAbsence.EmployeeID = HRDC019_EmployeeLeaveOfAbsence_1.EmployeeID AND 
                         WD.HRDC019_EmployeeLeaveOfAbsence.EstimatedLastDayOfLeave = HRDC019_EmployeeLeaveOfAbsence_1.zLastDayOfWork

GO
