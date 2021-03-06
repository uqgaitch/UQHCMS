USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC026_UserBasedSecurityGroupAssignment_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[txHRDC026_UserBasedSecurityGroupAssignment_Sel]
as
SELECT 
 isnull([EmployeeID],'') as [EmployeeID]
,isnull([WorkdayAccountID],'') as [WorkdayAccountID]
,isnull([UserBasedSecurityGroup],'') as [UserBasedSecurityGroup]
FROM [DQS_STAGING_DATA].[WD].[HRDC026_UserBasedSecurityGroupAssignment]
where zExclude is null
GO
