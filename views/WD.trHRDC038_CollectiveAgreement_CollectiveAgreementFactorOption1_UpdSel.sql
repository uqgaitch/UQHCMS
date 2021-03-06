USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC038_CollectiveAgreement_CollectiveAgreementFactorOption1_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC038_CollectiveAgreement_CollectiveAgreementFactorOption1_UpdSel] as
SELECT WD.HRDC038_CollectiveAgreement.CollectiveAgreementFactorOption1, WD.EmpScope.AwardCode AS CollectiveAgreementFactorOption1New
FROM   WD.HRDC038_CollectiveAgreement INNER JOIN
             WD.EmpScope ON WD.HRDC038_CollectiveAgreement.EmployeeID = WD.EmpScope.WAMIKey 
AND WD.HRDC038_CollectiveAgreement.PositionID = WD.EmpScope.PositionID AND WD.HRDC038_CollectiveAgreement.zEmployeeID = WD.EmpScope.EmployeeID

GO
