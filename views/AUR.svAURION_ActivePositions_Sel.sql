SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [AUR].[svAURION_ActivePositions_Sel] as 
SELECT T101F005_POSITION_NO, T101F045_POSITION_TITLE FROM AUR.T101_POSITION WHERE T101F010_POSITION_STATUS = 'ACTIVE'
GO
