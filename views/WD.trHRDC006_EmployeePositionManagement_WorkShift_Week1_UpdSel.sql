USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC006_EmployeePositionManagement_WorkShift_Week1_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trHRDC006_EmployeePositionManagement_WorkShift_Week1_UpdSel] as 
--with cte as (select [T001F065_ACTUAL_POSITION_NO] as posNo from [AUR].[WORK_SHIFTS] a group by T001F065_ACTUAL_POSITION_NO having count(*) = 1),
--     multi as (select [T001F065_ACTUAL_POSITION_NO] as posNo from [AUR].[WORK_SHIFTS] a group by T001F065_ACTUAL_POSITION_NO having count(*) <> 1)

with cte as (SELECT T001F065_ACTUAL_POSITION_NO as PosNum, count(*) as WEEK_NUMBERS FROM AUR.WORK_SHIFTS
group by T001F065_ACTUAL_POSITION_NO)


SELECT distinct 
      [T001F065_ACTUAL_POSITION_NO]
      ,[T052F015_WEEK_NO]
      ,[DAY1]
      ,[DAY2]
      ,[DAY3]
      ,[DAY4]
      ,[DAY5]
      ,[DAY6]
      ,[DAY7]
	 , b.WS_ID
  FROM [AUR].[WORK_SHIFTS] a inner join 
  [AUR].[WorkShift_Mappings] b on CONCAT(isnull(DAY1,'X'),isnull(DAY2,'X'),isnull(DAY3,'X'),isnull(DAY4,'X'),isnull(DAY5,'X'),isnull(DAY6,'X'),isnull(DAY7,'X'))
  = CONCAT(isnull(W1_MON,'X'),isnull(W1_TUE,'X'),isnull(W1_WED,'X'),isnull(W1_THU,'X'),isnull(W1_FRI,'X'),isnull(W1_SAT,'X'),isnull(W1_SUN,'X'))
  and left(name,1) = T052F015_WEEK_NO
  inner join cte on posNum = a.T001F065_ACTUAL_POSITION_NO
  where WEEK_NUMBERS = 1
GO
