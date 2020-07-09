USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvEmpScopePositionInactive_InfSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[tvEmpScopePositionInactive_InfSel]
AS

  SELECT   WAMIKey, EmployeeID, Surname, FirstName, PositionID, PositionStatus, zExclude, zExcludeReason, zSource, zLoadDate
FROM         WD.EmpScope
WHERE     (PositionStatus <> 'active')

GO
