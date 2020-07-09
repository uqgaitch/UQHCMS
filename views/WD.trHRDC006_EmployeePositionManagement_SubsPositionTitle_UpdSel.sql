USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC006_EmployeePositionManagement_SubsPositionTitle_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC006_EmployeePositionManagement_SubsPositionTitle_UpdSel]  AS
SELECT  WD.HRDC006_EmployeePositionManagement.JobPositionTitle, AUR.T001_BASIC_DETAILS.T001F180_SUBS_JOB_TITLE AS JobPositionTitleNew
FROM   WD.HRDC006_EmployeePositionManagement INNER JOIN
             AUR.T001_BASIC_DETAILS ON WD.HRDC006_EmployeePositionManagement.zEmployeeID = AUR.T001_BASIC_DETAILS.T001F005_EMPLOYEE_NO AND 
             WD.HRDC006_EmployeePositionManagement.JobPositionID = AUR.T001_BASIC_DETAILS.T001F145_SUBS_POSITION_NO
WHERE (WD.HRDC006_EmployeePositionManagement.zSubs = N'X')






GO
