SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [AUR].[T000WAMI_AUR_DOB_OlderThan90YearsSel] as 

SELECT T000F110_DATE_OF_BIRTH, T000F005_WAMI_KEY
FROM [AUR].[T000_WAMI]
where T000F110_DATE_OF_BIRTH < DATEADD(year, -90, getdate()) 
--order by count(*) desc
GO
