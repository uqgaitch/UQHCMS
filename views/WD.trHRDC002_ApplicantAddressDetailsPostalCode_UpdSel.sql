USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC002_ApplicantAddressDetailsPostalCode_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





ALTER view [WD].[trHRDC002_ApplicantAddressDetailsPostalCode_UpdSel] as

select
WD.HRDC002_ApplicantAddress.zPostalCode, 
--case when PostalCode = '9999' then NULL else PostalCode END  AS zPostalCodeNew
PostalCode AS zPostalCodeNew
from WD.HRDC002_ApplicantAddress

GO
