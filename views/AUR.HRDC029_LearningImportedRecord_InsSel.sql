SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [AUR].[HRDC029_LearningImportedRecord_InsSel] as
SELECT distinct [T252F020_COURSE_REFERENCE_CODE] as LearningImportedContentID
    , 'Employee' as LearnerType
	, T001.T001F005_EMPLOYEE_NO as Learner
    , T252.T252F080_DATE_COMMENCED StartDate
	, T252.T252F090_DATE_COMPLETED
	, '' as LearningGrade
	, '' as OverallScore
	, '' as Inactive


FROM [AUR].T252_COURSE_DETAILS T252
inner join [AUR].[T253_ATTENDANCE_DETAILS] T253
on T252.T252F005_COURSE_NO    = T253.T253F010_COURSE_NO
INNER JOIN AUR.T001_BASIC_DETAILS T001
ON T253.T253F020_ATTEND_WAMI_KEY = T001.T001F010_WAMI_KEY
WHERE T001F015_EMPLOYEE_STATUS = 'ACTIVE'
GO