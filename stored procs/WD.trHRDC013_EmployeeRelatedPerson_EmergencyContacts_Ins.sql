USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC013_EmployeeRelatedPerson_EmergencyContacts_Ins]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trHRDC013_EmployeeRelatedPerson_EmergencyContacts_Ins]
AS
begin
insert into [wd].[HRDC013_EmployeeRelatedPerson]
(EmployeeID
,DependantBeneficiaryECID
,RelatedPersonRelationshipName
,CountryISOCode
,PrefixType
,Prefix
,zPrefix
,LegalFirstName
,LegalLastName
,HomeAddressLine1
,zHomeAddressLine1
,HomePhoneNumber
,WorkPhoneNumber
,HomeMunicipality
,HomeRegion
,HomePostalCode
,HomeAddressCountryISOCode
,MobilePhoneNumber
,EmergencyContactPriority
,zType
,zFullName
,zWAMIKey
,zSource
,zLoadDate
)

select 
EmployeeID
,DependantBeneficiaryID
,RelatedPersonRelationshipName
,CountryISOCode
,PrefixType
,Prefix
,zPrefix
,FirstName
,LastName
,HomeAddressLine1
,zHomeAddressLine1
,HomePhoneNumber
,WorkPhoneNumber
,HomeMunicipality
,HomeRegion
,HomePostalCode
,HomeAddressCountryISOCode
,MobilePhoneNumber
,EmergencyContactPriority
,zType
,zName
,zWAMIKey
,zSource
,zLoadDate
from [WD].[trHRDC013_EmployeeRelatedPerson_EmergencyContacts_InsSel]
END
GO
