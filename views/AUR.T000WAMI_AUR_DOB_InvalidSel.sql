SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [AUR].[T000WAMI_AUR_DOB_InvalidSel] as 

SELECT [T000F110_DATE_OF_BIRTH], count(*) as num FROM [AUR].[T000_WAMI]

group by [T000F110_DATE_OF_BIRTH]
having count(*) > 10
--order by count(*) desc
GO
