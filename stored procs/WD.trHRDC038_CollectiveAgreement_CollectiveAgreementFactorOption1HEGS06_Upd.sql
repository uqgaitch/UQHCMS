USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC038_CollectiveAgreement_CollectiveAgreementFactorOption1HEGS06_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trHRDC038_CollectiveAgreement_CollectiveAgreementFactorOption1HEGS06_Upd]
AS
begin
update [WD].[trHRDC038_CollectiveAgreement_CollectiveAgreementFactorOption1HEGS06_UpdSel]
set CollectiveAgreementFactorOption1 = CollectiveAgreementFactorOption1New
END
GO
