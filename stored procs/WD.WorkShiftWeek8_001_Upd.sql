USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[WorkShiftWeek8_001_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure[WD].[WorkShiftWeek8_001_Upd] as

update a

  set workshift = '8',
      WK8_MON = Day1,
	  WK8_TUE = Day2,
	  WK8_WED = Day3,
	  WK8_THU = Day4,
	  WK8_FRI = Day5,
	  WK8_SAT = Day6,
	  WK8_SUN = Day7
from [WD].[WORKSHIFT_TMP] a
inner join [AUR].[WORK_SHIFTS] b
on b.T001F065_ACTUAL_POSITION_NO = a.posnum and T052F015_WEEK_NO = 8
GO
