USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvEmpScopeDupPosition_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[tvEmpScopeDupPosition_Sel] AS
select  PositionID, count(*) as Occurrences
from wd.EmpScope where zexclude is null
group by PositionID having count(*) > 1

GO
