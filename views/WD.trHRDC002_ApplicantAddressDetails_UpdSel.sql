USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC002_ApplicantAddressDetails_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC002_ApplicantAddressDetails_UpdSel] as

SELECT        
WD.HRDC002_ApplicantAddress.AddressType, 'HOME' as AddressTypeNew,
WD.HRDC002_ApplicantAddress.CountryISOCode, AUR.T000_WAMI.T000F270_COUNTRY_CODE AS CountryISOCodeNew, 
WD.HRDC002_ApplicantAddress.zCountryISOCode, AUR.T000_WAMI.T000F270_COUNTRY_CODE AS zCountryISOCodeNew, 
WD.HRDC002_ApplicantAddress.AddressLine1, AUR.T000_WAMI.T000F040_ADDRESS AS AddressLine1New, 
WD.HRDC002_ApplicantAddress.Municipality, AUR.T000_WAMI.T000F065_SUBURB AS MunicipalityNew, 
WD.HRDC002_ApplicantAddress.zMunicipality, AUR.T000_WAMI.T000F065_SUBURB AS zMunicipalityNew, 
WD.HRDC002_ApplicantAddress.Region,  AUR.T000_WAMI.T000F070_STATE as [RegionNew],
WD.HRDC002_ApplicantAddress.zRegion,  AUR.T000_WAMI.T000F070_STATE as [zRegionNew],
WD.HRDC002_ApplicantAddress.PostalCode, AUR.T000_WAMI.T000F075_POSTCODE AS PostalCodeNew,
WD.HRDC002_ApplicantAddress.zPostalCode, AUR.T000_WAMI.T000F075_POSTCODE AS zPostalCodeNew,
WD.HRDC002_ApplicantAddress.[Primary], 'Y' as PrimaryNew

FROM            AUR.T000_WAMI INNER JOIN
                       WD.HRDC002_ApplicantAddress ON AUR.T000_WAMI.T000F005_WAMI_KEY = WD.HRDC002_ApplicantAddress.zWAMIKey
GO
