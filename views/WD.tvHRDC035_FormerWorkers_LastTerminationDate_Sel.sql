USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC035_FormerWorkers_LastTerminationDate_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[tvHRDC035_FormerWorkers_LastTerminationDate_Sel] AS
select T000F005_WAMI_KEY, max(T001F265_DATE_TERMINATED) as MaxLastTerminatonDate from wd.tvHRDC035_FormerWorkers_Sel
group by T000F005_WAMI_KEY

GO
