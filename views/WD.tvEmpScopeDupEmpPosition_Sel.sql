USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvEmpScopeDupEmpPosition_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[tvEmpScopeDupEmpPosition_Sel] AS
select WAMIKey, positionID, count(*) as Occurrences
from wd.empscope where zexclude is null
group by WAMIKey, PositionID
having count(*) > 1


GO
