USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScopeDupEmpPosition_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trEmpScopeDupEmpPosition_UpdSel] AS
SELECT        WD.EmpScope.zDupEmpPosition, 'X' AS zDupEmpPositionNew
FROM            WD.EmpScope INNER JOIN
                         WD.tvEmpScopeDupEmpPosition_Sel ON 
						 WD.EmpScope.PositionID	= WD.tvEmpScopeDupEmpPosition_Sel.PositionID
		AND              WD.EmpScope.WAMIKey	= WD.tvEmpScopeDupEmpPosition_Sel.WAMIKey


GO
