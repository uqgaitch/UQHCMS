USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [DD].[SupervisoryOrganisations_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [DD].[SupervisoryOrganisations_Upd]
AS
begin
update [DD].SupervisoryOrganisations_UpdSel
set [Value] = zNewValue
END
GO
