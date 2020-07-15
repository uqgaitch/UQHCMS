USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC001_ApplicantPersonalAndContact_Additional2PhoneNumber_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [WD].[trHRDC001_ApplicantPersonalAndContact_Additional2PhoneNumber_Upd]
AS
begin
update [WD].[trHRDC001_ApplicantPersonalAndContact_Additional2PhoneNumber_UpdSel]
set Additional2PhoneCountryISOCode = Additional2PhoneCountryISOCodeNew,
Additional2PhoneNumber = Additional2PhoneNumberNew,
Additional2PhoneDeviceTypeDescription = Additional2PhoneDeviceTypeDescriptionNew,
Additional2PhoneUsageType = Additional2PhoneUsageTypeNew

END
GO
