USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC038_CollectiveAgreement_CollectiveAgreementRemapNOPAY_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [WD].[trHRDC038_CollectiveAgreement_CollectiveAgreementRemapNOPAY_Upd]
AS
begin
update [WD].[trHRDC038_CollectiveAgreement_CollectiveAgreementRemapNOPAY_UpdSel]
set CollectiveAgreement = CollectiveAgreementNew
END
GO
