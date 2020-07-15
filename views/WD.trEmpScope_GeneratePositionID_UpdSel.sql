USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_GeneratePositionID_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER VIEW [WD].[trEmpScope_GeneratePositionID_UpdSel]  AS
select     wd.empscope.WAMIKey, EmployeeID, wd.empscope.PositionID, PositionPrefix + dbo.padnum(ROW_NUMBER() 
OVER(PARTITION BY zsource ORDER BY wd.empscope.PositionID),5) as PositionIDNew,
zPositionToBeCreated, 'X' as zPositionToBeCreatedNew
from wd.empscope  
cross join WD.PARAM
where zexclude is null and zwdloadsuccess is null and zDupPosition = 'X'
GO
