SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [AUR].[HRDC006_EmployeePositionManagementMGFoundation_InsSel] as 

SELECT distinct * FROM(
SELECT distinct
   T001.T001F005_EMPLOYEE_NO as EmployeeID
 , T001.T001F345_NAME_FOR_HEADINGS as FullName
 , T001.T001F220_EMPLOYMENT_TYPE as EmployeeTypeName
 , '' as AcademicTenureEligibility
 , isnull(T001.T001F250_DATE_COMMENCED,'') as HireDate -- or T001F251_ORIGINAL_DATE_COMM
 , '' as ContinuousServiceDate--T520_LEAVE_TYPE --with Leave Type = LSLV.T520F110_DATE_COMMENCED_TYPE
 , isnull(T001F251_ORIGINAL_DATE_COMM,'') as ProbationStartDate
 --, case when T028.T028F015_PROBATION_DATE>T001F251_ORIGINAL_DATE_COMM then T028.T028F015_PROBATION_DATE else '9999-12-31' end as ProbationEndDate
 --,DATEADD(mm,6,T001F251_ORIGINAL_DATE_COMM) as ProbationEndDate
 , isnull(T028.T028F015_PROBATION_DATE,DATEADD(mm,6,T001F251_ORIGINAL_DATE_COMM)) as ProbationEndDate
 , '' as EndEmploymentDate--isnull(CASE WHEN T001.T001F062_ACTUAL_DATE_TO IS NOT NULL THEN T001.T001F062_ACTUAL_DATE_TO WHEN T001.T001F062_ACTUAL_DATE_TO IS NULL THEN T001.T001F260_CONTRACT_EXPIRY_DATE END,'9999-12-31') 
 , isnull(T001F060_ACTUAL_DATE_EFFECTIVE,'') as PositionStartDateForConversion--previously it was T001.T001F352_ADMIN_PAYROLL_FROM
 ,'' as BenefitServiceDate
 , isnull(T001.T001F480_ADMIN_LEAVE_FROM,'') as CompanyServiceDate
 , T101.T101F015_ORGANISATION_UNIT_NO as SupervisoryOrganisationPositionManagementOrg
 , isnull(cc.COST_CENTRE,'602340101 – 10101') as CostCenterOrganisation--default
 , 'UQ' as CompanyOrganisation
 , ''as RegionOrganisation--T101.T101F035_LOCATION_CODE
 , '' as MatrixOrganisation 
 , '' as BusinessUnitOrganisation
 , '' as CustomOrganization1 
 , '' as CustomOrganization2 
 , '' as CustomOrganization3
 , '' as CustomOrganization4
 ,T001.T001F065_ACTUAL_POSITION_NO as JobPositionID
 , T001.T001F100_ACTUAL_JOB_TITLE as JobPositionTitle
 , [Job Profile ID] as JobCode
 , T101.T101F045_POSITION_TITLE as PositionTitle
 , T101.T101F050_FULL_TITLE as BusinessTitle
 , T001.T001F135_ACTUAL_LOCATION_CODE as [Location]
 , '' as WorkSpace
 ,  T001.T001F230_ATTENDANCE_TYPE as TimeType
,isnull(SUBSTRING(T101.T101F095_HOURS_PER_WEEK,1,2)+'.'+replace(left(round((100.0 / 60.0) *substring(T101.T101F095_HOURS_PER_WEEK,4,2) ,2),2),'.',0),'36.25') as DefaultWeeklyHours--empID=2208395 is null with defaultweeklyhours
,SUBSTRING(T001.T001F315_HOURS_PER_WEEK,1,2)+'.'+replace(left(round((100.0 / 60.0) *substring(T001.T001F315_HOURS_PER_WEEK,4,2) ,2),2),'.','0') as ScheduledWeeklyHours
 , case when T001.T001F230_ATTENDANCE_TYPE='CASUAL' then 'Hourly' else  'Salary'  end as PayTypeName--this assumption is only for foundation
 , T101.T101F020_CLASSIFICATION as AdditionalJobClassificationName
 , '' as CriticalJob
 , '' as DifficultyToFill
 , '' as CompanyInsiderTypeName
 , '' as AnnualWorkPeriodName
 , '' as DisbursementPlanPeriodName
 , '' as WorkHoursProfileDescription--T001.T001F120_ACTUAL_JOB_CODE
 , 'WS00002' as WorkShiftName--default
 , '' as CountryISOCode
 , '' as CountryRegionName
 , '' as HireReason
 , '' as InternationalAssignmentTypes 
 , '' as InternationalAssignmentReason
 , '' as AdditionalPosition
 , '' as EmployeeContractType-- T001.T001F220_EMPLOYMENT_TYPE
 , '' as EmployeeContractStatus
 , '' as ContractDescription
 , '' as ContractEffectiveDate--T001.T001F060_ACTUAL_DATE_EFFECTIVE
 , '' as ContractStartDate --T001.T001F060_ACTUAL_DATE_EFFECTIVE
 
FROM (select bd.*, b.[Job Profile ID] from [AUR].[T001_BASIC_DETAILS] bd
inner JOIN (SELECT  [Back to ToC]
 ,[Position ID]
,[Job Profile ID]
  FROM [DQS_STAGING_DATA].[DD].[ddPositions] WHERE [Job Profile ID]<>'') b
  on b.[Back to ToC]= bd.T001F065_ACTUAL_POSITION_NO
)

T001
inner JOIN AUR.T101_POSITION T101
ON T001.T001F065_ACTUAL_POSITION_NO = T101F005_POSITION_NO
INNER JOIN (select max(T001F005_EMPLOYEE_NO) as EmployeeID
,T001F065_ACTUAL_POSITION_NO as PositionNo
FROM [AUR].[T001_BASIC_DETAILS] T001
where T001F015_EMPLOYEE_STATUS <> 'TERMINATED' 
group by T001F065_ACTUAL_POSITION_NO) H006
ON H006.PositionNo=T001.T001F065_ACTUAL_POSITION_NO and t001.T001F005_EMPLOYEE_NO=h006.EmployeeID
inner  JOIN [AUR].[T520_LEAVE_TYPE] T520
ON T001.T001F005_EMPLOYEE_NO = T520.T520F005_EMPLOYEE_NO
left JOIN 
(
select ph.* from
[AUR].[T028_PROBATION_HISTORY] ph
inner join (select max([T028F015_PROBATION_DATE]) ProbationEndDate, T028F005_EMPLOYEE_NO from [AUR].[T028_PROBATION_HISTORY] 
group by T028F005_EMPLOYEE_NO) a
on a.T028F005_EMPLOYEE_NO=ph.T028F005_EMPLOYEE_NO and a.ProbationEndDate=ph.[T028F015_PROBATION_DATE])
T028
ON T001.T001F005_EMPLOYEE_NO = T028.T028F005_EMPLOYEE_NO
left join AUR.svPositionToCostCentreAURION_Sel cc
on cc.T123F005_POSITION_NO=T101.T101F005_POSITION_NO
WHERE 
 T001F015_EMPLOYEE_STATUS <> 'TERMINATED') a

GO
