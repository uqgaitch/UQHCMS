USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC002_ApplicantAddressManualCleanup_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trHRDC002_ApplicantAddressManualCleanup_UpdSel] as
select zAddressLine1, Replace(zAddressLine1,'''','"') as zAddressLine1New
from wd.HRDC002_ApplicantAddress
where EmployeeID = 0122367
GO
