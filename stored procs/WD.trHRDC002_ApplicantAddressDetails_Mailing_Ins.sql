USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC002_ApplicantAddressDetails_Mailing_Ins]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [WD].[trHRDC002_ApplicantAddressDetails_Mailing_Ins]
AS
begin
insert into [wd].[HRDC002_ApplicantAddress]
(EmployeeID,
AddressType, 
CountryISOCode, 
zCountryISOCode, 
AddressLine1, 
Municipality, 
zMunicipality, 
Region, 
zRegion, 
PostalCode, 
zPostalCode, 
Mailing, 
zWAMIKey, 
zSource, 
zLoadDate
)

select 
EmployeeID,
AddressType, 
CountryISOCode, 
zCountryISOCode, 
AddressLine1, 
Municipality, 
zMunicipality, 
Region, 
zRegion, 
PostalCode, 
zPostalCode, 
Mailing, 
WAMIKey, 
zSource, 
zLoadDate
from [WD].[trHRDC002_ApplicantAddressDetails_Mailing_InsSel]

END


GO
