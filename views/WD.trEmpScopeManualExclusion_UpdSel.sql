USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScopeManualExclusion_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trEmpScopeManualExclusion_UpdSel]  AS
SELECT        WD.Empscope.zExclude, 'X' AS zExcludeNew, WD.Empscope.zExcludeReason, WD.EmpScopeManualExclusion.ExcludeReason AS zExcludeReasonNew
FROM            WD.Empscope INNER JOIN
                         WD.EmpScopeManualExclusion ON WD.Empscope.EmployeeID = WD.EmpScopeManualExclusion.EmployeeID


GO
