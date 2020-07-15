SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Main source to load all other id's for an employee
ALTER view [AUR].[HRDC005_ApplicantOtherID_InsSel] as

SELECT DISTINCT T001.T001F005_EMPLOYEE_NO as EmployeeID
   , '' as VisaID
   , '' as VisaTypeName
   , 'AUS' as CountryISOCode
   , '' as IssuedDate
   , '' as ExpirationDate
   , '' as VerificationDate
   , '' as CustomID1
   , '' as CustomID1TypeName
   , '' as CustomID1Description
   , '' as CustomID1IssuedDate
   , '' as CustomID1ExpirationDate
   , '' as CustomID2
   , '' as CustomID2Description
   , '' as CustomID2TypeName
   , '' as CustomID2IssuedDate
   , '' as CustomIDExpirationDate
   , '' as NationalIDCountryISOCode
   , '' as NationalID
   , '' as NationalIDTypeCode
   , '' as NationalIDIssuedDate
   , '' as NationalIDExpirationDate
   , '' as NationalIDVerificationDate
   , '' as NationalIDSeries
   , '' as NationalIDIssuingAgency
   , '' as GovernmentID
   , '' as GovernmentIDTypeName
   , '' as GovernmentIDCountryISOCode
   , '' as GovernmentIDIssuedDate
   , '' as GovernmentIDExpirationDate
   , '' as GovernmentIDVerificationDate
   , '' as LicenseID
   , '' as LicenseIDTypeName
   , '' as LicenseIDClass
   , '' as LicenseIDIssuedDate
   , '' as LicenseIDExpirationDate
   , '' as LicenseIDVerificationDate
   , '' as LicenseIDCountryISOCode
   , '' as LicenseIDCountryRegion
   , '' as LicenseIDAuthorityName
   , '' as PassportNumber
   , '' as PassportTypeName
   , '' as PassportCountryISOCode
   , '' as PassportIssuedDate
   , '' as PassportExpirationDate
   , '' as PassportVerificationDate
FROM AUR.T000_WAMI T000
INNER JOIN AUR.T001_BASIC_DETAILS T001
ON T000.T000F005_WAMI_KEY = T001.T001F010_WAMI_KEY
WHERE T001.T001F015_EMPLOYEE_STATUS = 'ACTIVE'

GO
