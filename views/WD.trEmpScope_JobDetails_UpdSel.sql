USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_JobDetails_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trEmpScope_JobDetails_UpdSel] AS
SELECT         WD.EmpScope.JobFamily, AUR.T110_JOB_CODE.T110F020_JOB_FAMILY AS JobFamilyNew
FROM            WD.EmpScope inner join
                         AUR.T110_JOB_CODE ON AUR.T110_JOB_CODE.T110F005_JOB_CODE = 
						 wd.empscope.JobCode
GO
