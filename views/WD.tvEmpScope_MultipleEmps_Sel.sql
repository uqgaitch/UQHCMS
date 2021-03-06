USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvEmpScope_MultipleEmps_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[tvEmpScope_MultipleEmps_Sel] AS
SELECT WAMIKey, COUNT(*) AS Occurrences
FROM   WD.EmpScope
WHERE (zExclude IS NULL)
GROUP BY WAMIKey
HAVING (COUNT(*) > 1)
GO
