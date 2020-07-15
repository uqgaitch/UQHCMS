SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [AUR].[HRDC020_TerminatedEmployess_InsSel]
as
SELECT distinct T038.T038F005_EMPLOYEE_NO as EmployeeID
  , T038.T038F010_DATE_TERMINATED as TerminationDate
  , '' as LastDayOfWork
  , T038.T038F020_TERMINATION_REASON as PrimaryReason
  , '' as SecondaryReason
  , '' as LocalTerminationReason
  , T104F030_DATE_TO_MAX as PayThroughDate
  , '' as ResignationDate
  , '' as NotifyEmployeeByDate
  , 'N' as Regrettable
  , CASE WHEN T101.T101F110_STAFFING_RESTRICTION = 'ABOL' THEN 'Y' ELSE 'N' END AS ClosePosition
  , '' as LastDateForWhichPaid
  , '' as ExpectedDateOfReturn
  , '' as NotReturning
  , '' as ReturnUnknown

FROM AUR.T038_TERMINATION_DETAILS T038
INNER JOIN AUR.T104_EMPLOYMENT_HISTORY_LastDaySel T104 ON
T104.T104F005_EMPLOYEE_NO = T038.T038F005_EMPLOYEE_NO
INNER JOIN AUR.T101_POSITION T101 ON 
T101.T101F005_POSITION_NO = [T104F040_POSITION_NO]
GO
