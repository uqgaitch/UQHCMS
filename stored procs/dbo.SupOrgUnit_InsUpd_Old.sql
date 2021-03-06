USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [dbo].[SupOrgUnit_InsUpd_Old]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER Procedure [dbo].[SupOrgUnit_InsUpd_Old] as
begin

truncate table SupOrgUnit
--------------
insert into SupOrgUnit 
select distinct * from (
Select 
T106F005_ORGANISATION_UNIT_NO,
Null as NewOrgUnit,
T101F005_POSITION_NO ,
T101F130_REPORTS_TO_POSITION,
T106F040_SUPERIOR_ORG_UNIT_NO,
Null as SuperiorOrgUnitName,
T101F235_ESS_AUTHORITY_LEVEL,
Null as NewOrgUnitName,
T106F065_ORGANISATION_DESC,
T106F020_ORGANISATION_UNIT_LVL,
T106F070_ORG_UNIT_LEVEL_01,
T106F075_ORG_UNIT_LEVEL_02,
T106F080_ORG_UNIT_LEVEL_03,
T106F085_ORG_UNIT_LEVEL_04,
T106F090_ORG_UNIT_LEVEL_05,
T106F095_ORG_UNIT_LEVEL_06,
T106F100_ORG_UNIT_LEVEL_07,
T106F105_ORG_UNIT_LEVEL_08,
T106F110_ORG_UNIT_LEVEL_09,
T106F115_ORG_UNIT_LEVEL_10,
T101F010_POSITION_STATUS,
T101F045_POSITION_TITLE,
T101F050_FULL_TITLE,
T101F230_FUNCTION_TO_POSN , 
T847.T847F010_LEVEL_NAME,
T101F035_LOCATION_CODE,
T106F030_ORGANISATION_UNIT,
T900F015_SHORT_DESCRIPTION,
T911F015_DESCRIPTION
from AUR.T106_ORGANISATION_UNITS
INNER JOIN AUR.T101_POSITION T101
ON T101F015_ORGANISATION_UNIT_NO = T106F005_ORGANISATION_UNIT_NO
inner join [AUR].[T847_AUTHORITY_LEVEL] T847 on T847.T847F005_LEVEL = T101.T101F235_ESS_AUTHORITY_LEVEL
inner join [AUR].[T900_CODES] t900
on t900.T900F010_CODE=t101.T101F035_LOCATION_CODE
inner join [AUR].[T911_ORG_UNIT_LEVELS] t911
on t911.[T911F005_ORG_UNIT_LEVEL]=T106F020_ORGANISATION_UNIT_LVL
inner join wd.EmpScope EMP on EMP.OrgUnitID = T101.T101F015_ORGANISATION_UNIT_NO 
and EMP.PositionID = t101.T101F005_POSITION_NO
where T106F010_ORG_UNIT_STATUS = 'ACTIVE'
AND T101F010_POSITION_STATUS = 'ACTIVE'
 ) sub1 
where  T101F235_ESS_AUTHORITY_LEVEL <> '1' 
----------------
Update SupOrgUnit
set NewOrgUnit=NULL
-------------
update SupOrgUnit
set NewOrgUnit=NEW_ORG_NO
,T106F005_ORGANISATION_UNIT_NO=NEW_ORG_NO
from [AUR].[svAURION_NewOrgLevelManager_Sel] vw
inner join SupOrgUnit sou
on sou.T101F005_POSITION_NO=vw.T101F005_POSITION_NO
------------
update SupOrgUnit
set NewOrgUnit=d.T106F005_ORGANISATION_UNIT_NO
from
(select b.* from
  (select T106F005_ORGANISATION_UNIT_NO,T101F005_POSITION_NO,T101F130_REPORTS_TO_POSITION
  from SupOrgUnit where T106F005_ORGANISATION_UNIT_NO=NewOrgUnit) a
  inner join [SupOrgUnit] b
  on a.T101F005_POSITION_NO=b.T101F130_REPORTS_TO_POSITION ) d
  inner join SupOrgUnit e
  on e.T101F005_POSITION_NO=d.T101F005_POSITION_NO
-----------
 update SupOrgUnit
set NewOrgUnit= ('NEW'+cast(T106F005_ORGANISATION_UNIT_NO as varchar)+T101F005_POSITION_NO)
where NewOrgUnit is null
-----------
  Update SupOrgUnit
  set NewOrgUnitName=d.T106F065_ORGANISATION_DESC
  from 
  (select a.* from [AUR].[svARUION_OrgUnitRelationship_Sel] a 
  inner join SupOrgUnit b
  on a.T106F005_ORGANISATION_UNIT_NO=b.T106F005_ORGANISATION_UNIT_NO) d
  inner join SupOrgUnit e
  on e.T106F005_ORGANISATION_UNIT_NO=d.T106F005_ORGANISATION_UNIT_NO
--------------
  Update SupOrgUnit
  set NewOrgUnitName=(cast(T106F030_ORGANISATION_UNIT as varchar)+'-'+T101F045_POSITION_TITLE)
  where NewOrgUnit like 'NEW%'

--------------
update a
set a.T106F040_SUPERIOR_ORG_UNIT_NO  =b.NewOrgUnit
from SupOrgUnit a, SupOrgUnit b
where a.T101F130_REPORTS_TO_POSITION=b.T101F005_POSITION_NO 

----------------
  update SupOrgUnit
  set SuperiorOrgUnitName=null

-----------------
  update SupOrgUnit
  set SuperiorOrgUnitName= a.T106F065_ORGANISATION_DESC
  from [AUR].[svARUION_OrgUnitRelationship_Sel] a
  inner join SupOrgUnit b
  on cast(a.T106F005_ORGANISATION_UNIT_NO  as varchar) =b.T106F040_SUPERIOR_ORG_UNIT_NO
-----------------
update a
set a.SuperiorOrgUnitName  =b.NewOrgUnitName
from SupOrgUnit a, SupOrgUnit b
where a.T101F130_REPORTS_TO_POSITION=b.T101F005_POSITION_NO and a.T106F040_SUPERIOR_ORG_UNIT_NO like 'NEW%'
--------------------
Delete from SupOrgUnit where T106F005_ORGANISATION_UNIT_NO is null

end





GO
