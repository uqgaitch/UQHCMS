USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC013_EmployeeRelatedPerson_MobilePhoneNumberDevType_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC013_EmployeeRelatedPerson_MobilePhoneNumberDevType_UpdSel]  AS
select MobilePhoneDeviceTypeDescription,
case	
	when MobilePhoneNumber like '04%' or
	 MobilePhoneNumber like '+614%' or
	 MobilePhoneNumber like '+61 4%' or
	 MobilePhoneNumber like '614%' or
	 MobilePhoneNumber like '+6104%' or
	 MobilePhoneNumber like '6104%' then 'PERSONAL_MOBILE'
	else 'HOME' end as MobilePhoneDeviceTypeDescriptionNew
from wd.HRDC013_EmployeeRelatedPerson
where MobilePhoneNumber is not null 

GO
