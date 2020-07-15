SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





ALTER view [AUR].[HRDC008_EmployeeCompensationDataMGFoundation_InsSel] as 
select distinct * from(
SELECT 
   T001.T001F005_EMPLOYEE_NO as EmployeeID
 , T001.T001F065_ACTUAL_POSITION_NO as PositionID
 , T001.T001F060_ACTUAL_DATE_EFFECTIVE as EffectiveDate
 , 'Data Migration' as EventCategory
 , 'Data Migration from Aurion' as EventSubcategory
 , 'UQ_Non-Senate_Compensation_Package' as CompensationPackageName
 , 'HEW9' as CompensationGradeName--T001.T001F085_ACTUAL_CLASSIFICATION
 , 'HEW9.4' as CompensationProfileName--T001.T001F095_ACTUAL_INCREMENT
 ,  '' as CompensationStepName
 , 'Base_Salary' as SalaryPayPlanName
 , 'Base_Salary' as SalaryCompensationElementName
 , '100000'as SalaryCompensationElementAmount--T207.T207F025_ANNUAL_RATE
 , 'AUD' as SalaryCurrencyCode
 , 'A' as SalaryFrequencyName
 , '' as SalaryExpectedEndDate
 , '' as HourlyPlanName
 , '' as HourlyCompensationElementName
 , isnull(cast(T207.T207F020_RATE as varchar(max)),'') as HourlyCompensationElementAmount
 , 'AUD' as HourlyCurrencyCode
 , '' as HourlyFrequencyName
 , '' as HourlyExpectedEndDate
 , '' as UnitSalaryPlanName
 , '' as UnitCompensationElementName
 , '' as UnitOfMeasureName
 , '' as PerUnitAmount
 , '' as UnitCurrencyCode
 , '' as NumberOfUnits
 , '' as UnitFrequencyName
 , '' as AllowancePlanName
 , isnull(T909.T909F060_DESCRIPTION,'') as AllowancePlanCompensationElementName
 , isnull(cast(T532.T532F215_PERCENT as varchar(max)),'') as AllowancePlanPercent
 , isnull(cast(T532.T532F120_AMOUNT as varchar(max)),'') as AllowancePlanAmount
 , 'AUD' as AllowancePlanCurrencyCode
 , isnull(T532.T532F050_ARRANGEMENT_TYPE,'') as AllowancePlanFrequencyName
, isnull(T532.T532F020_DATE_TO,'') as AllowancePlanExpectedEndDate
, isnull(T532.T532F015_DATE_FROM,'') as AllowancePlanReimbursementStartDate
 , '' as UnitAllowancePlanName
 , isnull(T909.T909F060_DESCRIPTION,'') as UnitAllowancePlanCompensationElementName
 , isnull(cast(T532.T532F110_UNITS as varchar(max)),'') as UnitAllowanceNumberOfUnits
 , '' as UnitAllowancePlanUnitOfMeasureName
 , isnull(T532.T532F050_ARRANGEMENT_TYPE,'') as UnitAllowancePlanFrequencyName
 , isnull(cast(T532.T532F115_RATE as varchar(max)),'') as UnitAllowancePlanPerUnitAmount
 , 'AUD' as UnitAllowancePlanCurrencyCode
 , isnull(T532.T532F015_DATE_FROM,'')as UnitAllowancePlanReimbursementStartDate
 , '' as BonusPlanName
 , '' as BonusPlanCompensationElementName
 , '' as BonusPlanAmount
 , '' as BonusPlanPercentage
 , '' as BonusPlanGuaranteedMinimum
 , '' as BonusPlanCurrencyCode
 , '' as BonusPlanFrequencyName
 , '' as BonusPlanPercentageAssigned
 , '' as MeritPlanName
 , '' as MeritPlanIndividualTarget
 , '' as MeritPlanGuaranteedMinimum
 , '' as CommissionPlanName
 , '' as CommissionPlanCompensationElementName
 , '' as CommissionPlanTargetAmount
 , '' as CommissionPlanCurrencyCode
 , '' as CommissionPlanFrequencyName
 , '' as CommissionPlanDrawAmount
 , '' as CommissionPlanFrequencyNameForDrawAmount
 , '' as CommissionPlanDrawDuration
 , '' as CommissionPlanRecoverable
 , '' as StockPlanName
 , '' as StockIndividualTargetShare
 , '' as StockIndividualTargetPercent
 , '' as StockIndividualTargetAmount
 , '' as StockCurrency
 , '' as StockFrequency
 , '' as PeriodSalaryPlanName
 , '' as PeriodSalaryCompensationElementName
 , '' as PeriodSalaryCompensationPeriod 
 , '' as PeriodSalaryCurrency
 , '' as PeriodSalaryCompensationMultiplier
 , '' as PeriodSalaryFrequency



FROM [AUR].[T001_BASIC_DETAILS] T001
left JOIN AUR.T101_POSITION T101
ON T001.T001F065_ACTUAL_POSITION_NO = T101F005_POSITION_NO
left JOIN [AUR].[T520_LEAVE_TYPE] T520
ON T001.T001F005_EMPLOYEE_NO = T520.T520F005_EMPLOYEE_NO
left JOIN [AUR].[T028_PROBATION_HISTORY] T028
ON T001.T001F005_EMPLOYEE_NO = T028.T028F005_EMPLOYEE_NO

left JOIN AUR.T207ClassificationRate_CurrentRatesSel T207 
on T207.T207F005_CLASSIFICATION_CODE = T001.T001F095_ACTUAL_INCREMENT

left JOIN [WD].[svT532_STANDING_ARRANGEMENTActive_Sel] T532
ON T001.T001F005_EMPLOYEE_NO = T532.T532F005_EMPLOYEE_NO

left JOIN [AUR].[T909_ALLOWANCE_DEDUCTION_CODES] T909 
ON T532.T532F045_ALLOW_DEDN_CODE  = T909.T909F005_CODE
inner join [AUR].[HRDC006_EmployeePositionManagementMGFoundation_InsSel] mg
on mg.EmployeeID= t001.T001F005_EMPLOYEE_NO
WHERE  T001F015_EMPLOYEE_STATUS = 'ACTIVE'        ) a                      

--SELECT * FROm AUR.T207ClassificationRate_CurrentRatesSel 

--SELECT * FROM AUR.T532_STANDING_ARRANGEMENT

--SELECT * FROM [AUR].[T909_ALLOWANCE_DEDUCTION_CODES]
GO
