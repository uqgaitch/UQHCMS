USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC006_EmployeePositionManagement_ContractTypeBlank_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC006_EmployeePositionManagement_ContractTypeBlank_UpdSel] AS
SELECT EmployeeContractType, '' AS EmployeeContractTypeNew
FROM   WD.HRDC006_EmployeePositionManagement

GO
