USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC005_ApplicantOtherID_Passport_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[tvHRDC005_ApplicantOtherID_Passport_Sel] as
SELECT     distinct    WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey as EmployeeID,  
AUR.T019_PASSPORTS.T019F025_PASSPORT_NUMBER as PassportNumber, 
'Regular_Passport' as PassportTypeName,
AUR.T019_PASSPORTS.T019F020_COUNTRY_OF_ISSUE as PassportCountryISOCode, 
convert(nvarchar, AUR.T019_PASSPORTS.T019F035_DATE_GRANTED, 23) as PassportIssuedDate, 
convert(nvarchar, AUR.T019_PASSPORTS.T019F040_DATE_OF_EXPIRY, 23) as PassportExpirationDate
,WAMIKey as zWAMIKey, 
'AURION' as zSource,
getdate() as zLoadDate
FROM            WD.svEmpScope_UniqueWAMIKey_Sel INNER JOIN
                         AUR.T019_PASSPORTS ON WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey = AUR.T019_PASSPORTS.T019F005_WAMI_KEY INNER JOIN
                         WD.Param ON AUR.T019_PASSPORTS.T019F040_DATE_OF_EXPIRY >= WD.Param.GoLiveDate

--SELECT DISTINCT 
--                         WD.EmpScope.EmployeeID, AUR.T019_PASSPORTS.T019F025_PASSPORT_NUMBER AS PassportNumber, 'Regular_Passport' AS PassportTypeName, 
--                         AUR.T019_PASSPORTS.T019F020_COUNTRY_OF_ISSUE AS PassportCountryISOCode, CONVERT(nvarchar, AUR.T019_PASSPORTS.T019F035_DATE_GRANTED, 23) AS PassportIssuedDate, CONVERT(nvarchar, 
--                         AUR.T019_PASSPORTS.T019F040_DATE_OF_EXPIRY, 23) AS PassportExpirationDate,
--						 WAMIKey as zWAMIKey, 						 'AURION' AS zSource, GETDATE() AS zLoadDate
--FROM            AUR.T019_PASSPORTS INNER JOIN
--                         WD.Param ON AUR.T019_PASSPORTS.T019F040_DATE_OF_EXPIRY >= WD.Param.GoLiveDate INNER JOIN
--                         WD.EmpScope ON AUR.T019_PASSPORTS.T019F005_WAMI_KEY = WD.EmpScope.WAMIKey
--						 and wd.empscope.zexclude is null

GO
