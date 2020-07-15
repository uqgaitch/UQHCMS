USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC013_EmployeeRelatedPerson_MobilePhoneUsageType_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC013_EmployeeRelatedPerson_MobilePhoneUsageType_UpdSel]  AS
select MobilePhoneUsageType,
'HOME' as MobilePhoneUsageTypeNew

from wd.HRDC013_EmployeeRelatedPerson
where MobilePhoneNumber is not null 

GO
