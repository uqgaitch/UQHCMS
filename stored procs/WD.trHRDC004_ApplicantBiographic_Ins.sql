USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC004_ApplicantBiographic_Ins]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trHRDC004_ApplicantBiographic_Ins]
AS
begin
insert into [wd].[HRDC004_ApplicantBiographic]
(EmployeeID, zWAMIKey, zSource, zLoadDate
)

select EmployeeID, WAMIKey, zSource, 
getdate() as zLoadDate
from [WD].[trHRDC004_ApplicantBiographic_InsSel]
END
GO
