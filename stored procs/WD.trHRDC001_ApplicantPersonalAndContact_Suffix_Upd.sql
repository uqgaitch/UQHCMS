USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC001_ApplicantPersonalAndContact_Suffix_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER Procedure [WD].[trHRDC001_ApplicantPersonalAndContact_Suffix_Upd]
AS
begin
update [WD].[trHRDC001_ApplicantPersonalAndContact_Suffix_UpdSel]
set Suffix = SuffixNew, SuffixType = SuffixTypeNew
END





GO
