USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC005_ApplicantOtherID_VISAMap_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[tvHRDC005_ApplicantOtherID_VISAMap_Sel] as
SELECT DISTINCT Aurion
FROM   MAP.VISAIDTypes
GO
