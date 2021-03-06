USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [DD].[SupervisoryOrganisations_InsUpd_Old]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [DD].[SupervisoryOrganisations_InsUpd_Old]
as 

Truncate table [DD].[Supervisory Organisations]
------------------------
insert into [DD].[Supervisory Organisations]
select distinct
isnull(case when NewOrgUnit not like 'NEW%' then T106F005_ORGANISATION_UNIT_NO
else (T106F005_ORGANISATION_UNIT_NO+T101F005_POSITION_NO) end,'') as [Back to ToC]
,'' as Group2
,'' as Group3 
,'' as Group4
,'' as Group5
,'' as Group6
,'' as Group7
,'' as Group8
,'' as Group9
,'' as Group10
,isnull(case when NewOrgUnit not like 'NEW%' then 'SUP'+RIGHT('000000000'+cast(NewOrgUnit as varchar(10)),10)
 else NewOrgUnit end,'') as Reference_ID 
,T106F030_ORGANISATION_UNIT as Value
,isnull(T911F015_DESCRIPTION,'') as [Organization Subtype]
,isnull(T900F015_SHORT_DESCRIPTION,'') as [Location Name]
,isnull(T101F035_LOCATION_CODE,'') as [Location ID]
,SuperiorOrgUnitName as [Superior Organization Name]
, isnull(case when T106F040_SUPERIOR_ORG_UNIT_NO not like 'NEW%' then 'SUP'+RIGHT('000000000'+cast(T106F040_SUPERIOR_ORG_UNIT_NO as varchar(10)),10)
 else T106F040_SUPERIOR_ORG_UNIT_NO end,'') as [Superior_Organization_ID]
,'' as Comments
,'' as [Sup Org Manager]
,'' as Inactive
,cast(getdate() as varchar)as CreateDateTime
,'' as ModifiedDateTime
,'' as Active
 from SupOrgUnit 

 ---Initial Update [Superior Organization Name] column-----
 --Update a
 --set a.[Superior Organization Name]=b.[Value]
 --from [DD].[Supervisory Organisations] a,[DD].[Supervisory Organisations] b
 --where a.Superior_Organization_ID=b.Reference_ID
 
 -----Update [Superior Organization Name] column-----
 -- Update [DD].[Supervisory Organisations]
 --set [Superior Organization Name]=  a.NewSuperior
 --from
 --(select case when Superior_Organization_ID like 'NEW%' 
 --then (T106F030_ORGANISATION_UNIT+'-'+T101F045_POSITION_TITLE) else T106F030_ORGANISATION_UNIT end 
 --as NewSuperior,Superior_Organization_ID from SupOrgUnit a ,[DD].[Supervisory Organisations] b 
 --where a.NewOrgUnit=b.Superior_Organization_ID) a, [DD].[Supervisory Organisations] b
 --where b.Superior_Organization_ID=a.Superior_Organization_ID

  ---Update [Value] column-----
 -- Update [DD].[Supervisory Organisations]
 --set [Value]=  a.NewValue
 --from
 --(select case when Reference_ID like 'NEW%' 
 --then (T106F030_ORGANISATION_UNIT+'-'+T101F045_POSITION_TITLE) else T106F030_ORGANISATION_UNIT end 
 --as NewValue,Reference_ID from SupOrgUnit a ,[DD].[Supervisory Organisations] b 
 --where a.NewOrgUnit=b.Reference_ID) a, [DD].[Supervisory Organisations] b
 --where b.Reference_ID=a.Reference_ID
GO
