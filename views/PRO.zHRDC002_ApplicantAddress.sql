USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PRO].[zHRDC002_ApplicantAddress]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [PRO].[zHRDC002_ApplicantAddress] as

select getdate() as 'RunDate', *
from WD.HRDC002_ApplicantAddress
GO
