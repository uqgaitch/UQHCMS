USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_ActiveButNoT001Position_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trEmpScope_ActiveButNoT001Position_UpdSel] AS
SELECT WD.EmpScope.EmployeeID, WD.EmpScope.PositionID, WD.tvEmpScope_MaxT104_Sel.T104F040_POSITION_NO AS PositionIDNew, 
WD.EmpScope.ActualDateEffective, WD.tvEmpScope_MaxT104_Sel.T104F025_DATE_EFFECTIVE AS ActualDateEffectiveNew, 
             WD.EmpScope.AttendanceType, AUR.T104_EMPLOYMENT_HISTORY.T104F095_ATTENDANCE_TYPE AS AttendanceTypeNew,
             WD.EmpScope.EmploymentType, AUR.T104_EMPLOYMENT_HISTORY.T104F085_EMPLOYMENT_TYPE AS EmploymentTypeNew,
			 WD.EmpScope.ActualDateTo, AUR.T104_EMPLOYMENT_HISTORY.T104F035_CONNECT_DATE_TO AS ActualDateToNew, 
			 WD.EmpScope.zHireType,     'ACTIVE BUT NO CURRENT POSITION IN T001' AS zHireTypeNew
FROM   WD.EmpScope INNER JOIN
             WD.tvEmpScope_MaxT104_Sel ON WD.EmpScope.EmployeeID = WD.tvEmpScope_MaxT104_Sel.T104F005_EMPLOYEE_NO INNER JOIN
             AUR.T104_EMPLOYMENT_HISTORY ON WD.tvEmpScope_MaxT104_Sel.T104F005_EMPLOYEE_NO = AUR.T104_EMPLOYMENT_HISTORY.T104F005_EMPLOYEE_NO AND 
             WD.tvEmpScope_MaxT104_Sel.T104F040_POSITION_NO = AUR.T104_EMPLOYMENT_HISTORY.T104F040_POSITION_NO 
			 AND WD.tvEmpScope_MaxT104_Sel.T104F025_DATE_EFFECTIVE = AUR.T104_EMPLOYMENT_HISTORY.T104F025_DATE_EFFECTIVE
WHERE (WD.EmpScope.PositionID IS NULL)
GO
