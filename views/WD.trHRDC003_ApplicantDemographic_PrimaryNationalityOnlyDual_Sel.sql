USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC003_ApplicantDemographic_PrimaryNationalityOnlyDual_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC003_ApplicantDemographic_PrimaryNationalityOnlyDual_Sel] as

select a.EmployeeID, a.PrimaryNationality
from wd.hrdc003_applicantdemographic  a
where a.primarynationality is null
and not exists
	(select 1 from wd.HRDC003_ApplicantDemographic b
		where a.EmployeeID = b.EmployeeID
			and b.PrimaryNationality = 'Y') 
GO
