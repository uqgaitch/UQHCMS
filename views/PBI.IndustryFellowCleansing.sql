USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PBI].[IndustryFellowCleansing]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
ALTER view [PBI].[IndustryFellowCleansing] as

SELECT [T104F005_EMPLOYEE_NO]
      ,[T104F010_SORT_KEY]
      ,[T104F015_OCCUPANCY_TYPE]
      ,[U_VERSION]
      ,[T104F020_MOVEMENT_CODE]
      ,[T104F025_DATE_EFFECTIVE]
      ,[T104F030_DATE_TO]
      ,[T104F035_CONNECT_DATE_TO]
      ,[T104F040_POSITION_NO]
      ,[T104F045_ORGANISATION_UNIT_NO]
      ,[T104F050_CLASSIFICATION]
      ,[T104F055_INCREMENT_POINT]
      ,[T104F060_NONSUBS_PERCENT]
      ,[T104F065_CURRENT_FLAG]
      ,[T104F070_LO]
      ,[T104F075_LOCATION_CODE]
      ,[T104F080_ET]
      ,[T104F085_EMPLOYMENT_TYPE]
      ,[T104F090_AT]
      ,[T104F095_ATTENDANCE_TYPE]
      ,[T104F100_PT]
      ,[T104F105_REPORTING_CATEGORY]
      ,[T104F110_ORGANISATION_UNIT_LOW]
      ,[T104F115_TITLE]
      ,[T104F120_COMMENTS]
      ,[T104F125_JOB_CODE]
      ,[T104F130_CP]
      ,[T104F135_PRIMARY_COST_CODE]
      ,[T104F140_ALT_INCREMENT]
      ,[T104F145_ALT_PERCENT]
      ,[T104F150_CV_COMMENTS]
      ,[T104F155_VIS_IN_CV]
      ,[T104F980_CREATE_DATE_TIME]
      ,[T104F985_CREATE_USER_STAMP]
      ,[T104F990_MODIFY_DATE_TIME]
      ,[T104F995_MODIFY_USER_STAMP]
	    ,case 	
	when T104F050_CLASSIFICATION in ('ZHON0A', 'ZHON0B', 'ZHON0C','ZHON0D','ZHON0E')
	and T104F085_EMPLOYMENT_TYPE not in ('hon', 'Honor')
	Then 'HonoraryCleansing'
	
	when T104F050_CLASSIFICATION in ('ZAJD0A','ZAJD0B','ZAJD0C','ZAJD0D','ZAJD0E')
	and T104F085_EMPLOYMENT_TYPE not in ('ADJUN', 'ADJNCT','adj')
	Then 'AdjunctCleansing'
	
	when  T104F050_CLASSIFICATION in ('ZCON0A','ZCON0B','ZCON0C' ,'ZCON0D','ZCON0E')
	and T104F085_EMPLOYMENT_TYPE not in ('CONJNT')
	then 'ConjointCleansing'
	
	when T104F050_CLASSIFICATION in ('ZSECAA' ,'ZSECAB' ,'ZSECAC' ,'ZSECAD','ZSECAE')
	and T104F085_EMPLOYMENT_TYPE not in ('SECOND')
	Then 'AcademicSecondmentCleansing'
	
	
	when T104F050_CLASSIFICATION in ('ZSECHE')
	and T104F085_EMPLOYMENT_TYPE not in ('SECOND')
	then 'ProfessionalSecondmentCleansing'
	
	when T104F050_CLASSIFICATION in ('ZAFA','ZAFB','ZAFC','ZAFD','ZAFE')
	and T104F085_EMPLOYMENT_TYPE not in ('AFFIL')
	then 'AffiliateCleansing'
	
	when T104F050_CLASSIFICATION in ('ZEMER')
	and T104F085_EMPLOYMENT_TYPE not in ('EMPROF')
	then 'EmeritusCleansing'
	
	when T104F050_CLASSIFICATION in ('ZINDFL')
	and T104F085_EMPLOYMENT_TYPE not in ('HONOR')
	then 'IndustryFellowCleansing'
	
	when T104F050_CLASSIFICATION in ('ZRTCHA','ZRTCHB','ZRTCHC','ZRTCHD','ZRTCHE')
	and T104F085_EMPLOYMENT_TYPE not in ('AFFIL')
	then 'ResTeachCleansing'
	
	when T104F050_CLASSIFICATION in ('ZTRAIN')
	and T104F085_EMPLOYMENT_TYPE not in ('UPTRAN')
	then 'OccupationalTraineeCleansing'
	
	when T104F050_CLASSIFICATION in ('ZVISFS','ZVISPR')
	and T104F085_EMPLOYMENT_TYPE not in ('VIST')
	then 'VisitingAcademicCleansing'
	
	else ''
	end as 'CleansingReason'

  FROM [DQS_STAGING_DATA].[AUR].[T104_EMPLOYMENT_HISTORY]

  where T104F065_CURRENT_FLAG in ('current','future')
GO
