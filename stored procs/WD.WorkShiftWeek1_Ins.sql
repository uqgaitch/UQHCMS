USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[WorkShiftWeek1_Ins]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--truncate table [WD].[WORKSHIFT_TMP]

ALTER Procedure[WD].[WorkShiftWeek1_Ins] as 

INSERT INTO [WD].[WORKSHIFT_TMP]
           ([PosNum]
           ,[WorkShift]
           ,[WK1_MON]
           ,[WK1_TUE]
           ,[WK1_WED]
           ,[WK1_THU]
           ,[WK1_FRI]
           ,[WK1_SAT]
           ,[WK1_SUN]
		   ,WS_ID
		   ,loadDate)




	SELECT distinct [T001F065_ACTUAL_POSITION_NO]
      ,T052F015_WEEK_NO
      ,[DAY1]
      ,[DAY2]
      ,[DAY3]
      ,[DAY4]
      ,[DAY5]
      ,[DAY6]
      ,[DAY7]
	  , b.WS_ID
	  , getdate()
 FROM [AUR].[WORK_SHIFTS] a
 inner join 
  [AUR].[WorkShift_Mappings] b on CONCAT(isnull(DAY1,'X'),isnull(DAY2,'X'),isnull(DAY3,'X'),isnull(DAY4,'X'),isnull(DAY5,'X'),isnull(DAY6,'X'),isnull(DAY7,'X'))
  = CONCAT(isnull(W1_MON,'X'),isnull(W1_TUE,'X'),isnull(W1_WED,'X'),isnull(W1_THU,'X'),isnull(W1_FRI,'X'),isnull(W1_SAT,'X'),isnull(W1_SUN,'X'))
  and LEFT(b.NAME,1) = T052F015_WEEK_NO
 where T052F015_WEEK_NO = 1
GO
