USE [DQS_STAGING_DATA]
GO
/****** Object:  UserDefinedFunction [dbo].[PadNum]    Script Date: 9/07/2020 2:33:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[PadNum] (@inputstring VARCHAR(250), @inputpad varchar(10))
RETURNS VARCHAR(250)
AS BEGIN
    DECLARE @Work VARCHAR(250)
    DECLARE @Padamount VARCHAR(10)

    SET @Work = @inputstring
    SET @Padamount = @inputpad

    SET @Work = RIGHT (replicate('0', @padamount) +@Work, @padamount) 
    RETURN @work
END
GO
