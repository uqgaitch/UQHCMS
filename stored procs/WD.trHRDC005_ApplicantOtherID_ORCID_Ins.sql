USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC005_ApplicantOtherID_ORCID_Ins]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [WD].[trHRDC005_ApplicantOtherID_ORCID_Ins]
AS
begin
insert into wd.HRDC005_ApplicantOtherID
(EmployeeID, 
 CustomID3, 
 CustomID3TypeName, 
 CustomID3Description, 
 zWAMIKey, 
 zSource, 
 zLoadDate)

SELECT    EmployeeID, 
 CustomID3, 
 CustomID3TypeName, 
 CustomID3Description, 
 zWAMIKey, 
 zSource, 
 zLoadDate
FROM        [WD].[trHRDC005_ApplicantOtherID_ORCID_InsSel]
END



GO
