SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [dbo].[AUR_FormerWorkers_Sel] as 

SELECT T001F010_WAMI_KEY, MAX(T001F265_DATE_TERMINATED) as DATE_TERMINATED, 
MAX(T001F250_DATE_COMMENCED) as LAST_DATE_COMMENCED, MIN(T001F251_ORIGINAL_DATE_COMM) AS ORIGINAL_DATE_COMMENCED
, min(T001F005_EMPLOYEE_NO) as EmployeeID, T000F110_DATE_OF_BIRTH,
--T104F040_POSITION_NO, T104F125_JOB_CODE, T104F115_TITLE,

T000F030_SALUTATION, T000F020_GIVEN_NAMES, T000F015_SURNAME


FROM AUR.T000_WAMI T000
INNER JOIN  
AUR.T001_BASIC_DETAILS T001
on t000.T000F005_WAMI_KEY = t001.T001F010_WAMI_KEY
--inner join [AUR].[T104_EMPLOYMENT_HISTORY] t104 on t001.T001F005_EMPLOYEE_NO = t104.T104F005_EMPLOYEE_NO
where 
T001F015_EMPLOYEE_STATUS <> 'ACTIVE' and T001F010_WAMI_KEY NOT IN
(SELECT T001F010_WAMI_KEY FROM AUR.T001_BASIC_DETAILS where T001F015_EMPLOYEE_STATUS = 'ACTIVE')
--AND T001F265_DATE_TERMINATED >= DATEADD(year, -1, GETDATE())
GROUP BY T001F010_WAMI_KEY, T000F030_SALUTATION, T000F020_GIVEN_NAMES, T000F015_SURNAME
, T001F005_EMPLOYEE_NO, T000F110_DATE_OF_BIRTH
--order by T000F110_DATE_OF_BIRTH
--, T104F040_POSITION_NO, T104F125_JOB_CODE, T104F115_TITLE
--4366

--SELECT * FROM [AUR].[T104_EMPLOYMENT_HISTORY] where T104F005_EMPLOYEE_NO like '1027%'
GO
