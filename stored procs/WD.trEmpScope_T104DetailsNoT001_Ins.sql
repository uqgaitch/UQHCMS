USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trEmpScope_T104DetailsNoT001_Ins]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trEmpScope_T104DetailsNoT001_Ins]
AS
begin
insert into [wd].[EmpScope]
(
WAMIKey
,EmployeeID
,EmployeeStatus 
,PositionID
,ActualDateEffective
,ActualDateTo
,EmploymentType
,AttendanceType
,AwardCode
,zHireType
,zSource
,zLoadDate
,Surname
,FirstName
)
select  
WAMIKey
,EmployeeID
,EmployeeStatus 
,PositionID
,ActualDateEffective
,ActualDateTo
,EmploymentType
,AttendanceType
,AwardCode
,zHireType
,zSource
,zLoadDate
,Surname
,FirstName
from [WD].[trEmpScope_T104DetailsNoT001_InsSel]
END


GO
