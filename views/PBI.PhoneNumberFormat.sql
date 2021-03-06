USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PBI].[PhoneNumberFormat]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [PBI].[PhoneNumberFormat] as

select		AUR.T000_WAMI.T000F005_WAMI_KEY
			, EmployeeID
			, AUR.T000_WAMI.T000F015_SURNAME
			, AUR.T000_WAMI.T000F020_GIVEN_NAMES
			,T000F045_CONTACT_PHONE_NO
			,T000F055_HOME_PHONE_NO
			, T000F155_MOBILE_PHONE
			, T000F320_CONTACT_MOBILE_PHONE
				,aur.t900_codes.T900F025_CODE_GROUP 

FROM            AUR.T000_WAMI INNER JOIN
                        [WD].[EmpScope] ON AUR.T000_WAMI.T000F005_WAMI_KEY = WAMIKey
						inner join aur.T001_BASIC_DETAILS on  T000F005_WAMI_KEY = T001F010_WAMI_KEY
						INNER JOIN aur.t206_classification ON t206f005_classification_code=t001f085_actual_classification
INNER JOIN aur.t900_codes ON t206f035_class_group_code=t900f010_code AND t206f030_cg=t900f005_code_type
where 	(
		(T000F045_CONTACT_PHONE_NO  like '%[a-z]%'  ) or
		(T000F045_CONTACT_PHONE_NO  ='-'  ) or
		LEN(T000F045_CONTACT_PHONE_NO) < 4 or
		(T000F055_HOME_PHONE_NO  like '%[a-z]%'  ) or
		(T000F055_HOME_PHONE_NO  = '-'  ) or
		LEN(T000F055_HOME_PHONE_NO) < 4 or
		(T000F155_MOBILE_PHONE  like '%[a-z]%'  ) or
		(T000F155_MOBILE_PHONE  = '-'  ) or
		LEN(T000F155_MOBILE_PHONE) < 4 or
		(T000F320_CONTACT_MOBILE_PHONE  like '%[a-z]%'  ) or
		(T000F320_CONTACT_MOBILE_PHONE  = '-'  ) or
		LEN(T000F320_CONTACT_MOBILE_PHONE) < 4 

		)

GO
