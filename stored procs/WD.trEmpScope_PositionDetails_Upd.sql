USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trEmpScope_PositionDetails_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





ALTER Procedure [WD].[trEmpScope_PositionDetails_Upd]
AS
begin
update [WD].[trEmpScope_PositionDetails_UpdSel]
set PositionStatus = PositionStatusNew,
PositionType = PositionTypeNew,
OrgUnitID = OrgUnitIDNew,
LocationCode = LocationCodeNew


END
GO
