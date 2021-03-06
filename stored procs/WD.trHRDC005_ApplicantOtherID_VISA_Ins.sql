USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC005_ApplicantOtherID_VISA_Ins]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trHRDC005_ApplicantOtherID_VISA_Ins]
AS
begin
insert into wd.HRDC005_ApplicantOtherID
(EmployeeID, VisaID, VisaTypeName, CountryISOCode, IssuedDate, ExpirationDate, 
zWAMIKey, zSource, zLoadDate)
select 
EmployeeID, VisaID, VisaTypeName, CountryISOCode, IssuedDate, ExpirationDate,
zWAMIKey, zSource, zLoadDate
from  [WD].[tvHRDC005_ApplicantOtherID_VISA_Sel]
END
GO
