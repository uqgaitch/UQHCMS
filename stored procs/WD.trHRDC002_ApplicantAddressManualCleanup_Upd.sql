USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC002_ApplicantAddressManualCleanup_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trHRDC002_ApplicantAddressManualCleanup_Upd]
AS
begin
update [WD].[trHRDC002_ApplicantAddressManualCleanup_UpdSel]
set 
zAddressLine1 = zAddressLine1New

END
GO
