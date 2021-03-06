USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC023_ServiceDates_EndEmploymentDateBlank_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC023_ServiceDates_EndEmploymentDateBlank_UpdSel] AS
SELECT WD.HRDC023_ServiceDates.EndEmploymentDate, NULL AS EndEmploymentDateNew, WD.tvEmpScope_MinDateCommencedFIXED_Sel.WAMIKey, WD.tvEmpScope_MinDateCommencedFIXED_Sel.DateCommenced AS DateCommencedFixed, 
             WD.tvEmpScope_MinDateCommencedNonFIXED_Sel.DateCommenced AS DateCommencedNonFixed
FROM   WD.tvEmpScope_MinDateCommencedNonFIXED_Sel INNER JOIN
             WD.tvEmpScope_MinDateCommencedFIXED_Sel ON WD.tvEmpScope_MinDateCommencedNonFIXED_Sel.WAMIKey = WD.tvEmpScope_MinDateCommencedFIXED_Sel.WAMIKey AND 
             WD.tvEmpScope_MinDateCommencedNonFIXED_Sel.DateCommenced <= WD.tvEmpScope_MinDateCommencedFIXED_Sel.DateCommenced INNER JOIN
             WD.HRDC023_ServiceDates ON WD.tvEmpScope_MinDateCommencedFIXED_Sel.WAMIKey = WD.HRDC023_ServiceDates.EmployeeContingentWorkerID
WHERE (WD.HRDC023_ServiceDates.EndEmploymentDate IS NOT NULL)

GO
