USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC038_CollectiveAgreement_CollectiveAgreementFactorOption1HEGS06_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[trHRDC038_CollectiveAgreement_CollectiveAgreementFactorOption1HEGS06_UpdSel]
AS
SELECT WD.EmpScope.WAMIKey, WD.EmpScope.PositionID, WD.EmpScope.EmployeeID, WD.HRDC038_CollectiveAgreement.CollectiveAgreementFactorOption1, 'HEGS06A' AS CollectiveAgreementFactorOption1New, WD.EmpScope.EmploymentType, WD.EmpScope.AttendanceType, 
             WD.EmpScope.AwardCode, WD.EmpScope.JobCode, AUR.T101_POSITION.T101F020_CLASSIFICATION
FROM   WD.HRDC038_CollectiveAgreement INNER JOIN
             WD.EmpScope ON WD.HRDC038_CollectiveAgreement.EmployeeID = WD.EmpScope.WAMIKey AND WD.HRDC038_CollectiveAgreement.PositionID = WD.EmpScope.PositionID LEFT OUTER JOIN
             AUR.T101_POSITION ON WD.EmpScope.PositionID = AUR.T101_POSITION.T101F005_POSITION_NO
WHERE (WD.EmpScope.AttendanceType = N'CASUAL') AND (WD.EmpScope.AwardCode = N'NOPAY') AND (AUR.T101_POSITION.T101F020_CLASSIFICATION LIKE 'Z%') AND (AUR.T101_POSITION.T101F020_CLASSIFICATION <> 'ZBOARD') OR
             (WD.EmpScope.EmploymentType = N'INCONT') AND (WD.EmpScope.AttendanceType = N'CASUAL') AND (WD.EmpScope.JobCode = 'OTHER') OR
             (AUR.T101_POSITION.T101F020_CLASSIFICATION = 'OTH013')
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
         Begin Table = "HRDC038_CollectiveAgreement (WD)"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 435
               Right = 692
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EmpScope (WD)"
            Begin Extent = 
               Top = 9
               Left = 749
               Bottom = 410
               Right = 1053
            End
            DisplayFlags = 280
            TopColumn = 14
         End
         Begin Table = "T101_POSITION (AUR)"
            Begin Extent = 
               Top = 21
               Left = 1229
               Bottom = 409
               Right = 1640
            End
            DisplayFlags = 280
            TopColumn = 11
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1440
         Width = 1390
         Width = 3150
         Width = 3090
         Width = 3120
         Width = 1730
         Width = 2380
         Width = 1000
         Width = 1000
         Width = 1000
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3960
         Alias = 3150
         Table = 2160
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
' , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trHRDC038_CollectiveAgreement_CollectiveAgreementFactorOption1HEGS06_UpdSel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trHRDC038_CollectiveAgreement_CollectiveAgreementFactorOption1HEGS06_UpdSel'
GO
