USE [DQS_STAGING_DATA]
GO
/****** Object:  UserDefinedFunction [dbo].[StripNonASCII]    Script Date: 9/07/2020 2:33:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[StripNonASCII](@S varchar(max))
Returns varchar(max)
Begin
    ;with  cte1(N) As (Select 1 From (Values(1),(1),(1),(1),(1),(1),(1),(1),(1),(1)) N(N)),
           cte2(C) As (Select Top (32) Char(Row_Number() over (Order By (Select NULL))-1) From cte1 a,cte1 b)
    Select @S = Replace(@S,C,' ')
     From  cte2

    Return ltrim(rtrim(replace(replace(replace(@S,' ','†‡'),'‡†',''),'†‡',' ')))
End
GO
