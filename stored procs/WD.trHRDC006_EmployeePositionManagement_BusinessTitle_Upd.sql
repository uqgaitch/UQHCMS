USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC006_EmployeePositionManagement_BusinessTitle_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER Procedure [WD].[trHRDC006_EmployeePositionManagement_BusinessTitle_Upd]
AS
begin
update [WD].[trHRDC006_EmployeePositionManagement_BusinessTitle_UpdSel]
set BusinessTitle = BusinessTitleNew

END
GO
