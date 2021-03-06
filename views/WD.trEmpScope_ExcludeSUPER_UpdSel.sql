USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_ExcludeSUPER_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trEmpScope_ExcludeSUPER_UpdSel]  AS
select zExclude, 'X' as zExcludeNew,
zExcludeReason, 
case 
	when zexcludereason is null then 'Employment Type ' + EmploymentType + ' out of scope'
	else zExcludeReason + ';' + 'Employment Type ' + EmploymentType + ' out of scope' 
end as zExcludeReasonNew
from wd.empscope
where EmploymentType = 'SUPER'




GO
