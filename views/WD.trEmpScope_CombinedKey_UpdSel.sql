USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_CombinedKey_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trEmpScope_CombinedKey_UpdSel] AS

select zCombinedKey, 
dbo.padnum(WAMIKey,8) + '-' + dbo.padnum(EmployeeID,8) + '-' + isnull(dbo.padnum(PositionID,8), '99999999') + '-' + Zsource as zCombinedKeyNew
from wd.empscope
where zexclude is null

GO
