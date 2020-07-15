SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [AUR].[svARUION_OrgUnitRelationship_Sel]
AS
SELECT DISTINCT 
             a.T106F005_ORGANISATION_UNIT_NO, a.T106F065_ORGANISATION_DESC, a.T106F055_LOCATION_CODE, AUR.T900_CODES.T900F020_LONG_DESCRIPTION, a.T106F020_ORGANISATION_UNIT_LVL, AUR.T911_ORG_UNIT_LEVELS.T911F015_DESCRIPTION, 
             a.T106F040_SUPERIOR_ORG_UNIT_NO, b.T106F065_ORGANISATION_DESC AS SUP_ORG_DESC, b.T106F055_LOCATION_CODE AS SUP_LOC_CODE, T900_CODES_1.T900F020_LONG_DESCRIPTION AS SUP_LOC_DESC
FROM   AUR.T911_ORG_UNIT_LEVELS INNER JOIN
             AUR.T106_ORGANISATION_UNITS AS a INNER JOIN
             AUR.T900_CODES ON a.T106F055_LOCATION_CODE = AUR.T900_CODES.T900F010_CODE ON AUR.T911_ORG_UNIT_LEVELS.T911F005_ORG_UNIT_LEVEL = a.T106F020_ORGANISATION_UNIT_LVL LEFT OUTER JOIN
             AUR.T900_CODES AS T900_CODES_1 INNER JOIN
             AUR.T106_ORGANISATION_UNITS AS b ON T900_CODES_1.T900F010_CODE = b.T106F055_LOCATION_CODE ON a.T106F040_SUPERIOR_ORG_UNIT_NO = b.T106F005_ORGANISATION_UNIT_NO
WHERE (a.T106F010_ORG_UNIT_STATUS = 'ACTIVE')
GO