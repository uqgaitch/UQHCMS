SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [AUR].[HRDC022_AssignOrgRoles_InsSel] as 
SELECT 'Supervisory' as OrganisationType
      , [Supervisory Org ID] as Organisation	
	  , t106.T106F980_CREATE_DATE_TIME as EffectiveDate	
	  , p.[Back to Toc] as OrganisationRoleName	
	  , WAMIKey as EmployeeID
	  , WAMIKey as zWAMIKey
	  , zExclude
	  , p.[Position ID] as PositionID
,zSource
,convert(varchar, getdate(), 20) as zLoadDate
, o.LegacyOrgID as LegacyOrgUnitID
from [WD].[EmpScope] e
left outer join AUR.svddPositionsSel p on e.PositionID = p.[Back to ToC]
left outer join dd.SupervisoryOrganisation o on o.Reference_ID = p.[Supervisory Org ID]
inner join [AUR].[T106_ORGANISATION_UNITS] t106 on t106.T106F005_ORGANISATION_UNIT_NO = o.LegacyOrgID
where zExclude is null
and [Supervisory Org ID] is not null
GO
