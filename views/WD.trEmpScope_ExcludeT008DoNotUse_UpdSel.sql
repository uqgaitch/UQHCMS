USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_ExcludeT008DoNotUse_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER view [WD].[trEmpScope_ExcludeT008DoNotUse_UpdSel]
AS
SELECT WD.EmpScope.zExclude, 
'X' as zExcludeNew,
WD.EmpScope.zExcludeReason,
case
	when zExclude is not null then
			zExcludeReason + ', ' + ltrim(rtrim(substring(AUR.T008_NOTATIONS.T008F990_LONG_COMMENTS,1,150)))
	else ltrim(rtrim(substring(AUR.T008_NOTATIONS.T008F990_LONG_COMMENTS,1,150))) END as zExcludeReasonNew,
	WD.EmpScope.WAMIKey
FROM   AUR.T008_NOTATIONS INNER JOIN
             WD.EmpScope ON AUR.T008_NOTATIONS.T008F005_WAMI_KEY = WD.EmpScope.WAMIKey
WHERE (AUR.T008_NOTATIONS.T008F990_LONG_COMMENTS LIKE '%do not use%')
GO
