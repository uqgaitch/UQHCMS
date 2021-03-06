USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PBI].[NoDefaultHours]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
ALTER view [PBI].[NoDefaultHours] as


SELECT [EmployeeID]
      ,[FullName]
 
      ,[DefaultWeeklyHours] as 'T101F095_HOURS_PER_WEEK'
      ,[ScheduledWeeklyHours] as 'T001F315_HOURS_PER_WEEK'
  FROM [DQS_STAGING_DATA].[WD].[HRDC006_EmployeePositionManagement]


  where DefaultWeeklyHours is null
GO
