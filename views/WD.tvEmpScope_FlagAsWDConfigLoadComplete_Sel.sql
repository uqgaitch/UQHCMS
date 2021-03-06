USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvEmpScope_FlagAsWDConfigLoadComplete_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[tvEmpScope_FlagAsWDConfigLoadComplete_Sel]  AS
 
 SELECT TOP (100) PERCENT WD.HRDC006_EmployeePositionManagement.EmployeeID as WAMIKey, 
			 WD.HRDC006_EmployeePositionManagement.JobPositionID, 
			 WD.HRDC006_EmployeePositionManagement.HireDate, 
			 WD.EmpScope.OriginalDateCommenced, WD.EmpScope.ActualDateEffective, 
           	 WD.EmpScope.EmployeeID AS EmpscopeEmployeeID
FROM   WD.WDRecsLoaded INNER JOIN
             WD.HRDC006_EmployeePositionManagement ON WD.WDRecsLoaded.WAMIKey = WD.HRDC006_EmployeePositionManagement.EmployeeID AND WD.WDRecsLoaded.PositionID = WD.HRDC006_EmployeePositionManagement.JobPositionID AND 
             WD.WDRecsLoaded.HireDate = WD.HRDC006_EmployeePositionManagement.HireDate INNER JOIN
             WD.EmpScope ON WD.HRDC006_EmployeePositionManagement.EmployeeID = WD.EmpScope.WAMIKey AND WD.HRDC006_EmployeePositionManagement.JobPositionID = WD.EmpScope.PositionID AND 
             WD.HRDC006_EmployeePositionManagement.HireDate = WD.EmpScope.ActualDateEffective AND WD.HRDC006_EmployeePositionManagement.zEmployeeID = WD.EmpScope.EmployeeID
			 union
			 SELECT TOP (100) PERCENT WD.HRDC006_EmployeePositionManagement.EmployeeID as WAMIKey,
			 WD.HRDC006_EmployeePositionManagement.JobPositionID, 
			 WD.HRDC006_EmployeePositionManagement.HireDate, 
			 WD.EmpScope.OriginalDateCommenced, WD.EmpScope.ActualDateEffective, 
             WD.EmpScope.EmployeeID AS EmpscopeEmployeeID
FROM   WD.WDRecsLoaded INNER JOIN
             WD.HRDC006_EmployeePositionManagement ON WD.WDRecsLoaded.WAMIKey = WD.HRDC006_EmployeePositionManagement.EmployeeID AND WD.WDRecsLoaded.PositionID = WD.HRDC006_EmployeePositionManagement.JobPositionID AND 
             WD.WDRecsLoaded.HireDate = WD.HRDC006_EmployeePositionManagement.HireDate INNER JOIN
             WD.EmpScope ON WD.HRDC006_EmployeePositionManagement.EmployeeID = WD.EmpScope.WAMIKey AND WD.HRDC006_EmployeePositionManagement.JobPositionID = WD.EmpScope.PositionID AND 
             WD.HRDC006_EmployeePositionManagement.HireDate = WD.EmpScope.OriginalDateCommenced AND WD.HRDC006_EmployeePositionManagement.zEmployeeID = WD.EmpScope.EmployeeID

GO
