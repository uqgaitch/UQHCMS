USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC002_ApplicantAddressFlagOverseas_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER view [WD].[trHRDC002_ApplicantAddressFlagOverseas_UpdSel] as

SELECT      zPossOverseasAddress, 'X' as zPossOverseasAddressNew

from wd.HRDC002_ApplicantAddress 
where PostalCode = '9999' or region = 'OTH' or (CountryISOCode not in ('AUS','AU'))

GO
