USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC005_ApplicantOtherID_GOOGLE_SCHOLAR_ID_Ins]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [WD].[trHRDC005_ApplicantOtherID_GOOGLE_SCHOLAR_ID_Ins]
AS
begin
insert into wd.HRDC005_ApplicantOtherID
(EmployeeID, 
 CustomID5, 
 CustomID5TypeName, 
 CustomID5Description, 
 zWAMIKey, 
 zSource, 
 zLoadDate)

SELECT    EmployeeID, 
 CustomID5, 
 CustomID5TypeName, 
 CustomID5Description, 
 zWAMIKey, 
 zSource, 
 zLoadDate
FROM        [WD].[trHRDC005_ApplicantOtherID_GOOGLE_SCHOLAR_ID_InsSel]
END



GO
