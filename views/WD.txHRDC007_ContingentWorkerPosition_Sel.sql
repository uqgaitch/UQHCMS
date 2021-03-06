USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC007_ContingentWorkerPosition_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER view [WD].[txHRDC007_ContingentWorkerPosition_Sel]
as
SELECT 
 isnull([ContingentWorkerID],'') as [ContingentWorkerID]
,isnull([PositionID],'') as [PositionID]
,isnull([FullName],'') as [FullName]
,isnull([SupplierName],'') as [SupplierName]
,isnull([ContingentWorkerTypeName],'') as [ContingentWorkerTypeName]
,isnull([ContractBeginDate],'') as [ContractBeginDate]
,isnull([ContractEndDate],'') as [ContractEndDate]
,isnull([PositionStartDateForConversion],'') as [PositionStartDateForConversion]
,isnull([SupervisoryOrganisationPositionManagementOrg],'') as [SupervisoryOrganisationPositionManagementOrg]
,isnull([CostCenterOrganisation],'') as [CostCenterOrganisation]
,isnull([CompanyOrganisation],'') as [CompanyOrganisation]
,isnull([RegionOrganisation],'') as [RegionOrganisation]
,isnull([MatrixOrganisation],'') as [MatrixOrganisation]
,isnull([BusinessUnitOrganisation],'') as [BusinessUnitOrganisation]
,isnull([CustomOrganization1],'') as [CustomOrganization1]
,isnull([CustomOrganization2],'') as [CustomOrganization2]
,isnull([CustomOrganization3],'') as [CustomOrganization3]
,isnull([CustomOrganization4],'') as [CustomOrganization4]
,isnull([JobPositionTitle],'') as [JobPositionTitle]
,isnull([JobCode],'') as [JobCode]
,isnull([PositionTitle],'') as [PositionTitle]
,isnull([BusinessTitle],'') as [BusinessTitle]
,isnull([Location],'') as [Location]
,isnull([WorkSpace],'') as [WorkSpace]
,isnull([TimeType],'') as [TimeType]
,isnull([DefaultWeeklyHours],'') as [DefaultWeeklyHours]
,isnull([ScheduledWeeklyHours],'') as [ScheduledWeeklyHours]
,isnull([AdditionalJobClassificationName],'') as [AdditionalJobClassificationName]
,isnull([CriticalJob],'') as [CriticalJob]
,isnull([DifficultyToFill],'') as [DifficultyToFill]
,isnull([CompanyInsiderTypeName],'') as [CompanyInsiderTypeName]
,isnull([AnnualWorkPeriodName],'') as [AnnualWorkPeriodName]
,isnull([DisbursementPlanPeriodName],'') as [DisbursementPlanPeriodName]
,isnull([WorkHoursProfileDescription],'') as [WorkHoursProfileDescription]
,isnull([WorkShiftName],'') as [WorkShiftName]
,isnull([CountryISOCode],'') as [CountryISOCode]
,isnull([CountryRegionName],'') as [CountryRegionName]
,isnull([HireReason],'') as [HireReason]
,isnull([PositionRequestReason],'') as [PositionRequestReason]
FROM [DQS_STAGING_DATA].[WD].[HRDC007_ContingentWorkerPosition]
where zExclude is null
GO
