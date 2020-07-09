USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvEmpScope_WAMICountPosnNull_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[tvEmpScope_WAMICountPosnNull_Sel] AS
select WAMIKey, count(*) as Occurrences
from wd.empscope where PositionID is null
group by WAMIKey having count(*) > 1

GO
