USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC006_EmployeePositionManagement_WorkShift_Week1_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trHRDC006_EmployeePositionManagement_WorkShift_Week1_Upd]
AS

update a 
set WorkShiftName = WS_ID
 FROM WD.HRDC006_EmployeePositionManagement a
inner join WD.trHRDC006_EmployeePositionManagement_WorkShift_Week1_UpdSel b
on a.JobPositionID = b.[T001F065_ACTUAL_POSITION_NO]

GO
