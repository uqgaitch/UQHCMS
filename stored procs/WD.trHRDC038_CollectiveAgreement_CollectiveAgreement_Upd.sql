USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC038_CollectiveAgreement_CollectiveAgreement_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trHRDC038_CollectiveAgreement_CollectiveAgreement_Upd]
AS
begin
Update [trHRDC038_CollectiveAgreement_CollectiveAgreement_UpdSel]
set CollectiveAgreement = CollectiveAgreementNew
END
GO
