USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC038_CollectiveAgreement_EffectiveDateSecondment_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[trHRDC038_CollectiveAgreement_EffectiveDateSecondment_UpdSel]
AS
SELECT WD.HRDC038_CollectiveAgreement.EmployeeID, WD.HRDC038_CollectiveAgreement.PositionID, WD.HRDC038_CollectiveAgreement.EffectiveDate, 
             CASE WHEN WD.HRDC006_EmployeePositionManagement.HireDate > '2018-01-01' THEN WD.HRDC006_EmployeePositionManagement.HireDate ELSE '2018-01-01' END AS EffectiveDateNew, WD.HRDC038_CollectiveAgreement.zHireDate, 
             CASE WHEN WD.HRDC006_EmployeePositionManagement.HireDate > '2018-01-01' THEN WD.HRDC006_EmployeePositionManagement.HireDate ELSE '2018-01-01' END AS zHireDateNew, WD.HRDC038_CollectiveAgreement.zEmpOnSecondment, 
             'X' AS zEmpOnSecondmentNew
FROM   WD.HRDC038_CollectiveAgreement INNER JOIN
             WD.HRDC006_EmployeePositionManagement ON WD.HRDC038_CollectiveAgreement.EmployeeID = WD.HRDC006_EmployeePositionManagement.EmployeeID AND WD.HRDC038_CollectiveAgreement.PositionID = WD.HRDC006_EmployeePositionManagement.JobPositionID
WHERE (WD.HRDC006_EmployeePositionManagement.LoadPhase = N'2')
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
               Bottom = 485
               Right = 447
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "HRDC006_EmployeePositionManagement (WD)"
            Begin Extent = 
               Top = 15
               Left = 734
               Bottom = 212
               Right = 1233
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
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 4280
         Alias = 3820
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
' , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trHRDC038_CollectiveAgreement_EffectiveDateSecondment_UpdSel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trHRDC038_CollectiveAgreement_EffectiveDateSecondment_UpdSel'
GO
