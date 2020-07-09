USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_ExcludeAFFIL_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trEmpScope_ExcludeAFFIL_UpdSel]  AS
SELECT WD.EmpScope.zExclude, 'X' AS zExcludeNew, WD.EmpScope.zExcludeReason, 
CASE WHEN zexcludereason IS NULL 
             THEN 'Employment Type ' + EmploymentType + ' out of scope' 
			 ELSE zExcludeReason + ';' + 'Employment Type ' + EmploymentType + ' out of scope' END AS zExcludeReasonNew
FROM   WD.EmpScope 
WHERE (WD.EmpScope.EmploymentType = 'AFFIL') 




GO
