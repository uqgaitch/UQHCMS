USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC002_ApplicantAddressDetails_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [WD].[trHRDC002_ApplicantAddressDetails_Upd]
AS
begin
update [WD].[trHRDC002_ApplicantAddressDetails_UpdSel]
set 
AddressType = AddressTypeNew,
CountryISOCode = CountryISOCodeNew,
zCountryISOCode = zCountryISOCodeNew,
AddressLine1 = AddressLine1New,
Municipality = MunicipalityNew,
zMunicipality = zMunicipalityNew,
Region = RegionNew,
zRegion = zRegionNew,
PostalCode = PostalCodeNew,
zPostalCode = zPostalCodeNew,
[Primary] = PrimaryNew

END
GO
