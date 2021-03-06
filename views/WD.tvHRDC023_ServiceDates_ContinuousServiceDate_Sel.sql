USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC023_ServiceDates_ContinuousServiceDate_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[tvHRDC023_ServiceDates_ContinuousServiceDate_Sel]
AS
SELECT WD.EmpScope.WAMIKey, MIN(AUR.T520_LEAVE_TYPE.T520F110_DATE_COMMENCED_TYPE) AS ContinuousServiceDate
FROM   AUR.T520_LEAVE_TYPE INNER JOIN
             WD.EmpScope ON AUR.T520_LEAVE_TYPE.T520F005_EMPLOYEE_NO = WD.EmpScope.EmployeeID
WHERE (AUR.T520_LEAVE_TYPE.T520F010_LEAVE_TYPE_CODE = 'LSLV') AND (WD.EmpScope.zExclude IS NULL)
GROUP BY WD.EmpScope.WAMIKey
GO
