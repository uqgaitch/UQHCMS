USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeave_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[tvHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeave_Sel]  AS
select EmployeeID, convert(varchar, dateadd(d,-1,FirstDayOfLeave), 23) as LastDayOfWork, FirstDayOfLeave, ActualLastDayOfLeave 
from (
SELECT
 EmployeeID
, MIN(firstdayofleave) as FirstDayOfLeave
, MAX(ActualLastDayOfLeave) as ActualLastDayOfLeave
FROM
(
    SELECT
     EmployeeID
    , firstdayofleave
    , ActualLastDayOfLeave
    , SUM(start_new_group) OVER (PARTITION BY EmployeeID ORDER BY firstdayofleave, ActualLastDayOfLeave) group_id
    FROM
    (
        SELECT EmployeeID
        , firstdayofleave
        , ActualLastDayOfLeave
        , CASE 	WHEN 
		DATEADD(DAY, -1, firstdayofleave) = LAG(ActualLastDayOfLeave) 
		OVER (PARTITION BY EmployeeID ORDER BY firstdayofleave, ActualLastDayOfLeave) 
		THEN 0 ELSE 1 END AS start_new_group
        FROM wd.HRDC019_EmployeeLeaveOfAbsence  
    ) t
) t2
GROUP BY  EmployeeID, group_id
)A

GO
