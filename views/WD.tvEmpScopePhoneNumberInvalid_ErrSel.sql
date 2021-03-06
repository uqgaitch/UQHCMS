USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvEmpScopePhoneNumberInvalid_ErrSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 ALTER view [WD].[tvEmpScopePhoneNumberInvalid_ErrSel] as


select wd.empscope.EmployeeID,
T000F005_WAMI_KEY,
isnull(T000F055_HOME_PHONE_NO,'') as T000F055_HOME_PHONE_NO,
isnull(T000F045_CONTACT_PHONE_NO, '') as T000F045_CONTACT_PHONE_NO, 
isnull(T000F155_MOBILE_PHONE,'') as T000F155_MOBILE_PHONE,
isnull(T000F320_CONTACT_MOBILE_PHONE,'') as T000F320_CONTACT_MOBILE_PHONE,
case when T000F055_HOME_PHONE_NO like '%[a-z]%'  then 'X' else '' end as ErrorHome,
case when T000F045_CONTACT_PHONE_NO like '%[a-z]%'  then 'X' else '' end as ErrorContact,
case when T000F155_MOBILE_PHONE like '%[a-z]%'  then 'X' else '' end as ErrorMobile,
case when T000F320_CONTACT_MOBILE_PHONE like '%[a-z]%' then 'X' else '' end as ErrorContactMobile

from aur.T000_WAMI inner join wd.Empscope
on WAMIKey = aur.T000_WAMI.T000F005_WAMI_KEY
where 
	(
		(T000F045_CONTACT_PHONE_NO  like '%[a-z]%'  ) or
		(T000F055_HOME_PHONE_NO  like '%[a-z]%'  ) or
		(T000F155_MOBILE_PHONE  like '%[a-z]%'  ) or
		(T000F320_CONTACT_MOBILE_PHONE  like '%[a-z]%'  ) 
		)
GO
