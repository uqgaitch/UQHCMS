USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC002_ApplicantAddressDetailsAddressLine1_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER view [WD].[trHRDC002_ApplicantAddressDetailsAddressLine1_UpdSel] as

SELECT        
zAddressLine1,
dbo.StripNonASCII(replace(AddressLine1,'"','""')) AS zAddressLine1New
from WD.HRDC002_ApplicantAddress

GO
