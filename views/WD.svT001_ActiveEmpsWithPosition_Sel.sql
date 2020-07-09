USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[svT001_ActiveEmpsWithPosition_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER view [WD].[svT001_ActiveEmpsWithPosition_Sel] AS


select T001.* 
FROM AUR.T001_BASIC_DETAILS T001
WHERE T001.T001F015_EMPLOYEE_STATUS = 'ACTIVE' and T001F065_ACTUAL_POSITION_NO is not null
GO
