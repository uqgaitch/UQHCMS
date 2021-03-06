USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvEmpScope_MaxT104_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[tvEmpScope_MaxT104_Sel] AS
select a.T104F005_EMPLOYEE_NO, a.T104F040_POSITION_NO,a.T104F025_DATE_EFFECTIVE, a.T104F065_CURRENT_FLAG, a.T104F035_CONNECT_DATE_TO
from aur.t104_employment_history a
where T104F025_DATE_EFFECTIVE
	= (select max(T104F025_DATE_EFFECTIVE)
	from aur.t104_employment_history b cross join wd.Param
		where a.T104F005_EMPLOYEE_NO = b.T104F005_EMPLOYEE_NO
		and b.T104F025_DATE_EFFECTIVE <= GoLiveDate
		and b.T104F035_CONNECT_DATE_TO >= GoLiveDate
		)
		--and T104F005_EMPLOYEE_NO = '2176869'
--and T104F065_CURRENT_FLAG <> 'FUTURE'  
GO
