USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvPositionsDeltaDD_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[tvPositionsDeltaDD_Sel]  AS
SELECT TOP (100) PERCENT WD.EmpScope.zAurionPositionID AS OrigPositionID, WD.EmpScope.PositionID AS [Back to ToC], DD.ddPositionsPES.Group2, DD.ddPositionsPES.Group3, DD.ddPositionsPES.Group4, DD.ddPositionsPES.Group5, DD.ddPositionsPES.Group6, 
             DD.ddPositionsPES.Group7, DD.ddPositionsPES.Group8, DD.ddPositionsPES.Group9, DD.ddPositionsPES.Group10, WD.EmpScope.PositionID AS [Reference ID], DD.ddPositionsPES.[Supervisory Org ID], WD.EmpScope.PositionID AS [Position ID], DD.ddPositionsPES.[Job Posting Title], 
             DD.ddPositionsPES.[Job Title], DD.ddPositionsPES.[ADDITIONAL JOB], DD.ddPositionsPES.[Position Business Title], DD.ddPositionsPES.[Job Description Summary], DD.ddPositionsPES.[Job Description], DD.ddPositionsPES.[Critical Job Y/N], DD.ddPositionsPES.[Availability Date], 
             DD.ddPositionsPES.[Earliest Hire Date], DD.ddPositionsPES.[Job Family ID], DD.ddPositionsPES.[Job Profile ID], DD.ddPositionsPES.[Location ID], DD.ddPositionsPES.[Worker Type ID], DD.ddPositionsPES.[Position Time Type ID], DD.ddPositionsPES.[Key Risk Role], 
             DD.ddPositionsPES.[Regulated Role], DD.ddPositionsPES.[Type Of Regulated Role 1], DD.ddPositionsPES.[Type Of Regulated Role 2], DD.ddPositionsPES.[Type Of Regulated Role 3], DD.ddPositionsPES.[Type Of Regulated Role 4], DD.ddPositionsPES.[Type Of Regulated Role 5], 
             DD.ddPositionsPES.[Type Of Regulated Role 6], DD.ddPositionsPES.[Code Staff / Material Risk Taker], DD.ddPositionsPES.Malus, DD.ddPositionsPES.Comments, DD.ddPositionsPES.[MATRIX ORG ID], DD.ddPositionsPES.[Reference ID1], DD.ddPositionsPES.[Key Risk Role 2], 
             DD.ddPositionsPES.[JOB CLASSIFICATION - SUPERVISORY CATEGORY_1], DD.ddPositionsPES.[JOB CLASSIFICATION - SUPERVISORY CATEGORY_2], DD.ddPositionsPES.[JOB CLASSIFICATION - SUPERVISORY CATEGORY_3], 
             DD.ddPositionsPES.[JOB CLASSIFICATION - EXTENDED SUPERVISORY CATEGORY]
FROM   DD.ddPositionsPES INNER JOIN
             WD.EmpScope ON DD.ddPositionsPES.[Back to ToC] = WD.EmpScope.zAurionPositionID
WHERE (WD.EmpScope.zPositionToBeCreated = N'X')


GO
