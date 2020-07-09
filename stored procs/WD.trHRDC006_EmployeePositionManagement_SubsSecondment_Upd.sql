USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC006_EmployeePositionManagement_SubsSecondment_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [WD].[trHRDC006_EmployeePositionManagement_SubsSecondment_Upd]
AS
begin
update [WD].[trHRDC006_EmployeePositionManagement_SubsSecondment_UpdSel]
set LoadPhase = LoadPhaseNew, 
ChangeFromPositionID = ChangeFromPositionIDNew, 
Substantive = SubstantiveNew, 
EmployeeContractType = EmployeeContractTypeNew, 
EmployeeContractStatus = EmployeeContractStatusNew, 
ContractDescription = ContractDescriptionNew, 
HireDate = HireDateNew
END
GO
