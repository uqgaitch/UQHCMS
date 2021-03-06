USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC005_ApplicantOtherID_VISA_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*SELECT        WD.EmpScope.EmployeeID, AUR.T020_PASSPORT_VISAS.T020F055_VISA_IDENTIFIER AS VisaID, AUR.T020_PASSPORT_VISAS.T020F050_VISA_TYPE AS VisaTypeName, 
                         AUR.T020_PASSPORT_VISAS.T020F035_COUNTRY_CODE AS CountryISOCode, CONVERT(nvarchar, AUR.T020_PASSPORT_VISAS.T020F040_DATE_GRANTED, 23) AS IssuedDate, 
						 CONVERT(nvarchar, AUR.T020_PASSPORT_VISAS.T020F045_DATE_OF_EXPIRY, 23) AS ExpirationDate, 
						 WAMIKey as zWAMIKey,
						 'AURION' AS zSource, GETDATE() AS zLoadDate
FROM            AUR.T020_PASSPORT_VISAS INNER JOIN
                         WD.Param ON AUR.T020_PASSPORT_VISAS.T020F045_DATE_OF_EXPIRY >= WD.Param.GoLiveDate INNER JOIN
                         WD.EmpScope ON AUR.T020_PASSPORT_VISAS.T020F005_WAMI_KEY = WD.EmpScope.WAMIKey
WHERE        (AUR.T020_PASSPORT_VISAS.T020F055_VISA_IDENTIFIER IS NOT NULL) and zexclude is null*/
ALTER view [WD].[tvHRDC005_ApplicantOtherID_VISA_Sel]
AS
SELECT WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey AS EmployeeID, AUR.T020_PASSPORT_VISAS.T020F055_VISA_IDENTIFIER AS VisaID, AUR.T020_PASSPORT_VISAS.T020F050_VISA_TYPE AS VisaTypeName, 'AUS' AS CountryISOCode, CONVERT(nvarchar, 
             AUR.T020_PASSPORT_VISAS.T020F040_DATE_GRANTED, 23) AS IssuedDate, CONVERT(nvarchar, AUR.T020_PASSPORT_VISAS.T020F045_DATE_OF_EXPIRY, 23) AS ExpirationDate, WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey AS zWAMIKey, 'AURION' AS zSource, GETDATE() 
             AS zLoadDate
FROM   AUR.T020_PASSPORT_VISAS INNER JOIN
             WD.Param ON AUR.T020_PASSPORT_VISAS.T020F045_DATE_OF_EXPIRY >= WD.Param.GoLiveDate INNER JOIN
             WD.svEmpScope_UniqueWAMIKey_Sel ON AUR.T020_PASSPORT_VISAS.T020F005_WAMI_KEY = WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey INNER JOIN
             WD.tvHRDC005_ApplicantOtherID_VISAMap_Sel ON AUR.T020_PASSPORT_VISAS.T020F050_VISA_TYPE = WD.tvHRDC005_ApplicantOtherID_VISAMap_Sel.Aurion
WHERE (AUR.T020_PASSPORT_VISAS.T020F055_VISA_IDENTIFIER IS NOT NULL)
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
         Begin Table = "T020_PASSPORT_VISAS (AUR)"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 461
               Right = 382
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Param (WD)"
            Begin Extent = 
               Top = 118
               Left = 562
               Bottom = 315
               Right = 838
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "svEmpScope_UniqueWAMIKey_Sel (WD)"
            Begin Extent = 
               Top = 28
               Left = 1292
               Bottom = 171
               Right = 1514
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tvHRDC005_ApplicantOtherID_VISAMap_Sel (WD)"
            Begin Extent = 
               Top = 322
               Left = 890
               Bottom = 438
               Right = 1112
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
         Width = 2040
         Width = 3140
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
         Column = 3560
         Alias = 2630
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         ' , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'tvHRDC005_ApplicantOtherID_VISA_Sel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'tvHRDC005_ApplicantOtherID_VISA_Sel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'WD', @level1type=N'VIEW',@level1name=N'tvHRDC005_ApplicantOtherID_VISA_Sel'
GO
