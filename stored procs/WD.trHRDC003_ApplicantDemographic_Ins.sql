USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC003_ApplicantDemographic_Ins]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trHRDC003_ApplicantDemographic_Ins]
AS
begin
insert into [wd].[HRDC003_ApplicantDemographic]
(EmployeeID, zWAMIKey, zSource, zLoadDate
)

select EmployeeID, WAMIKey, zSource, 
getdate() as zLoadDate
from [WD].[trHRDC003_ApplicantDemographic_InsSel]
END
GO
