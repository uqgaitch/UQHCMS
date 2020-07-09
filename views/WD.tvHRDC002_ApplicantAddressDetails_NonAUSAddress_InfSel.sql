USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC002_ApplicantAddressDetails_NonAUSAddress_InfSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[tvHRDC002_ApplicantAddressDetails_NonAUSAddress_InfSel] as

SELECT        EmployeeID, zWAMIKey AS WAMIKey, CountryISOCode, AddressLine1, Municipality, Region, PostalCode
FROM            WD.HRDC002_ApplicantAddress
WHERE        (zExclude IS NULL) AND (countryisocode not like 'AU%') 


GO
