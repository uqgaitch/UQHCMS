USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PRO].[zHRDC001_ApplicantPersonalAndContact]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [PRO].[zHRDC001_ApplicantPersonalAndContact] as

Select GETDATE() as 'RunDate'
	,*

from wd.HRDC001_ApplicantPersonalAndContact
GO
