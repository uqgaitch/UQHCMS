USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PBI].[EmailAddressFormat]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER view [PBI].[EmailAddressFormat] as
SELECT	distinct	 AUR.T000_WAMI.T000F005_WAMI_KEY
			, aur.T001_BASIC_DETAILS.T001F005_EMPLOYEE_NO
			, AUR.T000_WAMI.T000F015_SURNAME
			, AUR.T000_WAMI.T000F020_GIVEN_NAMES
			, AUR.T000_WAMI.T000F160_EMAIL_ADDRESS
			,aur.t900_codes.T900F025_CODE_GROUP 

FROM            AUR.T000_WAMI 
				INNER JOIN  [WD].svEmpScope_UniqueWAMIKey_Sel ON AUR.T000_WAMI.T000F005_WAMI_KEY = WAMIKey
				inner join aur.T001_BASIC_DETAILS on  T000F005_WAMI_KEY = T001F010_WAMI_KEY
				INNER JOIN aur.t206_classification ON t206f005_classification_code=t001f085_actual_classification
				INNER JOIN aur.t900_codes ON t206f035_class_group_code=t900f010_code AND t206f030_cg=t900f005_code_type

where   AUR.T000_WAMI.T000F160_EMAIL_ADDRESS  NOT LIKE '%_@__%.__%' OR 
len(T000F160_EMAIL_ADDRESS) - len(replace(T000F160_EMAIL_ADDRESS, '@', '')) > 1 


GO
