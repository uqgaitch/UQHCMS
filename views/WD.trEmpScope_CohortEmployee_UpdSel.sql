USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_CohortEmployee_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trEmpScope_CohortEmployee_UpdSel]  AS
select zCohortType,
'EMPLOYEE' as zCohortTypeNew
from wd.empscope
where zCohortType is NULL

--and zexclude is null






GO
