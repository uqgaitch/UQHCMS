USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC013_EmployeeRelatedPerson_WFHDefaultToAUS_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trHRDC013_EmployeeRelatedPerson_WFHDefaultToAUS_Upd]
AS
begin
update [WD].[trHRDC013_EmployeeRelatedPerson_WFHDefaultToAUS_UpdSel]
set HomeAddressCountryISOCode = HomeAddressCountryISOCodeNew
END
GO
