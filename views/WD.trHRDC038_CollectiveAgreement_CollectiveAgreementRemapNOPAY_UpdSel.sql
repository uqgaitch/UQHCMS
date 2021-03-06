USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC038_CollectiveAgreement_CollectiveAgreementRemapNOPAY_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trHRDC038_CollectiveAgreement_CollectiveAgreementRemapNOPAY_UpdSel] as
SELECT CollectiveAgreement, 'Arrangement not covered by UQ Enterprise Agreement' AS CollectiveAgreementNew, CollectiveAgreementFactorOption1
FROM   WD.HRDC038_CollectiveAgreement
WHERE (CollectiveAgreementFactorOption1 IN ('HEGS10', 'NOPAY', 'SCHOL', 'SCHOL1', 'VC', 'NOPAY', 'HEGS06', 'HEGS01'))
GO
