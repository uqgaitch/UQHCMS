USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC023_ServiceDates_EndEmploymentDate_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trHRDC023_ServiceDates_EndEmploymentDate_Upd]
AS
begin
update [WD].[trHRDC023_ServiceDates_EndEmploymentDate_UpdSel]
set EndEmploymentDate = EndEmploymentDateNew


END
GO
