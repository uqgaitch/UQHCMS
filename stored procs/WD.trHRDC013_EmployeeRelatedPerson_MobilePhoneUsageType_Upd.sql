USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC013_EmployeeRelatedPerson_MobilePhoneUsageType_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trHRDC013_EmployeeRelatedPerson_MobilePhoneUsageType_Upd]
AS
begin
update [WD].[trHRDC013_EmployeeRelatedPerson_MobilePhoneUsageType_UpdSel]
set 
MobilePhoneUsageType = MobilePhoneUsageTypeNew
END
GO
