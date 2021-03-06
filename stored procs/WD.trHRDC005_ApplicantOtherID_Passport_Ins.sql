USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC005_ApplicantOtherID_Passport_Ins]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trHRDC005_ApplicantOtherID_Passport_Ins]
AS
begin
insert into wd.HRDC005_ApplicantOtherID
(EmployeeID,  
PassportNumber, 
PassportTypeName,
PassportCountryISOCode, 
PassportIssuedDate, 
PassportExpirationDate,
zWAMIKey, zSource, zLoadDate)

SELECT     EmployeeID,  
PassportNumber, 
PassportTypeName,
PassportCountryISOCode, 
PassportIssuedDate, 
PassportExpirationDate,
zWAMIKey, 
zSource,
zLoadDate
FROM        [WD].[tvHRDC005_ApplicantOtherID_Passport_Sel]
END



GO
