USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC023_ServiceDates_EndEmploymentDate_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[trHRDC023_ServiceDates_EndEmploymentDate_UpdSel]
AS
SELECT WD.HRDC023_ServiceDates.EndEmploymentDate, WD.tvHRDC023_ServiceDates_EndEmploymentDate_Sel.EndEmploymentDate AS EndEmploymentDateNew
FROM   WD.HRDC023_ServiceDates INNER JOIN
             WD.tvHRDC023_ServiceDates_EndEmploymentDate_Sel ON WD.HRDC023_ServiceDates.EmployeeContingentWorkerID = WD.tvHRDC023_ServiceDates_EndEmploymentDate_Sel.WAMIKey
WHERE (WD.HRDC023_ServiceDates.zExclude IS NULL)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "HRDC023_ServiceDates (WD)"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 450
               Right = 451
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tvHRDC023_ServiceDates_EndEmploymentDate_Sel (WD)"
            Begin Extent = 
               Top = 9
               Left = 508
               Bottom = 152
               Right = 780
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
         Width = 3180
         Width = 2300
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 4440
         Alias = 3070
         Table = 1170
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
' , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trHRDC023_ServiceDates_EndEmploymentDate_UpdSel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trHRDC023_ServiceDates_EndEmploymentDate_UpdSel'
GO
