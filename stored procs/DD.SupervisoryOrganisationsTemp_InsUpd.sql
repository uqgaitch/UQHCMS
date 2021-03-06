USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [DD].[SupervisoryOrganisationsTemp_InsUpd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [DD].[SupervisoryOrganisationsTemp_InsUpd]
as
Truncate table [DD].[SupervisoryOrganisationsTemp]

insert  into [DD].[SupervisoryOrganisationsTemp] 
select distinct
case when a.NewOrgUnit not like 'NEW%' then T106F005_ORGANISATION_UNIT_NO
else (T106F005_ORGANISATION_UNIT_NO+T101F005_POSITION_NO) end as [Back to ToC]
,'' as Group2
,'' as Group3 
,'' as Group4
,'' as Group5
,'' as Group6
,'' as Group7
,'' as Group8
,'' as Group9
,'' as Group10
,case when a.NewOrgUnit not like 'NEW%' then 'SUP'+RIGHT('000000000'+cast(a.NewOrgUnit as varchar(10)),10)
 else a.NewOrgUnit end as Reference_ID 
,T106F065_ORGANISATION_DESC as Value
,Null as [Organization Subtype]
,T900F015_SHORT_DESCRIPTION as [Location Name]
,T101F035_LOCATION_CODE as [Location ID]
,SuperiorOrgUnitName as [Superior Organization Name]
, case when T106F040_SUPERIOR_ORG_UNIT_NO not like 'NEW%' then 'SUP'+RIGHT('000000000'+cast(T106F040_SUPERIOR_ORG_UNIT_NO as varchar(10)),10)
 else T106F040_SUPERIOR_ORG_UNIT_NO end as [Superior_Organization_ID]
,'' as Comments
,'' as [Sup Org Manager]
,'' as Inactive
,cast(getdate() as varchar)as CreateDateTime
,'' as ModifiedDateTime
,'' as Active
,T101F235_ESS_AUTHORITY_LEVEL
,T106F020_ORGANISATION_UNIT_LVL
,T106F040_SUPERIOR_ORG_UNIT_NO
 from SupOrgUnit a

 inner join (select NewOrgUnit,max(cast(T101F235_ESS_AUTHORITY_LEVEL as numeric)) ess from SupOrgUnit
group by NewOrgUnit) b
on a.NewOrgUnit=b.NewOrgUnit and cast(a.T101F235_ESS_AUTHORITY_LEVEL as numeric)=b.ess
 
 inner join (select NewOrgUnit,max(cast(T106F020_ORGANISATION_UNIT_LVL as numeric)) lvl from SupOrgUnit
group by NewOrgUnit) c
on a.NewOrgUnit=c.NewOrgUnit and cast(a.T106F020_ORGANISATION_UNIT_LVL as numeric)=c.lvl


 inner join (select NewOrgUnit,min(T106F040_SUPERIOR_ORG_UNIT_NO) sou from SupOrgUnit
group by NewOrgUnit) d
on a.NewOrgUnit=d.NewOrgUnit and a.T106F040_SUPERIOR_ORG_UNIT_NO=d.sou and T106F040_SUPERIOR_ORG_UNIT_NO is not null


 update a
 set [Organization Subtype]=b.T911F015_DESCRIPTION
 from [DD].[SupervisoryOrganisationsTemp] a
 inner join AUR.svAURION_ORgUnitsAndLevels_Sel b
 on cast(a.[Back to ToC] as numeric)=b.T106F005_ORGANISATION_UNIT_NO

 update a
 set [Location ID]=b.T106F055_LOCATION_CODE
 ,[Location Name]=b.T900F015_SHORT_DESCRIPTION
 from [DD].[SupervisoryOrganisationsTemp] a
 inner join AUR.svAURIONOrgLocation_sel b
 on cast(a.[Back to ToC] as numeric)=b.T106F005_ORGANISATION_UNIT_NO
 



--update a
--set a.[Back to ToC]=b.[Back to ToC]
--from DD.SupervisoryOrganisationsTemp a, (select [Back to ToC],max(cast(T106F020_ORGANISATION_UNIT_LVL as numeric)) lvl from DD.SupervisoryOrganisationsTemp
--group by [Back to ToC]) b
--where a.[Back to ToC]=b.[Back to ToC] and a.T106F020_ORGANISATION_UNIT_LVL =b.lvl
 
-- update a
--set a.[Back to ToC]=b.[Back to ToC]
--from DD.SupervisoryOrganisationsTemp a,(select [Back to ToC],min(T106F040_SUPERIOR_ORG_UNIT_NO) sou from DD.SupervisoryOrganisationsTemp 
--group by [Back to ToC]) b
--where a.[Back to ToC]=b.[Back to ToC] and a.T106F040_SUPERIOR_ORG_UNIT_NO =b.sou 
 
GO
