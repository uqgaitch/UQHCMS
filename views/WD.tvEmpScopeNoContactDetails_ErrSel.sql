USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvEmpScopeNoContactDetails_ErrSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[tvEmpScopeNoContactDetails_ErrSel] AS

SELECT  distinct      WD.EmpScope.WAMIKey,  WD.EmpScope.Surname,  WD.EmpScope.FirstName, 'Emp has no Email or Phone contact details' as zMessage

FROM         AUR.T000_WAMI INNER JOIN
                         WD.svT001_ActiveEmpsWithPosition_Sel ON AUR.T000_WAMI.T000F005_WAMI_KEY = WD.svT001_ActiveEmpsWithPosition_Sel.T001F010_WAMI_KEY INNER JOIN
                         WD.EmpScope ON WD.svT001_ActiveEmpsWithPosition_Sel.T001F010_WAMI_KEY = WD.EmpScope.WAMIKey
WHERE     (AUR.T000_WAMI.T000F045_CONTACT_PHONE_NO IS NULL) AND (AUR.T000_WAMI.T000F055_HOME_PHONE_NO IS NULL) AND (AUR.T000_WAMI.T000F155_MOBILE_PHONE IS NULL) 
                         AND (AUR.T000_WAMI.T000F160_EMAIL_ADDRESS IS NULL) AND (AUR.T000_WAMI.T000F320_CONTACT_MOBILE_PHONE IS NULL)


GO
