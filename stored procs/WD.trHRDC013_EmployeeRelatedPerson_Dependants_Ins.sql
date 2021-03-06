USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC013_EmployeeRelatedPerson_Dependants_Ins]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trHRDC013_EmployeeRelatedPerson_Dependants_Ins]
AS
begin
insert into [wd].[HRDC013_EmployeeRelatedPerson]
(EmployeeID
,DependantBeneficiaryECID
,RelatedPersonRelationshipName
,PrefixType
,Prefix
,LegalFirstName
,LegalLastName
,DateOfBirth
,GenderDescription
,zType
,zFullName
,zWAMIKey
,zSource
,zLoadDate
)

select 
EmployeeID
,DependantBeneficiaryID
,RelatedPersonRelationshipName
,PrefixType
,Prefix
,FirstName
,LastName
,DateOfBirth
,Gender
,zType
,zName
,zWAMIKey
,zSource
,zLoadDate
from [WD].[trHRDC013_EmployeeRelatedPerson_Dependants_InsSel]
END
GO
