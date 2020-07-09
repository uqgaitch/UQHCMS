USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [dbo].[UpdateDDPositions]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[UpdateDDPositions]
as
begin
update [DD].[ddPositions]
set Status='Active'

update d
set status='Inactive'
from [DD].[ddPositions] d
left join [AUR].[T101_POSITION] p
on p.T101F005_POSITION_NO=d.[Back to ToC]
where T101F005_POSITION_NO is null or T101F010_POSITION_STATUS='Inactive'
end
GO
