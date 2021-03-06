USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC027_AcademicAppointment_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[txHRDC027_AcademicAppointment_Sel]
as
SELECT 
 isnull([AppointmentType],'') as [AppointmentType]
,isnull([EmployeeID_ContingentWorker_ID_StudentID_AffiliateID],'') as [EmployeeID_ContingentWorker_ID_StudentID_AffiliateID]
,isnull([AcademicAppointmentReason],'') as [AcademicAppointmentReason]
,isnull([AppointmentTrackID],'') as [AppointmentTrackID]
,isnull([AcademicTrackType],'') as [AcademicTrackType]
,isnull([AppointmentIdentifier],'') as [AppointmentIdentifier]
,isnull([PositionID],'') as [PositionID]
,isnull([AcademicUnit],'') as [AcademicUnit]
,isnull([AppointmentStartDate],'') as [AppointmentStartDate]
,isnull([AppointmentEndDate],'') as [AppointmentEndDate]
,isnull([TrackStartDateOverride],'') as [TrackStartDateOverride]
,isnull([Rank],'') as [Rank]
,isnull([NamedProfessorship],'') as [NamedProfessorship]
,isnull([AppointmentSpecialty],'') as [AppointmentSpecialty]
,isnull([AppointmentTitle],'') as [AppointmentTitle]
,isnull([TenureHome],'') as [TenureHome]
,isnull([TenureStatus],'') as [TenureStatus]
,isnull([ProbationEndDate],'') as [ProbationEndDate]
,isnull([TenureAwardDate],'') as [TenureAwardDate]
FROM [DQS_STAGING_DATA].[WD].[HRDC027_AcademicAppointment]
where zExclude is null
GO
