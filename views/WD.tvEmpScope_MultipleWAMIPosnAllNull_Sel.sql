USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvEmpScope_MultipleWAMIPosnAllNull_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[tvEmpScope_MultipleWAMIPosnAllNull_Sel] AS
SELECT        WD.tvEmpScope_WAMICountPosnNull_Sel.WAMIKey
FROM            WD.tvEmpScope_WAMICountPosnNull_Sel INNER JOIN
                         WD.tvEmpScope_WAMICount_Sel ON WD.tvEmpScope_WAMICountPosnNull_Sel.WAMIKey = WD.tvEmpScope_WAMICount_Sel.WamiKey AND 
                         WD.tvEmpScope_WAMICountPosnNull_Sel.Occurrences = WD.tvEmpScope_WAMICount_Sel.Occurrences

GO
