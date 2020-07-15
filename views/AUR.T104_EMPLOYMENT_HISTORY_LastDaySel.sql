SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [AUR].[T104_EMPLOYMENT_HISTORY_LastDaySel] as 
SELECT T104F005_EMPLOYEE_NO, T104F040_POSITION_NO, MAX(T104F030_DATE_TO)  AS T104F030_DATE_TO_MAX FROM AUR.T104_EMPLOYMENT_HISTORY GROUP BY T104F005_EMPLOYEE_NO, T104F040_POSITION_NO
GO
