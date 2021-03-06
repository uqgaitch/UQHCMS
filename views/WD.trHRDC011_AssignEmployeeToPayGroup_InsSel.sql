USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC011_AssignEmployeeToPayGroup_InsSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC011_AssignEmployeeToPayGroup_InsSel]
AS
SELECT        WAMIKey as EmployeeID,
			 PositionID,
			convert(varchar, ActualDateEffective, 103) as EffectiveDate,
			PayEntity as PayGroupID,
			WAMIKey AS zWAMIKey, 
			NULL as zExlude,		
			'AURION' as zScource,
			 CONVERT(varchar, GETDATE(), 20) AS zLoadDate
FROM            WD.EmpScope where zexclude is null

GO
