USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_ExcludeHONOR_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trEmpScope_ExcludeHONOR_UpdSel]  AS
SELECT WD.EmpScope.zExclude, 'X' AS zExcludeNew, WD.EmpScope.zExcludeReason, CASE WHEN zexcludereason IS NULL 
             THEN 'Employment Type ' + EmploymentType + ' out of scope' 
			 ELSE zExcludeReason + ';' + 'Employment Type ' + EmploymentType + ' out of scope' END AS zExcludeReasonNew
FROM   WD.EmpScope INNER JOIN
             AUR.T001_BASIC_DETAILS ON WD.EmpScope.EmployeeID = AUR.T001_BASIC_DETAILS.T001F005_EMPLOYEE_NO 
			 AND WD.EmpScope.PositionID = AUR.T001_BASIC_DETAILS.T001F065_ACTUAL_POSITION_NO
WHERE (WD.EmpScope.EmploymentType = 'HONOR') AND (AUR.T001_BASIC_DETAILS.T001F100_ACTUAL_JOB_TITLE = 'Board Member (Bulk Position)')




GO
