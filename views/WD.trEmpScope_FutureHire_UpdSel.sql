USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_FutureHire_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trEmpScope_FutureHire_UpdSel]  AS
SELECT        
WD.EmpScope.PositionID, AUR.T104_EMPLOYMENT_HISTORY.T104F040_POSITION_NO AS PositionIDNew,
zHireType, 'FUTURE' as zHireTypeNew,

AttendanceType, T104F095_ATTENDANCE_TYPE as AttendanceTypeNew,
EmploymentType, T104F085_EMPLOYMENT_TYPE as EmploymentTypeNew,
ActualDateEffective , T104F025_DATE_EFFECTIVE as ActualDateEffectiveNew,
ActualDateTo, T104F035_CONNECT_DATE_TO as ActualDateToNew

FROM            WD.EmpScope INNER JOIN
                         AUR.T104_EMPLOYMENT_HISTORY ON WD.EmpScope.EmployeeID = AUR.T104_EMPLOYMENT_HISTORY.T104F005_EMPLOYEE_NO INNER JOIN
                         WD.Param ON AUR.T104_EMPLOYMENT_HISTORY.T104F035_CONNECT_DATE_TO >= WD.Param.GoLiveDate
WHERE        (WD.EmpScope.PositionID IS NULL) and T104F065_CURRENT_FLAG = 'FUTURE'
GO
