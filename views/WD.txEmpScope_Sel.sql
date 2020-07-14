USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txEmpScope_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Empscope table
ALTER view [WD].[txEmpScope_Sel]
AS
SELECT WAMIKey, EmployeeID, EmployeeStatus, Surname, FirstName, PositionID, OrgUnitID, PositionStatus, PositionType, AttendanceType, EmploymentType, ActualDateEffective, DateCommenced, OriginalDateCommenced, 
                         ContractExpiryDate, ActualDateTo, AdminPayrollFrom, AdminLeaveFrom, PayEntity, JobCode, JobFamily, zHireType, zExclude, zExcludeReason, zSource, zLoadDate, zAssignmentType
FROM            WD.EmpScope
GO
