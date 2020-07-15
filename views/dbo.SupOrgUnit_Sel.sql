SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view  [dbo].[SupOrgUnit_Sel]
as
select
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
,isnull(case when NewOrgUnit not like 'NEW%' then 'SUP'+RIGHT('0000000'+cast(NewOrgUnit as varchar(10)),10)
 else NewOrgUnit end,'') as Reference_ID 
,(T106F030_ORGANISATION_UNIT+'-'+T101F045_POSITION_TITLE) as Value
,isnull(T911F015_DESCRIPTION,'') as [Organization Subtype]
,isnull(T900F015_SHORT_DESCRIPTION,'') as [Location Name]
,isnull(T101F035_LOCATION_CODE,'') as [Location ID]
,T106F030_ORGANISATION_UNIT as [Superior Organization Name]
, isnull(case when T106F040_SUPERIOR_ORG_UNIT_NO not like 'NEW%' then 'SUP'+RIGHT('0000000'+cast(T106F040_SUPERIOR_ORG_UNIT_NO as varchar(10)),10)
 else T106F040_SUPERIOR_ORG_UNIT_NO end,'') as [Superior_Organization_ID]
,'' as Comments
,'' as [Sup Org Manager]
,'' as Inactive
 from SupOrgUnit



 



GO
