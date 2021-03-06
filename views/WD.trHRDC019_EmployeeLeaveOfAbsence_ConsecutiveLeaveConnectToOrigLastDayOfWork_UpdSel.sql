USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeaveConnectToOrigLastDayOfWork_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeaveConnectToOrigLastDayOfWork_UpdSel]  AS
SELECT        WD.HRDC019_EmployeeLeaveOfAbsence.zLastDayOfWork, WD.tvHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeaveConnectToOrigLastDayOfWork_Sel.zLastDayOfWorkNew, 
                         WD.HRDC019_EmployeeLeaveOfAbsence.EmployeeID
FROM            WD.HRDC019_EmployeeLeaveOfAbsence INNER JOIN
                         WD.tvHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeaveConnectToOrigLastDayOfWork_Sel ON 
                         WD.HRDC019_EmployeeLeaveOfAbsence.EmployeeID = WD.tvHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeaveConnectToOrigLastDayOfWork_Sel.EmployeeID AND 
                         WD.HRDC019_EmployeeLeaveOfAbsence.EstimatedLastDayOfLeave = WD.tvHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeaveConnectToOrigLastDayOfWork_Sel.EstimatedLastDayOfLeave AND 
                         WD.HRDC019_EmployeeLeaveOfAbsence.FirstDayOfLeave = WD.tvHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeaveConnectToOrigLastDayOfWork_Sel.FirstDayOfLeave

GO
