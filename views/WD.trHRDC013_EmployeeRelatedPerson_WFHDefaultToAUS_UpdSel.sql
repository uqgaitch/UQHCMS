USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC013_EmployeeRelatedPerson_WFHDefaultToAUS_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC013_EmployeeRelatedPerson_WFHDefaultToAUS_UpdSel] as
SELECT HomeAddressCountryISOCode, 'AUS' AS HomeAddressCountryISOCodeNew
FROM   WD.HRDC013_EmployeeRelatedPerson
WHERE (HomeAddressCountryISOCode IS NULL) AND (HomeAddressLine1 IS NOT NULL) AND (RelatedPersonRelationshipName LIKE '%WFH%') AND (HomePostalCode IS NULL OR
             HomePostalCode < N'9999')

GO
