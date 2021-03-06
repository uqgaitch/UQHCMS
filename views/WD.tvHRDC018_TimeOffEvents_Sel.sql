USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC018_TimeOffEvents_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[tvHRDC018_TimeOffEvents_Sel]  AS
with cte AS (SELECT T522F005_EMPLOYEE_NO,T522F040_DATE_FROM,T522F045_DATE_TO,
T522F015_LEAVE_TYPE,
T522F195_PERIOD_HOURS, T522F010_TRANS_NO, WAMIKey,T522F025_TIME_CODE
              FROM aur.T522_LEAVE_OCCURRENCE 
			  inner join wd.empscope on wd.empscope.EmployeeID = aur.T522_LEAVE_OCCURRENCE.T522F005_EMPLOYEE_NO 
			  cross join wd.param
			  where 
				(
					(T522F040_DATE_FROM >= GoLiveDate )
					
				)
					
			  and zexclude is null 
			  UNION  ALL
              SELECT T522F005_EMPLOYEE_NO
                    ,DATEADD(day,1,T522F040_DATE_FROM) 
                    ,T522F045_DATE_TO
					,T522F015_LEAVE_TYPE
					,T522F195_PERIOD_HOURS
					,T522F010_TRANS_NO
					,WAMIKey
					,T522F025_TIME_CODE
              FROM cte
              WHERE 
				T522F040_DATE_FROM < T522F045_DATE_TO )


SELECT T522F005_EMPLOYEE_NO as EmployeeID,
T522F040_DATE_FROM as TimeOffDate, 
T522F195_PERIOD_HOURS as TimeOffUnits,
T522F015_LEAVE_TYPE TimeOffTypeNameOrCode, 
T522F045_DATE_TO as zDateTo, 
T522F010_TRANS_NO as zTransNo,
WAMIKey,
T522F025_TIME_CODE as zTimeCode
FROM cte



GO
