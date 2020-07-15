USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC001_ApplicantPersonalAndContact_Ins]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trHRDC001_ApplicantPersonalAndContact_Ins]
AS
begin
insert into [wd].[HRDC001_ApplicantPersonalAndContact]
(EmployeeID, zWAMIKey, zSource,zLoadDate
)

select 
EmployeeID, zWAMIKey,zSource, zLoadDate
from [WD].[trHRDC001_ApplicantPersonalAndContact_InsSel]
END
GO
