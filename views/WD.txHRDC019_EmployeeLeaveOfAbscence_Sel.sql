USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC019_EmployeeLeaveOfAbscence_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





ALTER view [WD].[txHRDC019_EmployeeLeaveOfAbscence_Sel]  AS
SELECT        
isnull(EmployeeID,'') as EmployeeID
,isnull(zTimeCode, '') as LeaveTypeName
, isnull(LastDateForWhichPaid, '') as LastDayOfWork  -- Commented out as this doesn't seem to be a mandatory field anymore
,isnull(FirstDayOfLeave, '') as FirstDayOfLeave
,isnull(EstimatedLastDayOfLeave,'') as EstimatedLastDayOfLeave
,isnull(LastDateForWhichPaid,'') as LastDateForWhichPaid
,isnull(ExpectedDueDate,'') as ExpectedDueDate
,isnull(ChildsBirthDate,'') as ChildsBirthDate
,isnull(DateBabyArrivedHomeFromHospital,'') as DateBabyArrivedHomeFromHospital
,isnull(AdoptionPlacementDate,'') as AdoptionPlacementDate
,isnull(MultipleChildIndicator,'') as MultipleChildIndicator
,isnull(NumberOfBabiesAdoptedChildren,'') as NumberOfBabiesAdoptedChildren
,isnull(NumberOfPreviousBirths,'') as NumberOfPreviousBirths
,isnull(NumberOfPreviousMaternityLeaves,'') as NumberOfPreviousMaternityLeaves
,isnull(NumberOfChildDependents,'') as NumberOfChildDependents
,isnull(SingleParentIndicator,'') as SingleParentIndicator
,isnull(AgeOfDependent,'') as AgeOfDependent
,isnull(FirstDayOfWork,'') as FirstDayOfWork
,isnull(ActualLastDayOfLeave,'') as ActualLastDayOfLeave
FROM            WD.HRDC019_EmployeeLeaveOfAbsence where zExclude is null

GO
