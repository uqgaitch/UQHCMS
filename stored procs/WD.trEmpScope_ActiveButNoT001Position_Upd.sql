USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trEmpScope_ActiveButNoT001Position_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trEmpScope_ActiveButNoT001Position_Upd]
AS
begin
update [WD].[trEmpScope_ActiveButNoT001Position_UpdSel]
set PositionID = PositionIDNew
,ActualDateEffective = ActualDateEffectiveNew
,AttendanceType = AttendanceTypeNew
,EmploymentType = EmploymentTypeNew
,ActualDateTo = ActualDateToNew
,zHireType = zHireTypeNew



END
GO
