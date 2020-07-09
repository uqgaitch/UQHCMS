USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC038_CollectiveAgreement_CollectiveAgreementFactorOption1HEGS01_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC038_CollectiveAgreement_CollectiveAgreementFactorOption1HEGS01_UpdSel]
AS
SELECT CollectiveAgreementFactorOption1, 'HEGS01A' AS CollectiveAgreementFactorOption1New
FROM   WD.HRDC038_CollectiveAgreement
WHERE (CollectiveAgreementFactorOption1 = N'HEGS01')
GO
