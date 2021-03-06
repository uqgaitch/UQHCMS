USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC006_EmployeePositionManagement_SubsSecondment_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trHRDC006_EmployeePositionManagement_SubsSecondment_UpdSel]  AS
SELECT  WD.HRDC006_EmployeePositionManagement.EmployeeID, WD.HRDC006_EmployeePositionManagement.JobPositionID, WD.HRDC006_EmployeePositionManagement.LoadPhase, '2' AS LoadPhaseNew, 
             WD.HRDC006_EmployeePositionManagement.ChangeFromPositionID, HRDC006_EmployeePositionManagement_1.JobPositionID AS ChangeFromPositionIDNew, WD.HRDC006_EmployeePositionManagement.Substantive, 'Y' AS SubstantiveNew, 
             WD.HRDC006_EmployeePositionManagement.EmployeeContractType, 'Secondment' AS EmployeeContractTypeNew, WD.HRDC006_EmployeePositionManagement.EmployeeContractStatus, 'RECEIVED' AS EmployeeContractStatusNew, 
             WD.HRDC006_EmployeePositionManagement.ContractDescription, 'Secondment' AS ContractDescriptionNew, WD.HRDC006_EmployeePositionManagement.HireDate, WD.EmpScope.ActualDateEffective AS HireDateNew
FROM   WD.HRDC006_EmployeePositionManagement INNER JOIN
             WD.HRDC006_EmployeePositionManagement AS HRDC006_EmployeePositionManagement_1 ON WD.HRDC006_EmployeePositionManagement.EmployeeID = HRDC006_EmployeePositionManagement_1.EmployeeID AND 
             WD.HRDC006_EmployeePositionManagement.zEmployeeID = HRDC006_EmployeePositionManagement_1.zEmployeeID INNER JOIN
             WD.EmpScope ON WD.HRDC006_EmployeePositionManagement.EmployeeID = WD.EmpScope.WAMIKey AND WD.HRDC006_EmployeePositionManagement.zEmployeeID = WD.EmpScope.EmployeeID AND 
             WD.HRDC006_EmployeePositionManagement.JobPositionID = WD.EmpScope.PositionID
WHERE (WD.HRDC006_EmployeePositionManagement.zEmpOnSecondment = N'X') AND (WD.HRDC006_EmployeePositionManagement.zSubs IS NULL) AND (HRDC006_EmployeePositionManagement_1.zEmpOnSecondment = N'X') AND 
             (HRDC006_EmployeePositionManagement_1.zSubs = N'X')







GO
