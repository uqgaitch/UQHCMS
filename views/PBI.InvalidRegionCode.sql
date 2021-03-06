USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PBI].[InvalidRegionCode]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





ALTER view [PBI].[InvalidRegionCode] AS

SELECT distinct 
			AUR.T000_WAMI.T000F005_WAMI_KEY
			, EmployeeID
			,T000F015_SURNAME
			,T000F020_GIVEN_NAMES
			,T000F070_STATE
			,aur.t900_codes.T900F025_CODE_GROUP 

FROM            AUR.T000_WAMI INNER JOIN
                         [WD].[EmpScope] ON AUR.T000_WAMI.T000F005_WAMI_KEY = WAMIKey


inner join aur.T001_BASIC_DETAILS on  T000F005_WAMI_KEY = T001F010_WAMI_KEY
INNER JOIN aur.t206_classification ON t206f005_classification_code=t001f085_actual_classification
INNER JOIN aur.t900_codes ON t206f035_class_group_code=t900f010_code AND t206f030_cg=t900f005_code_type


WHERE T000F070_STATE not like 'QLD'
and T000F070_STATE not like 'VIC'
and T000F070_STATE not like 'NSW'
and T000F070_STATE not like 'TAS'
and T000F070_STATE not like 'SA'
and T000F070_STATE not like 'WA'
and T000F070_STATE not like 'NT'
and T000F070_STATE not like 'ACT'
and T000F070_STATE not like 'oth'
and T000F070_STATE not like 'other'
or T000F070_STATE is null



GO
