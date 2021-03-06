USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC017_CarryOverBalances_CarryOverExpirationDate_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[tvHRDC017_CarryOverBalances_CarryOverExpirationDate_Sel]
AS
select EmployeeID, DateTo, dateadd(d,90,DateTo) as CarryOverExpirationDate
from (
SELECT        WD.EMPscope.WAMIKey AS EmployeeID, MAX(T510F055_DATE_TO) AS DateTo
FROM            AUR.T510_PAYROLL_TRANSACTION, wd.empscope
where T510F055_DATE_TO is not null
and AUR.T510_PAYROLL_TRANSACTION.T510F005_EMPLOYEE_NO = WD.EMPSCOPE.EmployeeID
GROUP BY WD.Empscope.WAMIKey
)A
GO
