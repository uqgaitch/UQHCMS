USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC013_EmployeeRelatedPerson_WorkPhoneNumberDevType_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC013_EmployeeRelatedPerson_WorkPhoneNumberDevType_UpdSel]  AS
select WorkPhoneDeviceTypeDescription,
case	
	when WorkPhoneNumber like '04%' or
	 WorkPhoneNumber like '+614%' or
	 WorkPhoneNumber like '+61 4%' or
	 WorkPhoneNumber like '614%' or
	 WorkPhoneNumber like '+6104%' or
	 WorkPhoneNumber like '6104%' then 'BUSINESS_MOBILE'
	else 'BUSINESS_PHONE' end as WorkPhoneDeviceTypeDescriptionNew
from wd.HRDC013_EmployeeRelatedPerson
where WorkPhoneNumber is not null 

GO
