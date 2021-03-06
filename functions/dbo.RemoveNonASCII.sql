USE [DQS_STAGING_DATA]
GO
/****** Object:  UserDefinedFunction [dbo].[RemoveNonASCII]    Script Date: 9/07/2020 2:33:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[RemoveNonASCII]
(
    @nstring varchar(255)
)
RETURNS varchar(255)
AS
BEGIN

    DECLARE @Result varchar(255)
    SET @Result = ''

    DECLARE @char varchar(1)
    DECLARE @position int

    SET @position = 1
    WHILE @position <= LEN(@nstring)
    BEGIN
        SET @char = SUBSTRING(@nstring, @position, 1)
        IF UNICODE(@char) between 32 and 255
            SET @Result = @Result + @char
        SET @position = @position + 1
    END

	SET @Result = replace(@nstring,char(10),'')

    RETURN @Result

END
GO
