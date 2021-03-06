USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC002_ApplicantAddressDetails_ReformatConstructedData_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER Procedure [WD].[trHRDC002_ApplicantAddressDetails_ReformatConstructedData_Upd]
AS
begin
update [WD].[trHRDC002_ApplicantAddressDetails_ReformatConstructedData_UpdSel]
set EmployeeID = EmployeeIDNew, 
zAddressLine1 = zAddressLine1New,
zRegion = zRegionNew,
zPostalCode = zPostalCodeNew,
zWAMIKey = zWAMIKeyNew, 
zSource = zSourceNew, 
zLoadDate= zLoadDateNew
FROM   WD.HRDC002_ApplicantAddress
END
GO
