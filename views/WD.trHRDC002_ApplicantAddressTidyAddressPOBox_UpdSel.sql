USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC002_ApplicantAddressTidyAddressPOBox_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trHRDC002_ApplicantAddressTidyAddressPOBox_UpdSel] as
select  zAddressLine1, 
	case 
		when zAddressLine1 like 'P o%' then
			replace(zAddressLine1,'P O','P.O') 
		when zAddressLine1 like 'PO B%' then
			replace(zAddressLine1,'PO B','P.O B') 	
		end	as zAddressLine1New
from wd.HRDC002_ApplicantAddress
where (zaddressline1 like 'P o%'
	or 	zaddressline1 like 'PO B%')

GO
