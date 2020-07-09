USE [DQS_STAGING_DATA]
GO
/****** Object:  UserDefinedFunction [dbo].[GetNextPositionID]    Script Date: 9/07/2020 2:33:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[GetNextPositionID] ()
RETURNS VARCHAR(8)
AS BEGIN
    DECLARE @ReturnValue as VARCHAR(250)
  
    SET @ReturnValue = (Select NextPositionID + 1 from WD.PARAM) 
	--UPDATE WD.PARAM SET NextPositionID = NextPositionID + 1
    RETURN @ReturnValue
END
GO
