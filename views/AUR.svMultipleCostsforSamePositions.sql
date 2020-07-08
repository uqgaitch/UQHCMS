SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [AUR].[svMultipleCostsforSamePositions]
as
select *,substring(cast(T123F050_PERCENTAGE_VALUE/100 as varchar),1,6) as DistributionPercent,case 
	when T123F010_costing_code_1 is not null and T123F015_costing_code_2 is null then T123F010_costing_code_1 
	when T123F015_costing_code_2 is not null and T123F020_costing_code_3 is null then T123F010_costing_code_1 + '-' + T123F015_costing_code_2
	when T123F020_costing_code_3 is not null then T123F010_costing_code_1 + '-' + T123F015_costing_code_2 + '-' + T123F020_costing_code_3
    end CostOverride from(
(SELECT T123F005_POSITION_NO,T123F010_costing_code_1,T123F015_costing_code_2,T123F020_costing_code_3,T123F050_PERCENTAGE_VALUE,T127F015_DATE,T127F025_CONNECT_DATE_TO
FROM aur.T123_POSITION_COSTING
INNER JOIN aur.t127_posn_costing_date ON t127f005_position_no=t123f005_position_no AND t127f010_trans_no=t123f008_date_trans_no
WHERE  DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) between T127F015_DATE and T127F025_CONNECT_DATE_TO) )b
GO
