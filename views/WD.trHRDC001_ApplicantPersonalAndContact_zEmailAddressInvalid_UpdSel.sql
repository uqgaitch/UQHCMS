USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_zEmailAddressInvalid_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_zEmailAddressInvalid_UpdSel] AS
SELECT        WD.HRDC001_ApplicantPersonalAndContact.zEmailAddressInvalid, 'X' as zEmailAddressInvalidNew, ZemailAddress, EmployeeID
FROM            WD.HRDC001_ApplicantPersonalAndContact INNER JOIN
                         AUR.T000_WAMI ON WD.HRDC001_ApplicantPersonalAndContact.zWAMIKey = AUR.T000_WAMI.T000F005_WAMI_KEY
where (zemailaddress NOT LIKE '%_@__%.__%'
or len(zemailaddress) - len(replace(zemailaddress, '@', '')) > 1
or zemailaddress not like  '[a-z,0-9,_,-]%@[a-z,0-9,_,-]%.[a-z][a-z]%'
or patindex ('%[@.-_]', zemailaddress) > 0
or zemailaddress like '%..%'
or zemailaddress like '%.@%'
or zEmailAddress like '%,%'
or zemailaddress like '% %'
or right(zemailaddress,1) = '¿'
)


GO
