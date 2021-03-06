USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC024_PaymentElectionsEnrolment_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[txHRDC024_PaymentElectionsEnrolment_Sel]
as
SELECT 
 isnull([EmployeeID],'') as [EmployeeID]
,isnull([CountryISOCode],'') as [CountryISOCode]
,isnull([CurrencyID],'') as [CurrencyID]
,isnull([RowNum],'') as [RowNum]
,isnull([UsedForPayrollOrExpenses],'') as [UsedForPayrollOrExpenses]
,isnull([OrderPriority],'') as [OrderPriority]
,isnull([PaymentType],'') as [PaymentType]
,isnull([BankAccountName],'') as [BankAccountName]
,isnull([BankAccountNickname],'') as [BankAccountNickname]
,isnull([BankAccountNumber],'') as [BankAccountNumber]
,isnull([BankAccountType],'') as [BankAccountType]
,isnull([BankName],'') as [BankName]
,isnull([BankIDNumber],'') as [BankIDNumber]
,isnull([IBAN],'') as [IBAN]
,isnull([BIC],'') as [BIC]
,isnull([BranchName],'') as [BranchName]
,isnull([BranchIDNumber],'') as [BranchIDNumber]
,isnull([DistributionAmount],'') as [DistributionAmount]
,isnull([DistributionPercentage],'') as [DistributionPercentage]
,isnull([DistributionBalance],'') as [DistributionBalance]
FROM [DQS_STAGING_DATA].[WD].[HRDC024_PaymentElectionsEnrolment]
where zExclude is null
GO
