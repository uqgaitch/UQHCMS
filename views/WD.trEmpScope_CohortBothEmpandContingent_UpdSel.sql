USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_CohortBothEmpandContingent_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trEmpScope_CohortBothEmpandContingent_UpdSel] AS
SELECT WD.EmpScope.zCohortEEandContingent, 'X' AS zCohortEEandContingentNew, WD.EmpScope.WAMIKey
FROM   WD.EmpScope INNER JOIN
             WD.tvEmpScope_CohortBothEmpandContingent_Sel ON WD.EmpScope.WAMIKey = WD.tvEmpScope_CohortBothEmpandContingent_Sel.WAMIKey

GO
