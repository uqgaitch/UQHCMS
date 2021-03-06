USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_FlagWDLoadedSuccess_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[trEmpScope_FlagWDLoadedSuccess_UpdSel]
AS
SELECT WD.EmpScope.zWDLoadConfig, 'X' AS zWDLoadConfigNew
FROM   WD.EmpScope INNER JOIN
             WD.tvEmpScope_FlagAsWDConfigLoadComplete_Sel ON WD.EmpScope.WAMIKey = WD.tvEmpScope_FlagAsWDConfigLoadComplete_Sel.WAMIKey AND WD.EmpScope.PositionID = WD.tvEmpScope_FlagAsWDConfigLoadComplete_Sel.JobPositionID AND 
             WD.EmpScope.EmployeeID = WD.tvEmpScope_FlagAsWDConfigLoadComplete_Sel.EmpscopeEmployeeID AND WD.EmpScope.ActualDateEffective = WD.tvEmpScope_FlagAsWDConfigLoadComplete_Sel.ActualDateEffective AND 
             WD.EmpScope.OriginalDateCommenced = WD.tvEmpScope_FlagAsWDConfigLoadComplete_Sel.OriginalDateCommenced
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
         Begin Table = "EmpScope (WD)"
            Begin Extent = 
               Top = 0
               Left = 1512
               Bottom = 466
               Right = 2039
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tvEmpScope_FlagAsWDConfigLoadComplete_Sel (WD)"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 206
               Right = 361
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
      Begin ColumnWidths = 10
         Width = 284
         Width = 1000
         Width = 1900
         Width = 2510
         Width = 1850
         Width = 2160
         Width = 2030
         Width = 2440
         Width = 1630
         Width = 2680
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3840
         Alias = 3520
         Table = 3020
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 2210
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trEmpScope_FlagWDLoadedSuccess_UpdSel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trEmpScope_FlagWDLoadedSuccess_UpdSel'
GO
