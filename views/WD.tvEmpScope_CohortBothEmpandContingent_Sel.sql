USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvEmpScope_CohortBothEmpandContingent_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[tvEmpScope_CohortBothEmpandContingent_Sel] AS
select a.WAMIKey, A.EmploymentType as EMP_EmploymentType, 
a.JobCode as EMP_JobCode, a.awardCode as EMP_AwardCode,
b.EmploymentType as Contingent_EmployeeType ,
b.JobCode as Contingent_JobCode, b.AwardCode as Contingent_AwardCode
from wd.empscope a , wd.empscope b
where a.zcohorttype = 'Employee' and a.zexclude is null and b.zexclude is null
and a.WAMIKey = b.WAMIKey
and b.zCohortType = 'Contingent'

GO
