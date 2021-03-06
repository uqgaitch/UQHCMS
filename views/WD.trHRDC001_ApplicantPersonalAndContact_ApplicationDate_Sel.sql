USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_ApplicationDate_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_ApplicationDate_Sel] AS
SELECT        WAMIKey, 
convert(nvarchar(10),MIN(dateadd(d,-1,OriginalDateCommenced)),126) AS ApplicantEnteredDate
FROM            WD.EmpScope
WHERE        (zExclude IS NULL)
GROUP BY WAMIKey
GO
