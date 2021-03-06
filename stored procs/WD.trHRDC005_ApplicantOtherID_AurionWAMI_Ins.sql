USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC005_ApplicantOtherID_AurionWAMI_Ins]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trHRDC005_ApplicantOtherID_AurionWAMI_Ins]
AS
begin
insert into wd.HRDC005_ApplicantOtherID
(EmployeeID, 
 CustomID1,
 CustomID1TypeName, 
 CustomID1Description,
 CustomID1IssuedDate, 
 CustomID1ExpirationDate,
 zWAMIKey, 
 zSource, 
 zLoadDate)

SELECT    EmployeeID, 
 CustomID1,
 CustomID1TypeName, 
  CustomID1Description,
 CustomID1IssuedDate, 
 CustomID1ExpirationDate,
  zWAMIKey, 
 zSource, 
 zLoadDate
FROM        [WD].[trHRDC005_ApplicantOtherID_AurionWAMI_InsSel]
END



GO
