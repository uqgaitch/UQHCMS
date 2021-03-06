USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_SingleAssignmentNoPosnExc_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trEmpScope_SingleAssignmentNoPosnExc_UpdSel]
AS
SELECT         zExclude, 'X' AS zExcludeNew, zExcludeReason, 'Single Assignment - no Position allocated' AS zExcludeReasonNew
FROM            WD.EmpScope
where PositionID is null and zexclude is null
and not exists	(select 1 from [WD].[tvEmpScope_WAMICount_Sel]
				where [WD].[tvEmpScope_WAMICount_Sel].wamikey = wd.empscope.WAMIKey)


GO
