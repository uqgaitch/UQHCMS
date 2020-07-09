USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC038_CollectiveAgreement_Ins]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trHRDC038_CollectiveAgreement_Ins]
AS
begin
insert into [wd].[HRDC038_CollectiveAgreement]
(EmployeeID, zWAMIKey, zEmployeeID,  zSource, zLoadDate, PositionID
)

select EmployeeID, WAMIKey, zEmployeeID, zSource, 
getdate() as zLoadDate, PositionID
from [WD].[trHRDC038_CollectiveAgreement_InsSel]
END
GO
