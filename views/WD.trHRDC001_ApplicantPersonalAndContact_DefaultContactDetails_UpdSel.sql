USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_DefaultContactDetails_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_DefaultContactDetails_UpdSel] AS
select WorkEmailAddress, T803F005_USER + '@uq.edu.au' as WorkEmailAddressNew, WorkEmailPrimary, 'Y' as WorkEmailPrimaryNew
from wd.HRDC001_ApplicantPersonalAndContact
inner join
aur.T803_SECURITY_USER on
aur.T803_SECURITY_USER.T803F050_WAMI_KEY = wd.HRDC001_ApplicantPersonalAndContact.EmployeeID
where znocontactdetails = 'X'
and T803F015_STATUS = 'PERMITTED'

GO
