USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_AssignmentTypeSingle_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trEmpScope_AssignmentTypeSingle_UpdSel] AS
SELECT        WD.EmpScope.zAssignmentType,  'Single' AS zAssignmentTypeNew
FROM            WD.EmpScope 
where zAssignmentType is null
GO
