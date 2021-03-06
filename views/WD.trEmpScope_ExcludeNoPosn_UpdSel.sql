USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_ExcludeNoPosn_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trEmpScope_ExcludeNoPosn_UpdSel]
AS
SELECT        zExclude, 'X' AS zExcludeNew, zExcludeReason, 'Assignment has no Position allocated' AS zExcludeReasonNew
FROM            WD.EmpScope
WHERE        (PositionID IS NULL)
GO
