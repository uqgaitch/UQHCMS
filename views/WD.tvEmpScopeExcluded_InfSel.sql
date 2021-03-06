USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvEmpScopeExcluded_InfSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[tvEmpScopeExcluded_InfSel] AS
SELECT   WAMIKey, EmployeeID, Surname, FirstName, PositionID, zExclude, zExcludeReason, zSource, zLoadDate
FROM         WD.EmpScope
WHERE     (zExclude IS NOT NULL)
GO
