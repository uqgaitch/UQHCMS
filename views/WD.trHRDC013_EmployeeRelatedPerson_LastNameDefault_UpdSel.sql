USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC013_EmployeeRelatedPerson_LastNameDefault_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC013_EmployeeRelatedPerson_LastNameDefault_UpdSel]  AS
select LegalLastName, '.' as LegalLastNameNew
from wd.HRDC013_EmployeeRelatedPerson
where LegalLastName = ''
and zType = 'Emer'

GO
