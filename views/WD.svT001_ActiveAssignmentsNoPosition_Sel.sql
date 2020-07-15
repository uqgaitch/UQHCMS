USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[svT001_ActiveAssignmentsNoPosition_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[svT001_ActiveAssignmentsNoPosition_Sel] AS
select * from [WD].[svT001_ActiveEmpsNoPosition_Sel]

where not exists	(select 1 from [WD].[svT001_ActiveEmpsWithPosition_Sel] a
					where a.T001F010_WAMI_KEY = [WD].[svT001_ActiveEmpsNoPosition_Sel].T001F010_WAMI_KEY)
				
--AND not exists	(select 1 from [WD].[svT001_TerminatedEmps_Sel] b		
--where b.T001F010_WAMI_KEY = [WD].[svT001_ActiveEmpsNoPosition_Sel].T001F010_WAMI_KEY)


GO
