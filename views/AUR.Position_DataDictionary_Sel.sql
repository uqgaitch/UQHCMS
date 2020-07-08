SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
ALTER view [AUR].[Position_DataDictionary_Sel] as

SELECT [T101F005_POSITION_NO]
      , [T101F005_POSITION_NO] as legPosNum 
      , 'POS'+[T101F005_POSITION_NO] as ReferenceID
	  , 'SUP' + RIGHT(CONCAT('000000',[T101F015_ORGANISATION_UNIT_NO]),7) as SupervisoryOrgId
	  ,  'POS'+[T101F005_POSITION_NO] as PositionID
      , [T101F045_POSITION_TITLE] as JobPostingTitle
	  , T110.T110F010_JOB_TITLE as JobTitle
	  , '' as additionalJob
      ,[T101F050_FULL_TITLE] as PositionBusinessTitle
	  , '' as JobDescSumm
	  , '' as JobDesc
	  , '' as CiticalJobYN
	  , [T101F060_DATE_APPROVED] as AvailablilityDate
	  , [T101F060_DATE_APPROVED] as EarliestHireDate
	  , t110.T110F020_JOB_FAMILY as JobFamilyID
	  , '' as JobProfileID
	  , [T101F035_LOCATION_CODE] as LocationID
	  ,[T101F080_POSITION_TYPE] as WorkerTypeID
      ,[T101F090_ATTENDANCE_TYPE] as PositionTypeID


  FROM [AUR].[T101_POSITION] T101
  inner join [AUR].[T110_JOB_CODE] T110
  ON T101.T101F135_JOB_CODE = t110.T110F005_JOB_CODE

    WHERE T101F010_POSITION_STATUS = 'ACTIVE'
GO
