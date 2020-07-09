USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC013_EmployeeRelatedPerson_HomePhonePrimary_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC013_EmployeeRelatedPerson_HomePhonePrimary_UpdSel]  AS
select  
 homePhonePrimary
,case when homePhoneNumber is not null then 'Y' else 'N' end as HomePhonePrimaryNew
from wd.HRDC013_EmployeeRelatedPerson
GO
