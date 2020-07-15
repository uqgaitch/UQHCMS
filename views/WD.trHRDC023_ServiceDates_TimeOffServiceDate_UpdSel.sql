USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC023_ServiceDates_TimeOffServiceDate_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC023_ServiceDates_TimeOffServiceDate_UpdSel]
AS
SELECT TimeOffServiceDate, CompanyServiceDate AS TimeOffServiceDateNew
FROM   WD.HRDC023_ServiceDates
where zExclude is null and CompanyServiceDate is not null

GO
