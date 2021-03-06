USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [DD].[CreateAURION_SupervisoryOrganisations_005]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure[DD].[CreateAURION_SupervisoryOrganisations_005] as 

-- update the dd with the manual changes.

UPDATE A
  SET a.Value = b.Value,
      a.[Organization Subtype] = b.[Organization Subtype],
	  a.Superior_Organization_ID = b.Superior_Organization_ID,
	  a.comments = b.comments

/*SELECT a.[Back to ToC], a.Reference_ID, a.Value, b.Value,
a.[Organization Subtype], b.[Organization Subtype], a.[Location ID], b.[Location ID]
, a.[Superior Organization Name], b.[Superior Organization Name]
, a.Superior_Organization_ID, b.Superior_Organization_ID,
b.Comments
,a.LegacyOrgID*/


FROM dd.SupervisoryOrganisation a
INNER JOIN dd.SupervisoryOrganisation_Manual b
on a.[Back to ToC] = b.[Back to ToC]
GO
