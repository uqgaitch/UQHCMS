SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [AUR].[svPositionToCostCentre_Sel] as 
with cte as(
select T123F005_POSITION_NO,
case 
	when T123F010_costing_code_1 is not null and T123F015_costing_code_2 is null then T123F010_costing_code_1 
	when T123F015_costing_code_2 is not null and T123F020_costing_code_3 is null then T123F010_costing_code_1 + ' - ' + T123F015_costing_code_2
	when T123F020_costing_code_3 is not null then T123F010_costing_code_1 + ' - ' + T123F015_costing_code_2 + ' - ' + T123F020_costing_code_3
end as COST_CENTRE

,T123F010_COSTING_CODE_1
,T123F015_COSTING_CODE_2
,T123F020_COSTING_CODE_3

from aur.t123_position_costing)
select T123F005_POSITION_NO,max(COST_CENTRE) COST_CENTRE from cte group by T123F005_POSITION_NO
GO
