USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PBI].[ApplicantWithNoDOB]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
ALTER view [PBI].[ApplicantWithNoDOB] as

SELECT [EmployeeID]
      ,[DateOfBirth] as 'T000F110_DATE_OF_BIRTH' 

  FROM [DQS_STAGING_DATA].[WD].[HRDC004_ApplicantBiographic]

  where DateOfBirth is null
GO
