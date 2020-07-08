SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [AUR].[svEMployeeToPositions] as 

-- created for Frances Brock

select distinct a.T101F005_POSITION_NO as PositionID, a.T101F045_POSITION_TITLE as PositionsTitle,
DateCommenced as startDate, a.T101F035_LOCATION_CODE as PositionLocation,
c.T000F020_GIVEN_NAMES + ' ' + c.T000F015_SURNAME as Name,
zCohortType as WorkerStatus,
AttendanceType as WorkStatus
--,b.*


from AUR.t101_position a
inner join wd.EmpScope b on a.T101F005_POSITION_NO = b.PositionID
inner join aur.T000_WAMI c on c.T000F005_WAMI_KEY = b.WAMIKey
inner join aur.t001_basic_Details d on d.T001F010_WAMI_KEY = b.WAMIKey
where d.T001F015_EMPLOYEE_STATUS = 'active'
and a.T101F010_POSITION_STATUS = 'active'
GO
