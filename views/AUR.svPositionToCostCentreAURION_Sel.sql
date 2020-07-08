SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [AUR].[svPositionToCostCentreAURION_Sel]
AS
SELECT        AUR.svPositionToCostCentre_Sel.T123F005_POSITION_NO, AUR.svPositionToCostCentre_Sel.COST_CENTRE, DD.ddCostCentres.AURION
FROM            AUR.svPositionToCostCentre_Sel INNER JOIN
                         DD.ddCostCentres ON AUR.svPositionToCostCentre_Sel.COST_CENTRE = DD.ddCostCentres.AURION
GO
