USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[WorkShiftWeek2_001_Ins]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure[WD].[WorkShiftWeek2_001_Ins] as 

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
		   , WS_ID
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
	  , null as WS_ID
	  , getdate()
from [AUR].[WORK_SHIFTS] where T001F065_ACTUAL_POSITION_NO

not in (select posnum from [WD].[WORKSHIFT_TMP]) and T052F015_WEEK_NO = 1
GO
