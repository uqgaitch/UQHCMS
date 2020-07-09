USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC013_EmployeeRelatedPerson_FirstNameDefault_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC013_EmployeeRelatedPerson_FirstNameDefault_UpdSel]  AS
select LegalFirstName, '.' as LegalFirstNameNew
from wd.HRDC013_EmployeeRelatedPerson
where LegalFirstName = ''
and zType = 'Emer'

GO
