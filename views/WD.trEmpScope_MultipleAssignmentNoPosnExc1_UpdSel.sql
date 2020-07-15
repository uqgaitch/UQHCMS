USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_MultipleAssignmentNoPosnExc1_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trEmpScope_MultipleAssignmentNoPosnExc1_UpdSel]
AS
SELECT         WD.EmpScope.zExclude, 'X' AS zExcludeNew, WD.EmpScope.zExcludeReason, 'Multiple Assignment - no Position allocated on one (or more) Assignments' AS zExcludeReasonNew
FROM            WD.EmpScope where PositionID is null and zAssignmentType = 'Multiple' and zexclude is null


GO
