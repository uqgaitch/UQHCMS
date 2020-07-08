USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[scActive_Parent_UQORGUnitStruct_Sel]    Script Date: 8/07/2020 5:23:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter view [WD].[scActive_Parent_UQORGUnitStruct_Sel] as 

select PARENTUNITID, par.UNITNAME as PARENT_UNITNAME, CHILDUNITID, child.unitname as CHILD_UNITNAME from [ORG].[UNITPARENTSTRUCTURE] struct
inner join WD.svUQORG_ActiveUnits_Sel par
on par.UNITID = struct.PARENTUNITID
inner join WD.svUQORG_ActiveUnits_Sel child
on child.UNITID = struct.CHILDUNITID


where STRUCTURETYPEID = 1
and effenddt is null
--order by PARENTUNITID

GO
