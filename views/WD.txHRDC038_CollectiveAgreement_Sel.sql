USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC038_CollectiveAgreement_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[txHRDC038_CollectiveAgreement_Sel]  AS
SELECT isnull(EmployeeID,'') AS  EmployeeID,
isnull(EffectiveDate, '') AS EffectiveDate,
isnull(PositionID,'') AS Position, 
isnull(CollectiveAgreement,'') AS CollectiveAgreement, 
isnull(CollectiveAgreementFactor1,'') AS CollectiveAgreementFactor1,
isnull(CollectiveAgreementFactorOption1,'') AS CollectiveAgreementFactorOption1, 
isnull(CollectiveAgreementFactor2,'') AS CollectiveAgreementFactor2, 
isnull(CollectiveAgreementFactorOption2,'') AS CollectiveAgreementFactorOption2, 
isnull(CollectiveAgreementFactor3,'') AS CollectiveAgreementFactor3, 
isnull(CollectiveAgreementFactorOption3,'') AS CollectiveAgreementFactorOption3, 
isnull(CollectiveAgreementFactor4,'') AS CollectiveAgreementFactor4 , 
isnull(CollectiveAgreementFactorOption4,'') AS CollectiveAgreementFactorOption4, 
isnull(CollectiveAgreementFactor5,'') AS CollectiveAgreementFactor5, 
isnull(CollectiveAgreementFactorOption5,'') ASCollectiveAgreementFactorOption5
FROM   WD.HRDC038_CollectiveAgreement
where zexclude is null


GO
