USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC013_EmployeeRelatedPerson_HomePhoneNumberDevType_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC013_EmployeeRelatedPerson_HomePhoneNumberDevType_UpdSel]  AS
select HomePhoneDeviceTypeDescription,
case	
	when HomePhoneNumber like '04%' or
	 HomePhoneNumber like '+614%' or
	 HomePhoneNumber like '+61 4%' or
	 HomePhoneNumber like '614%' or
	 HomePhoneNumber like '+6104%' or
	 HomePhoneNumber like '6104%' then 'PERSONAL_MOBILE'
	else 'HOME' end as HomePhoneDeviceTypeDescriptionNew
from wd.HRDC013_EmployeeRelatedPerson
where HomePhoneNumber is not null 

GO
