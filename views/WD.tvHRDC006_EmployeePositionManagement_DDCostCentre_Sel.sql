USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC006_EmployeePositionManagement_DDCostCentre_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[tvHRDC006_EmployeePositionManagement_DDCostCentre_Sel]  AS
SELECT AURION, REPLACE(AURION, ' ', '') AS CostCentreDD
FROM   DD.ddCostCentres






GO
