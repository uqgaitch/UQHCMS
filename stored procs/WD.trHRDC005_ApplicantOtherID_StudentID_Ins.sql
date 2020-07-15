USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC005_ApplicantOtherID_StudentID_Ins]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [WD].[trHRDC005_ApplicantOtherID_StudentID_Ins]
AS
begin
insert into wd.HRDC005_ApplicantOtherID
(EmployeeID, 
 CustomID2,
 CustomID2TypeName, 
 
 zWAMIKey, 
 zSource, 
 zLoadDate)

SELECT    EmployeeID, 
 CustomID2,
 CustomID2TypeName, 
 
  zWAMIKey, 
 zSource, 
 zLoadDate
FROM        [WD].[trHRDC005_ApplicantOtherID_StudentID_InsSel]
END



GO
