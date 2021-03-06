USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC032_WorkerAdditionalData_Ins]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trHRDC032_WorkerAdditionalData_Ins]
AS
begin
insert into [wd].[HRDC032_WorkerAdditionalData]
(
EmployeeID, 
EthnicityName,
zEthnicityName,
zWAMIKey,
zExclude, 
zSource, 
zLoadDate
)
select 
EmployeeID, 
EthnicityName,
zEthnicityName,
zWAMIKey,
zExclude, 
zSource, 
zLoadDate
from [WD].[trHRDC032_WorkerAdditionalData_InsSel]
END


GO
