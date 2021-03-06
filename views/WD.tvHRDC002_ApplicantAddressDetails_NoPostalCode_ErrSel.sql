USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC002_ApplicantAddressDetails_NoPostalCode_ErrSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[tvHRDC002_ApplicantAddressDetails_NoPostalCode_ErrSel] as

SELECT        EmployeeID, zWAMIKey AS WAMIKey, CountryISOCode, AddressLine1, Municipality, Region, PostalCode
FROM            WD.HRDC002_ApplicantAddress
WHERE        (zExclude IS NULL) AND (PostalCode IS NULL)

GO
