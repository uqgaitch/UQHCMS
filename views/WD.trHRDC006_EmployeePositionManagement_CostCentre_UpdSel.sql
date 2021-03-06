USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC006_EmployeePositionManagement_CostCentre_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC006_EmployeePositionManagement_CostCentre_UpdSel] AS
SELECT WD.HRDC006_EmployeePositionManagement.CostCenterOrganisation, 
case 
	when T123F010_costing_code_1 is not null and T123F015_costing_code_2 is null then T123F010_costing_code_1 
	when T123F015_costing_code_2 is not null and T123F020_costing_code_3 is null then T123F010_costing_code_1 + '-' + T123F015_costing_code_2
	when T123F020_costing_code_3 is not null then T123F010_costing_code_1 + '-' + T123F015_costing_code_2 + '-' + T123F020_costing_code_3
end as CostCenterOrganisationNew,
 WD.HRDC006_EmployeePositionManagement.JobPositionID
FROM   WD.HRDC006_EmployeePositionManagement INNER JOIN
             WD.EmpScope ON WD.HRDC006_EmployeePositionManagement.JobPositionID = WD.EmpScope.PositionID INNER JOIN
             AUR.T123_POSITION_COSTING ON WD.EmpScope.zAurionPositionID = AUR.T123_POSITION_COSTING.T123F005_POSITION_NO
WHERE (WD.EmpScope.zPositionToBeCreated = N'X')
GO
