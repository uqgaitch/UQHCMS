USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC006_EmployeePositionManagement_SubsSecondmentRemoveAdditionalPosition_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [WD].[trHRDC006_EmployeePositionManagement_SubsSecondmentRemoveAdditionalPosition_Upd]
AS
begin
update [WD].[trHRDC006_EmployeePositionManagement_SubsSecondmentRemoveAdditionalPosition_UpdSel]
set AdditionalPosition = AdditionalPositionNew
END
GO
