USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_NoContactDetails_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_NoContactDetails_UpdSel]
AS
select zNoContactDetails,
'X' as zNoContactDetailsNew
from wd.HRDC001_ApplicantPersonalAndContact
where WorkEmailAddress is null
and HomeEmailAddress is null
and HomePhoneNumber is null
and WorkPhoneNumber is null
and AdditionalPhoneNumber is null
and Additional2PhoneNumber is null
and Additional3PhoneNumber is null
GO
