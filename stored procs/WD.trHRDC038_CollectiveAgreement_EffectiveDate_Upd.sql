USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC038_CollectiveAgreement_EffectiveDate_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trHRDC038_CollectiveAgreement_EffectiveDate_Upd]
AS
begin
Update [trHRDC038_CollectiveAgreement_EffectiveDate_UpdSel]
set EffectiveDate = EffectiveDateNew,
zHireDate = zHireDateNew
END
GO
