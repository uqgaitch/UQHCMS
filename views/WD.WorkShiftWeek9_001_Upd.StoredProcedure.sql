USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[WorkShiftWeek9_001_Upd]    Script Date: 8/07/2020 5:23:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc [WD].[WorkShiftWeek9_001_Upd] as

update a

  set workshift = '9',
      WK9_MON = Day1,
	  WK9_TUE = Day2,
	  WK9_WED = Day3,
	  WK9_THU = Day4,
	  WK9_FRI = Day5,
	  WK9_SAT = Day6,
	  WK9_SUN = Day7
from [WD].[WORKSHIFT_TMP] a
inner join [AUR].[WORK_SHIFTS] b
on b.T001F065_ACTUAL_POSITION_NO = a.posnum and T052F015_WEEK_NO = 9


GO
