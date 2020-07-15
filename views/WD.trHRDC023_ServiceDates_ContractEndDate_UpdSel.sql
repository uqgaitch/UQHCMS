USE [DQS_STAGING_DATA]
GO

/****** Object:  View [WD].[trHRDC023_ServiceDates_ContractEndDate_UpdSel]    Script Date: 15/07/2020 3:50:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER VIEW [WD].[trHRDC023_ServiceDates_ContractEndDate_UpdSel]
AS
SELECT WD.HRDC023_ServiceDates.ContractEndDate, WD.HRDC023_ServiceDates.EndEmploymentDate AS ContractEndDateNew
FROM   WD.HRDC023_ServiceDates INNER JOIN
             WD.EmpScope ON WD.HRDC023_ServiceDates.EmployeeContingentWorkerID = WD.EmpScope.WAMIKey
WHERE (WD.HRDC023_ServiceDates.zExclude IS NULL) AND (WD.HRDC023_ServiceDates.EndEmploymentDate IS NOT NULL) 
GO


