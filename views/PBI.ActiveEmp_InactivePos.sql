SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [PBI].[ActiveEmp_InactivePos] as 

select	distinct [T001F010_WAMI_KEY] 
		,[T001F005_EMPLOYEE_NO]
		,[T101F050_FULL_TITLE]
		,[T000F015_SURNAME]
        ,[T000F020_GIVEN_NAMES]
		,[T001F065_ACTUAL_POSITION_NO]
		,[T001F015_EMPLOYEE_STATUS]
		,[T101F010_POSITION_STATUS]
		,[t001f085_actual_classification]
		,aur.t900_codes.T900F025_CODE_GROUP 


from [AUR].[T001_BASIC_DETAILS]
left join [AUR].[T101_POSITION] on [T001F065_ACTUAL_POSITION_NO]= [T101F005_POSITION_NO]
left join  [AUR].[T000_WAMI] on [T001F010_WAMI_KEY]= T000F005_WAMI_KEY
inner join [WD].[EmpScope] on [T001F065_ACTUAL_POSITION_NO] = PositionID
INNER JOIN aur.t206_classification ON t206f005_classification_code=t001f085_actual_classification
INNER JOIN aur.t900_codes ON t206f035_class_group_code=t900f010_code AND t206f030_cg=t900f005_code_type
where ([T001F015_EMPLOYEE_STATUS] = 'Active' AND [T101F010_POSITION_STATUS] = 'Inactive')
GO