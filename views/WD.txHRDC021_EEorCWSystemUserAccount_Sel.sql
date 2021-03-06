USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC021_EEorCWSystemUserAccount_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[txHRDC021_EEorCWSystemUserAccount_Sel]
as
SELECT
 isnull([EmployeeContingentWorkerID],'') as [EmployeeContingentWorkerID]
,isnull([UserName],'') as [UserName]
,isnull([SessionTimeoutMinutes],'') as [SessionTimeoutMinutes]
,isnull([AccountDisabled],'') as [AccountDisabled]
,isnull([AccountExpirationDate],'') as [AccountExpirationDate]
,isnull([AccountLocked],'') as [AccountLocked]
,isnull([RequiredNewPasswordAtNextLogin],'') as [RequiredNewPasswordAtNextLogin]
,isnull([ShowUserNameInBrowserWindow],'') as [ShowUserNameInBrowserWindow]
,isnull([DisplayXMLIconOnReports],'') as [DisplayXMLIconOnReports]
,isnull([EnableWorkbox],'') as [EnableWorkbox]
,isnull([AllowMixedLanguageTransactions],'') as [AllowMixedLanguageTransactions]
,isnull([ReceiveEmailNotifications],'') as [ReceiveEmailNotifications]
,isnull([Password],'') as [Password]
,isnull([GenerateRandomPassword],'') as [GenerateRandomPassword]
,isnull([ExemptFromDelegatedAuthentication],'') as [ExemptFromDelegatedAuthentication]
,isnull([PasscodeExempt],'') as [PasscodeExempt]
,isnull([PasscodeGracePeriodEnabled],'') as [PasscodeGracePeriodEnabled]
,isnull([PasscodeGracePeriodLoginRemainingCount],'') as [PasscodeGracePeriodLoginRemainingCount]
,isnull([OpenIDIdentifier],'') as [OpenIDIdentifier]
FROM [DQS_STAGING_DATA].[WD].[HRDC021_EEorCWSystemUserAccount]
WHERE zExclude is null
GO
