USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_LegalLastName_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_LegalLastName_UpdSel]
AS
SELECT        LegalLastName, zSurname AS LegalLastNameNew
FROM            WD.HRDC001_ApplicantPersonalAndContact
GO
