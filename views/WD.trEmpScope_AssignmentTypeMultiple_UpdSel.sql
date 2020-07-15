USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_AssignmentTypeMultiple_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trEmpScope_AssignmentTypeMultiple_UpdSel] AS
SELECT        WD.EmpScope.zAssignmentType,  'Multiple' AS zAssignmentTypeNew
FROM            WD.EmpScope INNER JOIN
                         WD.tvEmpScope_WAMICount_Sel ON WD.EmpScope.WAMIKey = WD.tvEmpScope_WAMICount_Sel.WamiKey
GO
