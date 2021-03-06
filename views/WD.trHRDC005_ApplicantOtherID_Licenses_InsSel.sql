USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC005_ApplicantOtherID_Licenses_InsSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[trHRDC005_ApplicantOtherID_Licenses_InsSel]
AS
SELECT WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey AS EmployeeID, AUR.T011_LICENCES.T011F025_LICENCE_NO AS LicenseID, AUR.T011_LICENCES.T011F020_LICENCE_CODE AS LicenseIDTypeName, AUR.T011_LICENCES.T011F030_DATE_ACQUIRED AS LicenseIDIssuedDate, 
             AUR.T011_LICENCES.T011F040_DATE_EXPIRY AS LicenseIDExpirationDate, AUR.T011_LICENCES.T011F045_ISSUING_AUTHORITY AS LicenseIDAuthorityName, WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey AS zWAMIKey, WD.svEmpScope_UniqueWAMIKey_Sel.zSource, 
             GETDATE() AS zLoadDate
FROM   WD.svEmpScope_UniqueWAMIKey_Sel INNER JOIN
             AUR.T011_LICENCES ON WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey = AUR.T011_LICENCES.T011F005_WAMI_KEY INNER JOIN
             WD.Param ON AUR.T011_LICENCES.T011F040_DATE_EXPIRY >= WD.Param.GoLiveDate
WHERE (AUR.T011_LICENCES.T011F025_LICENCE_NO IS NOT NULL) AND (NOT (AUR.T011_LICENCES.T011F020_LICENCE_CODE IN ('AHPRA', 'FAACPR', 'FAAFAC', 'FACPRC', 'FAOFAC', 'FASFAC')))
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
         Begin Table = "svEmpScope_UniqueWAMIKey_Sel (WD)"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 152
               Right = 279
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T011_LICENCES (AUR)"
            Begin Extent = 
               Top = 153
               Left = 57
               Bottom = 350
               Right = 445
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Param (WD)"
            Begin Extent = 
               Top = 351
               Left = 57
               Bottom = 548
               Right = 333
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
         Column = 3790
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
' , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trHRDC005_ApplicantOtherID_Licenses_InsSel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'trHRDC005_ApplicantOtherID_Licenses_InsSel'
GO
