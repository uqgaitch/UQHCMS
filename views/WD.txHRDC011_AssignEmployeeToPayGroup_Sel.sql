USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC011_AssignEmployeeToPayGroup_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[txHRDC011_AssignEmployeeToPayGroup_Sel] as

SELECT        
isnull(EmployeeID,'') as EmployeeID
,isnull(PositionID,'') as PositionID
,isnull(EffectiveDate,'') as EffectiveDate
,isnull(PayGroupID,'') as  PayGroupID


FROM            WD.HRDC011_AssignEmployeeToPayGroup
where zExclude is  null
GO
