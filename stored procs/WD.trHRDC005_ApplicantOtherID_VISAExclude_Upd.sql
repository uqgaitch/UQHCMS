USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC005_ApplicantOtherID_VISAExclude_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trHRDC005_ApplicantOtherID_VISAExclude_Upd]
AS
begin
UPDATE [trHRDC005_ApplicantOtherID_VISAExclude_UpdSel]
set zExclude = zExcludeNew,
zExcludeReason = zExcludeReasonNew
END



GO
