USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC005_ApplicantOtherID_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER view [WD].[txHRDC005_ApplicantOtherID_Sel] as

SELECT        
isnull(EmployeeID, '') as EmployeeID,
isnull(VisaID, '') as VisaID ,
isnull(VisaTypeName, '') as VisaTypeName,
isnull(CountryISOCode, '') as CountryISOCode,
ISNULL(IssuedDate, '') AS IssuedDate,
ISNULL(ExpirationDate, '') as ExpirationDate,
ISNULL(VerificationDate, '') as VerificationDate,
isnull(CustomID1, '') as CustomID1,
isnull(CustomID1TypeName, '') as CustomID1TypeName,
isnull(CustomID1Description, '') as CustomID1Description,
isnull(CustomID1IssuedDate, '') as CustomID1IssuedDate,
isnull(CustomID1ExpirationDate, '') as CustomID1ExpirationDate,
isnull(CustomID2, '') as CustomID2,
isnull(CustomID2TypeName, '') as CustomID2TypeName,
isnull(CustomID2Description, '') as CustomID2Description,
isnull(CustomID2IssuedDate, '')  as CustomID2IssuedDate,
isnull(CustomID2ExpirationDate, '') as CustomID2ExpirationDate,
isnull(CustomID3, '') as CustomID3,
isnull(CustomID3TypeName, '') as CustomID3TypeName,
isnull(CustomID3Description, '') as CustomID3Description,
isnull(CustomID3IssuedDate, '')  as CustomID3IssuedDate,
isnull(CustomID3ExpirationDate, '') as Custom3IDExpirationDate,
isnull(CustomID4, '') as CustomID4,
isnull(CustomID4TypeName, '') as CustomID4TypeName,
isnull(CustomID4Description, '') as CustomID4Description,
isnull(CustomID4IssuedDate, '')  as CustomID4IssuedDate,
isnull(CustomID4ExpirationDate, '') as CustomID4ExpirationDate,
isnull(CustomID5, '') as CustomID5,
isnull(CustomID5TypeName, '') as CustomID5TypeName,
isnull(CustomID5Description, '') as CustomID5Description,
isnull(CustomID5IssuedDate, '')  as CustomID5IssuedDate,
isnull(CustomID5ExpirationDate, '') as CustomID5ExpirationDate,
isnull(CustomID6, '') as CustomID6,
isnull(CustomID6TypeName, '') as CustomID6TypeName,
isnull(CustomID6Description, '') as CustomID6Description,
isnull(CustomID6IssuedDate, '')  as CustomID6IssuedDate,
isnull(CustomID6ExpirationDate, '') as CustomID6ExpirationDate,
isnull(CustomID7, '') as CustomID7,
isnull(CustomID7TypeName, '') as CustomID7TypeName,
isnull(CustomID7Description, '') as CustomID7Description,
isnull(CustomID7IssuedDate, '')  as CustomID7IssuedDate,
isnull(CustomID7ExpirationDate, '') as CustomID7ExpirationDate,
isnull(NationalIDCountryISOCode, '') as NationalIDCountryISOCode,
isnull(NationalID, '') as NationalID,
isnull(NationalIDTypeCode, '') as NationalIDTypeCode ,
isnull(NationalIDIssuedDate, '')  as NationalIDIssuedDate,
isnull(NationalIDExpirationDate, '') as NationalIDExpirationDate,
isnull(NationalIDVerificationDate, '') as NationalIDVerificationDate,
isnull(NationalIDSeries, '') as NationalIDSeries,
isnull(NationalIDIssuingAgency, '') as NationalIDIssuingAgency,
isnull(GovernmentID, '') as GovernmentID,
isnull(GovernmentIDTypeName, '') as GovernmentIDTypeName,
isnull(GovernmentIDCountryISOCode, '') as GovernmentIDCountryISOCode,
isnull(GovernmentIDIssuedDate, '') as GovernmentIDIssuedDate,
isnull(GovernmentIDExpirationDate, '') as GovernmentIDExpirationDate,
isnull(GovernmentIDVerificationDate, '') as GovernmentIDVerificationDate,
isnull(LicenseID, '') as LicenseID,
isnull(LicenseIDTypeName, '') as LicenseIDTypeName,
isnull(LicenseIDClass, '') as LicenseIDClass,
isnull(LicenseIDIssuedDate, '') as LicenseIDIssuedDate,
isnull(LicenseIDExpirationDate, '')  as LicenseIDExpirationDate,
isnull(LicenseIDVerificationDate, '') as LicenseIDVerificationDate,
isnull(LicenseIDCountryISOCode, '') as LicenseIDCountryISOCode,
isnull(LicenseIDCountryRegion, '') as LicenseIDCountryRegion,
isnull(LicenseIDAuthorityName, '') as LicenseIDAuthorityName,
isnull(PassportNumber, '') as PassportNumber,
isnull(PassportTypeName, '') as PassportTypeName,
isnull(PassportCountryISOCode, '') as PassportCountryISOCode,
isnull(PassportIssuedDate, '') as PassportIssuedDate,
isnull(PassportExpirationDate, '') as PassportExpirationDate,
isnull(PassportVerificationDate, '')  as PassportVerificationDate

FROM            WD.HRDC005_ApplicantOtherID
where zExclude is  null
GO
