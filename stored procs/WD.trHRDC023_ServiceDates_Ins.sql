USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC023_ServiceDates_Ins]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [WD].[trHRDC023_ServiceDates_Ins] AS
begin
insert into [wd].[HRDC023_ServiceDates]
(EmployeeContingentWorkerID,
zWamiKey,
zSource,
zLoadDate
)

select 
EmployeeContingentWorkerID,
zWamiKey,
zSource,
zLoadDate
from [WD].[trHRDC023_ServiceDates_InsSel]
END



GO
