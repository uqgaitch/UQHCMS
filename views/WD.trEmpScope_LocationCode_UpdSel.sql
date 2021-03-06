USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_LocationCode_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trEmpScope_LocationCode_UpdSel]  AS
SELECT 
	LocationDesc,
	case 
		when LocationCode = 'Z08' then 'USA'
		when LocationCode not in ('Z08','Z09') then 'AUS'
		else 'OTH'
	end as LocationDescNew
from wd.empscope
where zexclude is null and LocationCode is not null

GO
