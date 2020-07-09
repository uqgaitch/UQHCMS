USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC013_EmployeeRelatedPerson_MobilePhonePrimary_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC013_EmployeeRelatedPerson_MobilePhonePrimary_UpdSel]  AS
select Mobilephoneprimary
, case when homephonenumber is null and workphonenumber is null and mobilephonenumber is not null then 'Y' else 'N'
end as MobilePhonePrimaryNew
from wd.HRDC013_EmployeeRelatedPerson


GO
