USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC003_ApplicantDemographic_MaritalStatusName_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC003_ApplicantDemographic_MaritalStatusName_UpdSel] as

SELECT        WD.HRDC003_ApplicantDemographic.MaritalStatusName, 
'' AS MaritalStatusNameNew
--'NA' AS MaritalStatusNameNew
FROM            WD.HRDC003_ApplicantDemographic 
GO
