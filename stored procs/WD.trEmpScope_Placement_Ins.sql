USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trEmpScope_Placement_Ins]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [WD].[trEmpScope_Placement_Ins]
AS
begin
insert into [wd].[EmpScopePlacement]
(
WAMIKey, 
EmployeeID, 
PositionID, 
SortKey,
OccupancyType, 
PlacementID, 
DateEffective, 
DateTo, 
[Classification], 
IncrementPoint, 
Title,
CurrentFlag,
zExclude, 
zExcludeReason, 
zSource, 
zLoadDate

)
  
SELECT        
WAMIKey, 
EmployeeID, 
PositionID, 
SortKey,
OccupancyType, 
PlacementID, 
DateEffective, 
DateTo, 
[Classification], 
IncrementPoint, 
Title,
CurrentFlag,
zExclude, 
zExcludeReason, 
zSource, 
zLoadDate
from [WD].[trEmpScope_Placement_InsSel]
END


GO
