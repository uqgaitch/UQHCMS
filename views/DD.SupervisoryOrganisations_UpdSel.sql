SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [DD].[SupervisoryOrganisations_UpdSel]
as 
	 select [Back to ToC], [Value], T106F065_ORGANISATION_DESC as zNewValue

	 from DD.[Supervisory Organisations] DDS
	 inner join AUR.svARUION_OrgUnitRelationship_Sel ORG on DDS.[Back to ToC] = CAST(ORG.T106F005_ORGANISATION_UNIT_NO as NVARCHAR(255))
GO
