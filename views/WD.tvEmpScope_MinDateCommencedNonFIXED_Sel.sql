USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvEmpScope_MinDateCommencedNonFIXED_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[tvEmpScope_MinDateCommencedNonFIXED_Sel] AS
SELECT WAMIKey, MIN(OriginalDateCommenced) AS DateCommenced
FROM   WD.EmpScope
WHERE (NOT (EmploymentType IN (N'PRERT', N'FIXED','HONOR','SCHOL'))) AND (zExclude IS NULL)
GROUP BY WAMIKey


GO
