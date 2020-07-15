USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvEmpScope_WAMICount_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[tvEmpScope_WAMICount_Sel] AS
select WamiKey, count(*) as Occurrences
from wd.empscope
group by WAMIKey having count(*) >  1
GO
