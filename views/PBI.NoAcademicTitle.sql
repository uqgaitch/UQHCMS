USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PBI].[NoAcademicTitle]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
ALTER view [PBI].[NoAcademicTitle] as
SELECT [EmployeeID]
      ,[FullName]
      ,[Prefix]
   
  FROM [DQS_STAGING_DATA].[WD].[HRDC001_ApplicantPersonalAndContact]

  where prefix not in ('Ms','Mr','Miss','Mrs','Mx')
GO
