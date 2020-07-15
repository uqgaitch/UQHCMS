USE [DQS_STAGING_DATA]
GO
/****** Object:  UserDefinedFunction [dbo].[ReformatPhone]    Script Date: 9/07/2020 2:33:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER FUNCTION [dbo].[ReformatPhone] (@inputstring VARCHAR(250))
RETURNS VARCHAR(250)
AS BEGIN
    DECLARE @Work VARCHAR(250)

    SET @Work = @inputstring

    SET @Work = LTRIM(RTRIM(replace(REPLACE(REPLACE(REPLACE(@Work,' ','') , '(',''), ')',''),'-','')))
    RETURN @work
END
GO
