SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*	
	The reference to the view T001BASIC_MaxActiveEmployeeNo_Sel is purely for foundation build purposes
	All it does is take the Max value of EmployeeID grouped on the WAMI key - this is to prevent duplicates as per the feedback from Tim's initial load
	This view is to be removed after Foundation data has been generated
*/
	
ALTER view [AUR].[HRDC021_EECWSystemUsersPR_InsSel] as

SELECT distinct 
      T001.T001F005_EMPLOYEE_NO as Employee_ContingentWorker_ID,
       [T803F005_USER] as UserName
      ,'30' as SessionTimeoutMinutes
      ,case when [T803F015_STATUS] = 'INHIBITED' THEN 'Y' ELSE 'N' END as AccountDisabled 
      ,[T804F025_DATE_TO] as AccountExpirationDate
	  , 'N' as AccountLocked
      ,[T803F030_PASSWORD_EXPIRED] as RequiredNewPasswordAtNextLogin
      , 'Y' as ShowUserNameInBrowserWindow
	  , 'Y' as DisplayXMLIconOnReports
      , 'N' as EnableWorkbox
      , 'N' as AllowMixedLanguageTransactions
      , T803F300_EMAIL_ADDRESS as ReceiveEmailNotifications
      , T803F010_PASSWORD as Password
      , '' as GenerateRandomPassword
      , '' as ExemptFromDelegatedAuthentication
      , '' as PasscodeExempt
      , '' as PasscodeGracePeriodEnabled
      , '' as PasscodeGracePeriodLoginRemainingCount
      , '' as OpenIDIdentifier
  FROM [AUR].[T803_SECURITY_USER] T803
  inner join AUR.T001_BASIC_DETAILS T001 ON
  T001.T001F010_WAMI_KEY = T803.[T803F050_WAMI_KEY]
  inner join [AUR].[T804_SECURITY_USER_PROFILE] T804 ON
  T803.[T803F005_USER] = T804.[T804F005_USER]
  inner join [AUR].[T001BASIC_MaxActiveEmployeeNo_Sel]
  on [AUR].[T001BASIC_MaxActiveEmployeeNo_Sel].EmployeeID = T001.T001F005_EMPLOYEE_NO 
 where  [T804F025_DATE_TO] is null


-- and not exists (select 1 from [AUR].[HRDC001_ApplicantPersonalAndContactPR_InsSel] a
--	where a.employeeid = T001.T001F005_EMPLOYEE_NO)



  
GO
