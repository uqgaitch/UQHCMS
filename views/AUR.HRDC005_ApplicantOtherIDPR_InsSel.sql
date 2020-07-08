SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [AUR].[HRDC005_ApplicantOtherIDPR_InsSel] as

SELECT  T001.T001F005_EMPLOYEE_NO as EmployeeID
   , 'AA' + right('0000000' + cast(row_number() over (order by (select NULL)) as varchar(255)),6) + 'AA' as VisaID
   , 'Other' as VisaTypeName
   , 'AUS' as CountryISOCode
   , '01/01/2000' as IssuedDate
   , case 
			when T001F005_EMPLOYEE_NO < 2000000 
				then '01/01/2022'
			else	
				'01/01/2021'
	END  as ExpirationDate
   , '01/02/2000' as VerificationDate
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
   , isnull(WD.svT019_PASSPORTSActive_Sel.T019F025_PASSPORT_NUMBER,'') as PassportNumber
   , case when WD.svT019_PASSPORTSActive_Sel.T019F025_PASSPORT_NUMBER is not null then 'Regular_Passport' else '' end as PassportTypeName
   , isnull(WD.svT019_PASSPORTSActive_Sel.T019F020_COUNTRY_OF_ISSUE,'') as PassportCountryISOCode
   , isnull(convert(nvarchar,WD.svT019_PASSPORTSActive_Sel.T019F035_DATE_GRANTED, 103),'') as PassportIssuedDate
   , isnull(convert(nvarchar,WD.svT019_PASSPORTSActive_Sel.T019F040_DATE_OF_EXPIRY, 103),'') as PassportExpirationDate
   , '' as PassportVerificationDate
FROM AUR.T000_WAMI T000
INNER JOIN AUR.T001_BASIC_DETAILS T001
ON T000.T000F005_WAMI_KEY = T001.T001F010_WAMI_KEY
left outer join WD.svT019_PASSPORTSActive_Sel
on WD.svT019_PASSPORTSActive_Sel.T019F005_wami_key = T000.T000F005_WAMI_KEY  
inner join AUR.HRDC006_EmployeePositionManagementMG_InsSel HRDC006
on HRDC006.employeeID = T001.T001F005_EMPLOYEE_NO
WHERE T001.T001F015_EMPLOYEE_STATUS = 'ACTIVE'


















GO
