USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_ExcludeInactivePosition_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trEmpScope_ExcludeInactivePosition_UpdSel]
AS
SELECT zExclude, 'X' as zExcludeNew, zExcludeReason,
case when zExclude is not null then zExcludeReason + ', ' + 'Inactive Position'
else 'Inactive Position' end as zExcludeReasonNew

FROM   WD.EmpScope
WHERE (PositionStatus = N'INACTIVE')
GO
