USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[WorkShiftWeek6_001_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure[WD].[WorkShiftWeek6_001_Upd] as

update a

  set workshift = '6',
      WK6_MON = Day1,
	  WK6_TUE = Day2,
	  WK6_WED = Day3,
	  WK6_THU = Day4,
	  WK6_FRI = Day5,
	  WK6_SAT = Day6,
	  WK6_SUN = Day7
from [WD].[WORKSHIFT_TMP] a
inner join [AUR].[WORK_SHIFTS] b
on b.T001F065_ACTUAL_POSITION_NO = a.posnum and T052F015_WEEK_NO = 6
GO
