USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC019_EmployeeLeaveOfAbsence_LastDayOfWork_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





ALTER view [WD].[trHRDC019_EmployeeLeaveOfAbsence_LastDayOfWork_UpdSel]  AS

SELECT        WD.HRDC019_EmployeeLeaveOfAbsence.EmployeeID, WD.HRDC019_EmployeeLeaveOfAbsence.zLastDayOfWork, 
                         WD.tvHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeave_Sel.LastDayOfWork AS zLastDayOfWorkNew,
						 WD.HRDC019_EmployeeLeaveOfAbsence.zLastDayOfWorkOrig, 
						 WD.tvHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeave_Sel.LastDayOfWork AS zLastDayOfWorkOrigNew
FROM            WD.tvHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeave_Sel INNER JOIN
                         WD.HRDC019_EmployeeLeaveOfAbsence ON WD.tvHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeave_Sel.EmployeeID = WD.HRDC019_EmployeeLeaveOfAbsence.EmployeeID
WHERE      (WD.HRDC019_EmployeeLeaveOfAbsence.FirstDayOfLeave BETWEEN 
WD.tvHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeave_Sel.FirstDayOfLeave AND WD.tvHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeave_Sel.ActualLastDayOfLeave)

GO
