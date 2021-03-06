USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[svUQORG_ActiveUnits_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[svUQORG_ActiveUnits_Sel] as 
SELECT b.UNITID, TRIM(ISNULL(b.PREFIX,'') + ' ' + ISNULL(b.NAME, '')) as UNITNAME FROM ORG.UNITVERSION b
inner join 

(select UNITID, max(EFFDT) as EFFDT FROM [ORG].[UNITVERSION]
GROUP BY UNITID) a
ON b.unitID = a.UNITID and b.EFFDT = a.EFFDT
GO
