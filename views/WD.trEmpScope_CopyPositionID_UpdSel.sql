USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_CopyPositionID_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trEmpScope_CopyPositionID_UpdSel]  AS
SELECT zAurionPositionID, PositionID AS zAurionPositionIDNew
FROM   WD.EmpScope
WHERE (PositionID IS NOT NULL)


GO
