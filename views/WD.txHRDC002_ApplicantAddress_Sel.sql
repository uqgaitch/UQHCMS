USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC002_ApplicantAddress_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[txHRDC002_ApplicantAddress_Sel] as

SELECT        
isnull(EmployeeID,'') as EmployeeID, 
isnull(AddressType,'') as AddressType, 
isnull(DefaultedBusinessSiteAddress,'') as DefaultedBusinessSiteAddress,
isnull(CountryISOCode,'') as CountryISOCode, 
isnull(zAddressLine1,'') as AddressLine1, 
isnull(AddressLine2,'') as AddressLine2, 
isnull(AddressLine3,'') as AddressLine3, 
isnull(AddressLine4,'') as AddressLine4, 
isnull(AddressLine5,'') as AddressLine5, 
isnull(AddressLine6,'') as AddressLine6, 
isnull(AddressLine7,'') as AddressLine7, 
isnull(AddressLine8,'') as AddressLine8, 
isnull(AddressLine9,'') as AddressLine9, 
isnull(Municipality,'') as Municipality, 
isnull(Submunicipality1,'') as Submunicipality1, 
isnull(Submunicipality2,'') as Submunicipality2, 
isnull(zRegion,'') as Region, 
isnull(Subregion1,'') as Subregion1, 
isnull(Subregion2,'') as Subregion2, 
isnull(zPostalCode,'') as PostalCode, 
isnull([Primary],'') as [Primary],
isnull(Billing,'') as Billing,
isnull(Mailing,'') as Mailing,
isnull(MileageCalculation,'') as MileageCalculation,
isnull(OtherWork,'') as OtherWork,
isnull(Paycheck,'') as Paycheck,
isnull(PayrollTaxForm,'') as PayrollTaxForm,
isnull(Storage,'') as Storage,
isnull(Shipping,'') as Shipping,
isnull(StreetAddress,'') as StreetAddress
FROM            WD.HRDC002_ApplicantAddress
WHERE        (zExclude IS NULL) and zPossOverseasAddress is null
--union
--SELECT        
--isnull(EmployeeID,'') as EmployeeID, 
--isnull(AddressType,'') as AddressType, 
--isnull(DefaultedBusinessSiteAddress,'') as DefaultedBusinessSiteAddress,
--'AUS' as CountryISOCode, 
--'OVERSEAS ADDRESS TO BE UPDATED' as AddressLine1, 
--isnull(AddressLine2,'') as AddressLine2, 
--isnull(AddressLine3,'') as AddressLine3, 
--isnull(AddressLine4,'') as AddressLine4, 
--isnull(AddressLine5,'') as AddressLine5, 
--isnull(AddressLine6,'') as AddressLine6, 
--isnull(AddressLine7,'') as AddressLine7, 
--isnull(AddressLine8,'') as AddressLine8, 
--isnull(AddressLine9,'') as AddressLine9, 
--'UNIVERSITY OF QUEENSLAND' as Municipality, 
--isnull(Submunicipality1,'') as Submunicipality1, 
--isnull(Submunicipality2,'') as Submunicipality2, 
--'AUS-QLD' as Region, 
--isnull(Subregion1,'') as Subregion1, 
--isnull(Subregion2,'') as Subregion2, 
--'4072' as PostalCode, 
--isnull([Primary],'') as [Primary],
--isnull(Billing,'') as Billing,
--isnull(Mailing,'') as Mailing,
--isnull(MileageCalculation,'') as MileageCalculation,
--isnull(OtherWork,'') as OtherWork,
--isnull(Paycheck,'') as Paycheck,
--isnull(PayrollTaxForm,'') as PayrollTaxForm,
--isnull(Storage,'') as Storage,
--isnull(Shipping,'') as Shipping,
--isnull(StreetAddress,'') as StreetAddress
--FROM            WD.HRDC002_ApplicantAddress
--WHERE        (zExclude IS NULL) and zPossOverseasAddress is not null

GO
