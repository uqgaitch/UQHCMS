USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[svActive_UQORGOrgUnitStruct_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[svActive_UQORGOrgUnitStruct_Sel] as 
select PARENTUNITID, par.UNITNAME as PARENT_UNITNAME, CHILDUNITID, child.unitname as CHILD_UNITNAME from [ORG].[UNITPARENTSTRUCTURE] struct
inner join WD.svUQORG_ActiveUnits_Sel par
on par.UNITID = struct.PARENTUNITID
inner join WD.svUQORG_ActiveUnits_Sel child
on child.UNITID = struct.CHILDUNITID


where STRUCTURETYPEID = 1
and effenddt is null
--order by PARENTUNITID

GO
