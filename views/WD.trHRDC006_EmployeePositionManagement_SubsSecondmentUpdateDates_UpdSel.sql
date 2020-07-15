USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC006_EmployeePositionManagement_SubsSecondmentUpdateDates_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC006_EmployeePositionManagement_SubsSecondmentUpdateDates_UpdSel]  AS
SELECT ProbationStartDate, HireDate AS ProbationStartDateNew, PositionStartDateForConversion, HireDate AS PositionStartDateForConversionNew
FROM   WD.HRDC006_EmployeePositionManagement
WHERE (zEmpOnSecondment = N'X') AND (zSubs IS NULL)







GO
