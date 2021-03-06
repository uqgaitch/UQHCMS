USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC023_ServiceDates_CompanyServiceDate_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC023_ServiceDates_CompanyServiceDate_UpdSel]
AS
SELECT WD.HRDC023_ServiceDates.CompanyServiceDate, WD.tvHRDC023_ServiceDates_CompanyServiceDate_Sel.CompanyServiceDate AS CompanyServiceDateNew
FROM   WD.HRDC023_ServiceDates INNER JOIN
             WD.tvHRDC023_ServiceDates_CompanyServiceDate_Sel ON WD.HRDC023_ServiceDates.EmployeeContingentWorkerID = WD.tvHRDC023_ServiceDates_CompanyServiceDate_Sel.WAMIKey
GO
