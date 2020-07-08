SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [DD].[svCostCentresActive_InsSel] as 


-- TOP LEVEL COST CENTERS
SELECT distinct T123F010_COSTING_CODE_1 as AURION
, '' as Group2
, '' as Group3
, '' as Group4
, '' as Group5
, '' as Group6
, '' as Group7
, '' as Group8
, '' as Group9
, '' as Group10
, T123F010_COSTING_CODE_1 as [Reference ID]
, T121F015_DESCRIPTION as [Value]
, T123F010_COSTING_CODE_1 as [Cost Centre Org Code]
, '1900-01-01' as [Effective Date]
, T120F010_COST_CATEGORY as [Cost Center Type]
, '' as [Parent ID (Hierarchy)]
, '' as [Business_Identifier]
, '' as [BU Manager ID]
, '' as [Inactive]
, '' as [Comments]
FROM [AUR].[T123_POSITION_COSTING] a 
inner join AUR.T101_POSITION b on a.T123F005_POSITION_NO = b.T101F005_POSITION_NO
inner join [AUR].[T121_COSTING_CODE] c on c.T121F010_COSTING_CODE = a.T123F010_COSTING_CODE_1
inner join [AUR].[T120_COSTING_CATEGORY] d on d.T120F005_COST_CATEGORY_CODE = c.T121F005_COST_CATEGORY_CODE
where b.T101F010_POSITION_STATUS = 'active'

UNION

-- LEVEL 2 COST CENTRES
SELECT distinct T123F010_COSTING_CODE_1+'-'+T123F015_COSTING_CODE_2 as AURION
, '' as Group2
, '' as Group3
, '' as Group4
, '' as Group5
, '' as Group6
, '' as Group7
, '' as Group8
, '' as Group9
, '' as Group10
, CONCAT(T123F010_COSTING_CODE_1,'-', T123F015_COSTING_CODE_2) as [Reference ID]
, T121F015_DESCRIPTION as [Value]
, T123F015_COSTING_CODE_2 as [Cost Centre Org Code]
, '1900-01-01' as [Effective Date]
, T120F010_COST_CATEGORY as [Cost Center Type]
, T123F010_COSTING_CODE_1 as [Parent ID (Hierarchy)]
, '' as [Business_Identifier]
, '' as [BU Manager ID]
, '' as [Inactive]
, '' as [Comments]
FROM [AUR].[T123_POSITION_COSTING] a 
inner join AUR.T101_POSITION b on a.T123F005_POSITION_NO = b.T101F005_POSITION_NO
inner join [AUR].[T121_COSTING_CODE] c on c.T121F010_COSTING_CODE = a.T123F015_COSTING_CODE_2
inner join [AUR].[T120_COSTING_CATEGORY] d on d.T120F005_COST_CATEGORY_CODE = c.T121F005_COST_CATEGORY_CODE
where b.T101F010_POSITION_STATUS = 'active'

UNION

-- LEVEL 3 COST CENTRES
SELECT distinct T123F010_COSTING_CODE_1+'-'+T123F015_COSTING_CODE_2+'-'+T123F020_COSTING_CODE_3 as AURION
, '' as Group2
, '' as Group3
, '' as Group4
, '' as Group5
, '' as Group6
, '' as Group7
, '' as Group8
, '' as Group9
, '' as Group10
, CONCAT(T123F010_COSTING_CODE_1,'-', T123F015_COSTING_CODE_2,'-',T123F020_COSTING_CODE_3) as [Reference ID]
, T121F015_DESCRIPTION as [Value]
, T123F020_COSTING_CODE_3 as [Cost Centre Org Code]
, '1900-01-01' as [Effective Date]
, T120F010_COST_CATEGORY as [Cost Center Type]
, T123F010_COSTING_CODE_1+'-'+T123F015_COSTING_CODE_2 as [Parent ID (Hierarchy)]
, '' as [Business_Identifier]
, '' as [BU Manager ID]
, '' as [Inactive]
, '' as [Comments]
FROM [AUR].[T123_POSITION_COSTING] a 
inner join AUR.T101_POSITION b on a.T123F005_POSITION_NO = b.T101F005_POSITION_NO
inner join [AUR].[T121_COSTING_CODE] c on c.T121F010_COSTING_CODE = a.T123F020_COSTING_CODE_3
inner join [AUR].[T120_COSTING_CATEGORY] d on d.T120F005_COST_CATEGORY_CODE = c.T121F005_COST_CATEGORY_CODE
where b.T101F010_POSITION_STATUS = 'active'


GO
