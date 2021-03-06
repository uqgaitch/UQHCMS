USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC003_ApplicantDemographic_DualNationality_InsSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC003_ApplicantDemographic_DualNationality_InsSel]
AS
SELECT WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey AS EmployeeID, WD.svEmpScope_UniqueWAMIKey_Sel.zSource, GETDATE() AS zLoadDate, 
AUR.T007_EEO_DETAILS.T007F125_CODE_E2 AS NationalityCountryISOCode, 'X' AS zDualCitizen, 
             WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey AS zWAMIKey
FROM   AUR.T007_EEO_DETAILS INNER JOIN
             WD.svEmpScope_UniqueWAMIKey_Sel ON AUR.T007_EEO_DETAILS.T007F005_WAMI_KEY = WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey
WHERE (AUR.T007_EEO_DETAILS.T007F125_CODE_E2 IS NOT NULL)
and (T007F125_CODE_E2 <> T007F115_CODE_E1)


GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[21] 2[19] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "T007_EEO_DETAILS (AUR)"
            Begin Extent = 
               Top = 35
               Left = 715
               Bottom = 450
               Right = 1123
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "svEmpScope_UniqueWAMIKey_Sel (WD)"
            Begin Extent = 
               Top = 87
               Left = 208
               Bottom = 306
               Right = 489
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1590
         Width = 1110
         Width = 2780
         Width = 1830
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2600
         Alias = 3150
         Table = 3080
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trHRDC003_ApplicantDemographic_DualNationality_InsSel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trHRDC003_ApplicantDemographic_DualNationality_InsSel'
GO
