USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_T104DetailsNoT001_InsSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[trEmpScope_T104DetailsNoT001_InsSel]
AS
SELECT AUR.T001_BASIC_DETAILS.T001F010_WAMI_KEY AS WAMIKey, AUR.T104_EMPLOYMENT_HISTORY.T104F005_EMPLOYEE_NO AS EmployeeID, AUR.T001_BASIC_DETAILS.T001F015_EMPLOYEE_STATUS AS EmployeeStatus, 
             AUR.T104_EMPLOYMENT_HISTORY.T104F040_POSITION_NO AS PositionID, AUR.T104_EMPLOYMENT_HISTORY.T104F025_DATE_EFFECTIVE AS ActualDateEffective, AUR.T104_EMPLOYMENT_HISTORY.T104F035_CONNECT_DATE_TO AS ActualDateTo, 
             AUR.T104_EMPLOYMENT_HISTORY.T104F085_EMPLOYMENT_TYPE AS EmploymentType, AUR.T104_EMPLOYMENT_HISTORY.T104F095_ATTENDANCE_TYPE AS AttendanceType, AUR.T001_BASIC_DETAILS.T001F355_AWARD_CODE AS AwardCode, 
             'CURRENT - DETAILS FROM T104' AS zHireType, 'AURION' AS zSource, GETDATE() AS zLoadDate, AUR.T000_WAMI.T000F015_SURNAME AS Surname, SUBSTRING(AUR.T000_WAMI.T000F020_GIVEN_NAMES, 1, CHARINDEX(' ', AUR.T000_WAMI.T000F020_GIVEN_NAMES + ' ') - 1) 
             AS FirstName
FROM   AUR.T104_EMPLOYMENT_HISTORY INNER JOIN
             AUR.T001_BASIC_DETAILS ON AUR.T001_BASIC_DETAILS.T001F005_EMPLOYEE_NO = AUR.T104_EMPLOYMENT_HISTORY.T104F005_EMPLOYEE_NO INNER JOIN
             AUR.T206_CLASSIFICATION ON AUR.T206_CLASSIFICATION.T206F005_CLASSIFICATION_CODE = AUR.T104_EMPLOYMENT_HISTORY.T104F050_CLASSIFICATION INNER JOIN
             AUR.T900_CODES ON AUR.T900_CODES.T900F005_CODE_TYPE = AUR.T206_CLASSIFICATION.T206F030_CG AND AUR.T900_CODES.T900F010_CODE = AUR.T206_CLASSIFICATION.T206F035_CLASS_GROUP_CODE INNER JOIN
             WD.Param ON AUR.T104_EMPLOYMENT_HISTORY.T104F025_DATE_EFFECTIVE <= WD.Param.GoLiveDate AND AUR.T104_EMPLOYMENT_HISTORY.T104F035_CONNECT_DATE_TO >= WD.Param.GoLiveDate INNER JOIN
             AUR.T000_WAMI ON AUR.T001_BASIC_DETAILS.T001F010_WAMI_KEY = AUR.T000_WAMI.T000F005_WAMI_KEY
WHERE (AUR.T001_BASIC_DETAILS.T001F015_EMPLOYEE_STATUS = 'ACTIVE') AND (AUR.T900_CODES.T900F025_CODE_GROUP NOT IN ('VOLNTR') OR
             AUR.T900_CODES.T900F025_CODE_GROUP IS NULL) AND (AUR.T104_EMPLOYMENT_HISTORY.T104F085_EMPLOYMENT_TYPE NOT IN ('INCONT') OR
             AUR.T104_EMPLOYMENT_HISTORY.T104F085_EMPLOYMENT_TYPE IS NULL) AND (AUR.T001_BASIC_DETAILS.T001F355_AWARD_CODE NOT IN ('PRACTT', 'SUPER') OR
             AUR.T001_BASIC_DETAILS.T001F355_AWARD_CODE IS NULL) AND (AUR.T104_EMPLOYMENT_HISTORY.T104F050_CLASSIFICATION NOT IN ('ZBOARD') OR
             AUR.T104_EMPLOYMENT_HISTORY.T104F050_CLASSIFICATION IS NULL) AND (NOT EXISTS
                 (SELECT 1 AS Expr1
                 FROM    WD.EmpScope
                 WHERE (EmployeeID = AUR.T104_EMPLOYMENT_HISTORY.T104F005_EMPLOYEE_NO) AND (PositionID = AUR.T104_EMPLOYMENT_HISTORY.T104F040_POSITION_NO)))
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
         Begin Table = "T104_EMPLOYMENT_HISTORY (AUR)"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 206
               Right = 468
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T001_BASIC_DETAILS (AUR)"
            Begin Extent = 
               Top = 9
               Left = 552
               Bottom = 206
               Right = 973
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T206_CLASSIFICATION (AUR)"
            Begin Extent = 
               Top = 405
               Left = 57
               Bottom = 602
               Right = 456
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T900_CODES (AUR)"
            Begin Extent = 
               Top = 603
               Left = 57
               Bottom = 800
               Right = 437
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Param (WD)"
            Begin Extent = 
               Top = 801
               Left = 57
               Bottom = 998
               Right = 333
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T000_WAMI (AUR)"
            Begin Extent = 
               Top = 8
               Left = 1002
               Bottom = 205
               Right = 1405
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
      Begin ColumnWidths = 1' , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trEmpScope_T104DetailsNoT001_InsSel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'3
         Width = 284
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
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
         Column = 2750
         Alias = 900
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
' , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trEmpScope_T104DetailsNoT001_InsSel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trEmpScope_T104DetailsNoT001_InsSel'
GO
