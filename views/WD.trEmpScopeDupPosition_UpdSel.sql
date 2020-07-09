USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScopeDupPosition_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trEmpScopeDupPosition_UpdSel] AS
SELECT        WD.EmpScope.zDupPosition, 'X' AS zDupPositionNew
FROM            WD.EmpScope INNER JOIN
                         WD.tvEmpScopeDupPosition_Sel ON WD.EmpScope.PositionID = WD.tvEmpScopeDupPosition_Sel.PositionID

GO
