USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [DD].[CreateAURION_SupervisoryOrganisations]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/**   
    Oject Name:  [DD].[CreateAURION_SupervisoryOrganisations]
	Description: Create the new Supervisory Org Structure for WorkDay 
    Created By:  Ged Aitchison
	Created On:  13/05/2020
*/


ALTER Procedure[DD].[CreateAURION_SupervisoryOrganisations] as



IF OBJECT_ID('DD.SupervisoryOrganisation_old', 'U') IS NOT NULL 
  DROP TABLE DD.SupervisoryOrganisation_old; 

SELECT * INTO DD.SupervisoryOrganisation_old FROM DD.SupervisoryOrganisation;



TRUNCATE TABLE DD.SupervisoryOrganisation;

 -- Add current management levels
insert into DD.SupervisoryOrganisation ([Back to ToC], Group2, Group3, Group4, Group5, Group6, Group7, Group8, Group9, Group10,
[Reference_ID], [Value], [Organization Subtype],
[Location Name], [Location ID], [Superior Organization Name], [Superior_Organization_ID],
Comments, [Sup Org Manager], Inactive, CreatedDateTime, ModifiedDateTime, Active, LegacyOrgID) 
/*SELECT distinct a.T101F015_ORGANISATION_UNIT_NO as [Back to ToC], '' as Group2, '' as Group3, '' as Group4, '' as Group5, '' as Group6, '' as Group7, '' as Group8, '' as Group9, '' as Group10,
       isNULL(cast(a.NEW_ORG_NO as NVARCHAR(255)), '') as [Reference ID], isnull(c.T106F065_ORGANISATION_DESC,'') as [Value], isnull(c.T911F015_DESCRIPTION,'') as [Organization Subtype],
	   isnull(c.T900F020_LONG_DESCRIPTION, '') as [Location Name],
	   isnull(c.T106F055_LOCATION_CODE, '') as [Location ID],
	   isnull(c.SUP_ORG_DESC,'') as [Superior Organization Name],

	   isnull(cast(c.T106F040_SUPERIOR_ORG_UNIT_NO as NVARCHAR(255)),'') as [Superior_Organization_ID],
	   '' as Comments, '' as [Sup Org Manager], '' as Inactive, CONVERT(VARCHAR,GETDATE(),103) as CreatedDateTime, CONVERT(VARCHAR,GETDATE(),103) as ModifiedDateTime, 'ACTIVE' as Active
from AUR.[svAURION_NewOrgLevelManager_Sel] a
left outer join [AUR].[svAURION_ORgUnitsAndLevels_Sel] b on a.T101F015_ORGANISATION_UNIT_NO = b.T106F005_ORGANISATION_UNIT_NO
left outer join [AUR].[svARUION_OrgUnitRelationship_Sel] c on c.T106F005_ORGANISATION_UNIT_NO = a.NEW_ORG_NO;*/
SELECT a.T106F005_ORGANISATION_UNIT_NO as [Back to ToC], '' as Group2, '' as Group3, '' as Group4, '' as Group5, '' as Group6, '' as Group7, '' as Group8, '' as Group9, '' as Group10,
       isNULL(cast(a.T106F005_ORGANISATION_UNIT_NO as NVARCHAR(255)), '') as [Reference ID],  
	   a.T106F065_ORGANISATION_DESC as [Value], T911.T911F010_SHORT_DESCRIPTION as [Organization Subtype],
	   t900.T900F020_LONG_DESCRIPTION as [Location Name], a.T106F055_LOCATION_CODE as [Location ID],
	   isNULL(ORG.T106F065_ORGANISATION_DESC, '') as [Superior Organization Name],
	--'' as [Superior Organization Name],
	   isNULL(CAST(a.T106F040_SUPERIOR_ORG_UNIT_NO as NVARCHAR(2550)), '') as [Superior_Organization_ID],
	   '' as Comments, '' as [Sup Org Manager], '' as Inactive, CONVERT(VARCHAR,GETDATE(),103) as CreatedDateTime, CONVERT(VARCHAR,GETDATE(),103) as ModifiedDateTime, 'ACTIVE' as Active
	   , a.T106F005_ORGANISATION_UNIT_NO as zLegacyORgID
FROM [AUR].[T106_ORGANISATION_UNITS] a 
inner join [AUR].[T911_ORG_UNIT_LEVELS] T911 ON A.T106F020_ORGANISATION_UNIT_LVL = T911.T911F005_ORG_UNIT_LEVEL
inner join [AUR].[T900_CODES] T900 on T900.T900F010_CODE = a.T106F055_LOCATION_CODE

left join AUR.svAURION_ActiveOrgUnits ORG on ORG.T106F005_ORGANISATION_UNIT_NO = a.T106F040_SUPERIOR_ORG_UNIT_NO
where a.T106F010_ORG_UNIT_STATUS = 'ACTIVE'



--- Add subordinate levels into the table 

insert into DD.SupervisoryOrganisation ([Back to ToC], Group2, Group3, Group4, Group5, Group6, Group7, Group8, Group9, Group10,
[Reference_ID], [Value], [Organization Subtype],
[Location Name], [Location ID], [Superior Organization Name], [Superior_Organization_ID],
Comments, [Sup Org Manager], Inactive, CreatedDateTime, ModifiedDateTime, Active, LegacyOrgID) 

SELECT distinct CONCAT(a.T101F015_ORGANISATION_UNIT_NO, a.T101F005_POSITION_NO) as [Back to ToC], '' as Group2, '' as Group3, '' as Group4, '' as Group5, '' as Group6, '' as Group7, '' as Group8, '' as Group9, '' as Group10,
CONCAT('NEW',RIGHT(CONCAT('0000000', a.T101F015_ORGANISATION_UNIT_NO, a.T101F005_POSITION_NO),10)) as Reference_ID,
CONCAT(c.T106F065_ORGANISATION_DESC,' - ', a.T101F045_POSITION_TITLE) as [Value], '' as [Organization Subtype], T900.T900F020_LONG_DESCRIPTION as [Location Name], T101F035_LOCATION_CODE as [Location ID],

isnull(case when d.T101F005_POSITION_NO = a.T101F130_REPORTS_TO_POSITION then T106F065_ORGANISATION_DESC else 
-- Use reports to position title
CONCAT(c.T106F065_ORGANISATION_DESC,' - ', e.T101F045_POSITION_TITLE)

 end,'') as [Superior Organization Name],
isnull(case when d.T101F005_POSITION_NO = a.T101F130_REPORTS_TO_POSITION then CAST(T106F005_ORGANISATION_UNIT_NO as NVARCHAR(255)) else CONCAT('NEW',RIGHT(CONCAT('0000000', a.T101F015_ORGANISATION_UNIT_NO, a.T101F130_REPORTS_TO_POSITION),10)) end,'') as [Superior_Organization_ID],
'' as Comments, '' as [Sup Org Manager], '' as Inactive, CONVERT(VARCHAR,GETDATE(),103) as CreatedDateTime, CONVERT(VARCHAR,GETDATE(),103) as ModifiedDateTime, 'ACTIVE' as Active
 , a.T101F015_ORGANISATION_UNIT_NO as zLegacyOrgID
 FROM [AUR].[T101_POSITION] a
left outer join [AUR].[svAURION_OrgUnitMaxESSLevel_Sel] b 
on b.T101F015_ORGANISATION_UNIT_NO = a.T101F015_ORGANISATION_UNIT_NO and b.AUTH_LEVEL = a.T101F235_ESS_AUTHORITY_LEVEL
left outer join [AUR].svARUION_OrgUnitRelationship_Sel c
on c.T106F005_ORGANISATION_UNIT_NO = a.T101F015_ORGANISATION_UNIT_NO
left outer join [AUR].[T900_CODES] T900 on T900.T900F010_CODE = T101F035_LOCATION_CODE
left outer join [AUR].[svAURION_NewOrgLevelManager_Sel] d 
on d.T101F005_POSITION_NO = a.T101F130_REPORTS_TO_POSITION
left outer join AUR.svAURION_ActivePositions_Sel e
on e.T101F005_POSITION_NO = a.T101F130_REPORTS_TO_POSITION
where b.AUTH_LEVEL is null and T101F010_POSITION_STATUS = 'active' and a.T101F235_ESS_AUTHORITY_LEVEL <> 1


--SELECT * FROM DD.SupervisoryOrganisation
GO
