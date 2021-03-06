USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_AssignmentType_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trEmpScope_AssignmentType_UpdSel] AS
SELECT        WD.EmpScope.zAssignmentType,  'Multiple' AS zAssignmentTypeNew
FROM            WD.EmpScope 

where exists (select 1 from  WD.tvEmpScope_WAMICount_Sel 
				where WD.EmpScope.WAMIKey = WD.tvEmpScope_WAMICount_Sel.WamiKey)

union all

SELECT        WD.EmpScope.zAssignmentType, 'Single' AS zAssignmentTypeNew
FROM            WD.EmpScope 
where not exists (select 1 from  WD.tvEmpScope_WAMICount_Sel 
				where WD.EmpScope.WAMIKey = WD.tvEmpScope_WAMICount_Sel.WamiKey)
GO
