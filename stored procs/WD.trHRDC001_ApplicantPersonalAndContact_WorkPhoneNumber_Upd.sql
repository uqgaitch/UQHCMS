USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC001_ApplicantPersonalAndContact_WorkPhoneNumber_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [WD].[trHRDC001_ApplicantPersonalAndContact_WorkPhoneNumber_Upd]
AS
begin
update [WD].[trHRDC001_ApplicantPersonalAndContact_WorkPhoneNumber_UpdSel]
set WorkPhoneCountryISOCode = WorkPhoneCountryISOCodeNew,
WorkPhoneNumber = WorkPhoneNumberNew,
WorkPhoneDeviceTypeDescription = WorkPhoneDeviceTypeDescriptionNew,
WorkPhonePrimary = WorkPhonePrimaryNew



END



--select * from wd.HRDC001_ApplicantPersonalAndContact


GO
