USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PBI].[Region_Postcode]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [PBI].[Region_Postcode] as

select EmployeeID, zRegion as Region, zPostalCode as PostalCode ,
case
       when zpostalcode is null or zpostalcode = '' 
              then 'Aus Address - no Postcode specified'
       else
              'Overseas Address - however Postcode not set to 9999'
end as Issue
from wd.hrdc002_applicantaddress
where  (zPostalCode is null or zPostalCode = '')
or
       (zPossOverseasAddress is null
              and zregion not like 'AUS%')
GO
