SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [DD].[CreateAURION_SupervisoryOrganisations_010_UpdSel] 
as


with cte as (SELECT 
   LegacyOrgID,
   ROW_NUMBER() OVER (
      PARTITION BY LegacyOrgID
      ORDER BY LegacyOrgID
   ) row_num,
   Reference_ID
FROM 
   dd.SupervisoryOrganisation a)

select sup.Reference_ID, sup.externalorgid, sup.LegacyOrgID + '_' + right(concat('0000', row_num),4) as zExternalOrgID from cte left outer join 
dd.SupervisoryOrganisation sup
on cte.Reference_ID = sup.Reference_ID
where ExternalOrgID is null

GO
