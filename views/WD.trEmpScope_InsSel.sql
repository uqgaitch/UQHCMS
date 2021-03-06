USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_InsSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trEmpScope_InsSel]  AS
SELECT        T001.T001F010_WAMI_KEY AS WAMIKey, 
T001.T001F005_EMPLOYEE_NO AS EmployeeID, 
T001.T001F015_EMPLOYEE_STATUS AS EmployeeStatus, 
NULL as WorkdayID,
T000.T000F015_SURNAME AS Surname, 
SUBSTRING(T000.T000F020_GIVEN_NAMES, 1, CHARINDEX(' ', T000.T000F020_GIVEN_NAMES + ' ') - 1) AS FirstName, 
T001.T001F065_ACTUAL_POSITION_NO AS PositionID, 
T001.T001F145_SUBS_POSITION_NO AS SubsPositionID, 
NULL AS OrgUnitID, 
NULL AS PositionStatus, 
NULL AS PositionType, 
T001.T001F230_ATTENDANCE_TYPE AS AttendanceType, 
T001.T001F220_EMPLOYMENT_TYPE AS EmploymentType,
						 T001.T001F060_ACTUAL_DATE_EFFECTIVE AS ActualDateEffective, 
						 T001.T001F250_DATE_COMMENCED AS DateCommenced, 
						 T001.T001F251_ORIGINAL_DATE_COMM AS OriginalDateCommenced, 
						 T001.T001F260_CONTRACT_EXPIRY_DATE AS ContractExpiryDate, 
						 T001.T001F062_ACTUAL_DATE_TO  AS ActualDateTo, 
						 T001.T001F352_ADMIN_PAYROLL_FROM AS AdminPayrollFrom, 
						 T001.T001F480_ADMIN_LEAVE_FROM AS AdminLeaveFrom, 
						 T001.T001F355_AWARD_CODE as AwardCode,
						 T001.T001F030_PAY_ENTITY AS PayEntity,
						 T001.T001F120_ACTUAL_JOB_CODE as JobCode,
						 NULL as JobFamily,
						  'CURRENT' as zHireType,
						 NULL AS zExclude, NULL AS zExcludeReason, 'AURION' AS zSource, GETDATE() AS zLoadDate, NULL as zAssignmentType
						
FROM            AUR.T000_WAMI AS T000 INNER JOIN
                         AUR.T001_BASIC_DETAILS AS T001 ON T000.T000F005_WAMI_KEY = T001.T001F010_WAMI_KEY
						 cross join wd.PARAM
WHERE       
(T001.T001F015_EMPLOYEE_STATUS = 'ACTIVE') 
AND
(T001.T001F062_ACTUAL_DATE_TO >= GoLiveDate OR T001.T001F062_ACTUAL_DATE_TO IS NULL)
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
         Begin Table = "T000"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 296
               Right = 326
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T001"
            Begin Extent = 
               Top = 5
               Left = 578
               Bottom = 308
               Right = 902
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
      Begin ColumnWidths = 15
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3645
         Alias = 2835
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
' , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trEmpScope_InsSel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trEmpScope_InsSel'
GO
