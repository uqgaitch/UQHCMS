USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC017_CarryOverBalances_InsSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC017_CarryOverBalances_InsSel] AS
SELECT WD.EmpScope.WAMIKey AS EmployeeID, 
AUR.T520_LEAVE_TYPE.T520F010_LEAVE_TYPE_CODE AS TimeOffPlanName, 
MAP.LeaveTypes.TargetValue AS zTimeOffPlanName, 
CONVERT(VARCHAR(10), GETDATE(), 126) AS OverrideBalanceDate, 
             CASE WHEN AUR.T520_LEAVE_TYPE.T520F170_DISP_PRO_RATA_BALS = 'n/a' THEN NULL 
			 ELSE AUR.T520_LEAVE_TYPE.T520F170_DISP_PRO_RATA_BALS END AS OverrideBalanceUnits,
			 ROUND(CAST(AUR.T520_LEAVE_TYPE.T520F160_PRO_RATA_BAL_MINS AS float) / 60, 2) AS zTotalBalanceHoursDec,
			 AUR.T520_LEAVE_TYPE.T520F160_PRO_RATA_BAL_MINS AS zTotalBalanceMins, 
             AUR.T520_LEAVE_TYPE.T520F005_EMPLOYEE_NO AS zEmployeeID, 
			 NULL as zPositionID,
			 WD.EmpScope.WAMIKey AS zWAMIKey,
			 'AURION' AS zSource, 
			 GETDATE() AS zLoadDate
FROM   WD.EmpScope INNER JOIN
             AUR.T520_LEAVE_TYPE ON WD.EmpScope.EmployeeID = AUR.T520_LEAVE_TYPE.T520F005_EMPLOYEE_NO INNER JOIN
             MAP.LeaveTypes ON AUR.T520_LEAVE_TYPE.T520F010_LEAVE_TYPE_CODE = MAP.LeaveTypes.SourceValue
WHERE (WD.EmpScope.zExclude IS NULL) AND (AUR.T520_LEAVE_TYPE.T520F160_PRO_RATA_BAL_MINS <> 0) AND (AUR.T520_LEAVE_TYPE.T520F150_PRO_RATA_BAL_DATE IS NOT NULL) 
AND (MAP.LeaveTypes.TargetDGW = N'HRDC017') AND (MAP.LeaveTypes.ConstructedData is NULL)

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
               Top = 22
               Left = 137
               Bottom = 412
               Right = 441
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T520_LEAVE_TYPE (AUR)"
            Begin Extent = 
               Top = 44
               Left = 765
               Bottom = 430
               Right = 1176
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LeaveTypes (MAP)"
            Begin Extent = 
               Top = 34
               Left = 1323
               Bottom = 406
               Right = 1901
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
      Begin ColumnWidths = 13
         Width = 284
         Width = 2240
         Width = 1800
         Width = 1950
         Width = 1590
         Width = 2680
         Width = 1850
         Width = 1870
         Width = 1960
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3810
         Alias = 2500
         Table = 3190
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
' , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trHRDC017_CarryOverBalances_InsSel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trHRDC017_CarryOverBalances_InsSel'
GO
