USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[svUQORG_to_AURION_OrgUnitComparison_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[svUQORG_to_AURION_OrgUnitComparison_Sel] as 

select orgmap.UNITID as UQORG_ORGID, c.ORGNAME as UQORG_NAME, orgmap.EFFSTATUS as UQORG_STATUS, orgmap.EXTUNITIDNUM as AUR_ORGID
, aurorg.T106F030_ORGANISATION_UNIT as AUR_ORGNAME, aurorg.T106F010_ORG_UNIT_STATUS as AUR_ORGSTATUS

from [ORG].[EXTERNALUNITMAPPING] orgmap
left outer join 
(select b.UNITID, TRIM(ISNULL(b.PREFIX, '') + ISNULL(b.NAME, '')) as ORGNAME from org.unitversion b
inner join 
(select unitid, max(effdt) as MAXDT from [ORG].[UNITVERSION] 
group by unitid) a

on a.unitid = b.unitid and a.MAXDT = b.effdt) c
on orgmap.UNITID = c.UNITID

left outer join [AUR].[T106_ORGANISATION_UNITS] aurorg
on aurorg.T106F005_ORGANISATION_UNIT_NO = orgmap.EXTUNITIDNUM

where orgmap.[EXTERNALUNITTYPEID] = 1 --and orgmap.EFFSTATUS = 'A'
--order by 4


--and extunitidnum not in (Select * from [AUR].[T106_ORGANISATION_UNITS] where T106F010_ORG_UNIT_STATUS = 'ACTIVE')



GO
