SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [AUR].[HRDC026_UserBasedSecurityGroupAssignment_InsSel] as 



  SELECT 
  a.WAMIKey as EmployeeID,
  T803F005_USER as WorkdayAccountID,
  a.EmployeeID as zEmployeeID,
  a.WAMIKey as zWAMIKey, 
  zExclude,
  zSource,
  CONVERT(varchar, GETDATE(), 20) AS zLoadDate
 FROM  WD.EmpScope a
 inner join [AUR].[T803_SECURITY_USER] b
 on a.WAMIKey=b.T803F050_WAMI_KEY
  inner join 
 (select WAMIKey,max(EmployeeID) EmployeeID FROM  WD.EmpScope group by WAMIKey) d
 on a.WAMIKey=d.WAMIKey and a.EmployeeID=d.EmployeeID
 where zExclude is null
GO
