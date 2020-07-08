SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [AUR].[svddPositionsSel] as 

-- Positions view for the Data Dictiobary
select distinct a.T101F005_POSITION_NO as [Back to Toc]
, '' as Group2
, '' as Group3
, '' as Group4
, '' as Group5
, '' as Group6
, '' as Group7
, '' as Group8
, '' as Group9
, '' as Group10
, CONCAT('POS',a.T101F005_POSITION_NO) as [Reference ID]
, case when  T101F235_ESS_AUTHORITY_LEVEL > 1 THEN Superior_Organization_ID else Reference_ID END as [Supervisory Org ID]
, CONCAT('POS',a.T101F005_POSITION_NO) as [Position ID]
, a.T101F045_POSITION_TITLE as [Job Posting Title]
, b.T110F010_JOB_TITLE as [Job Title]
, '' as [Additional Job]
, T101F050_FULL_TITLE as [Position Business Title]
, '' as [Job Description Summary]
, '' as [Job Description]	
, '' as [Critical Job Y/N]
, T101F060_DATE_APPROVED as [Availability Date]
, T101F060_DATE_APPROVED as [Earliest Hire Date]
, '' as [Job Family ID]
, '' as [Job Profile ID]
, T101F035_LOCATION_CODE as [Location ID]
, T101F080_POSITION_TYPE as [Worker Type ID]
, T101F090_ATTENDANCE_TYPE as [Position Time Type ID]
, '' as [Key Risk Role]
, '' as [Regulated Role]
, '' as [Type Of Regulated Role 1]
, '' as [Type Of Regulated Role 2]
, '' as [Type Of Regulated Role 3]
, '' as [Type Of Regulated Role 4]
, '' as [Type Of Regulated Role 5]
, '' as [Type Of Regulated Role 6]
, '' as [Code Staff / Material Risk Taker]
, '' as [Malus]
, '' as [Comments]
, '' as [MATRIX ORG ID]
, '' as [Reference ID 2]
, '' as [Key Risk Role 2]
, '' as [JOB CLASSIFICATION - SUPERVISORY CATEGORY_1]
, '' as [JOB CLASSIFICATION - SUPERVISORY CATEGORY_2]
, '' as [JOB CLASSIFICATION - SUPERVISORY CATEGORY_3]
, '' as [JOB CLASSIFICATION - EXTENDED SUPERVISORY CATEGORY]
from AUR.t101_position a
left outer join [AUR].[T110_JOB_CODE] b
on a.T101F135_JOB_CODE = b.T110F005_JOB_CODE
--left outer join dd.SupervisoryOrganisation c on c.[Back to ToC] = CONCAT(a.T101F015_ORGANISATION_UNIT_NO, a.T101F005_POSITION_NO)
left outer join dd.SupervisoryOrganisation c on CASE WHEN LEN([Back to ToC]) <= 3 then '' else  RIGHT([Back to ToC], 7) end = a.T101F130_REPORTS_TO_POSITION

where T101F010_POSITION_STATUS = 'active' 
and case when  T101F235_ESS_AUTHORITY_LEVEL > 1 THEN Superior_Organization_ID else Reference_ID END is not null

union

select distinct a.T101F005_POSITION_NO as [Back to Toc]
, '' as Group2
, '' as Group3
, '' as Group4
, '' as Group5
, '' as Group6
, '' as Group7
, '' as Group8
, '' as Group9
, '' as Group10
, CONCAT('POS',a.T101F005_POSITION_NO) as [Reference ID]
, case when  T101F235_ESS_AUTHORITY_LEVEL > 1 THEN Superior_Organization_ID else Reference_ID END as [Supervisory Org ID]
, CONCAT('POS',a.T101F005_POSITION_NO) as [Position ID]
, a.T101F045_POSITION_TITLE as [Job Posting Title]
, b.T110F010_JOB_TITLE as [Job Title]
, '' as [Additional Job]
, T101F050_FULL_TITLE as [Position Business Title]
, '' as [Job Description Summary]
, '' as [Job Description]	
, '' as [Critical Job Y/N]
, T101F060_DATE_APPROVED as [Availability Date]
, T101F060_DATE_APPROVED as [Earliest Hire Date]
, '' as [Job Family ID]
, '' as [Job Profile ID]
, T101F035_LOCATION_CODE as [Location ID]
, T101F080_POSITION_TYPE as [Worker Type ID]
, T101F090_ATTENDANCE_TYPE as [Position Time Type ID]
, '' as [Key Risk Role]
, '' as [Regulated Role]
, '' as [Type Of Regulated Role 1]
, '' as [Type Of Regulated Role 2]
, '' as [Type Of Regulated Role 3]
, '' as [Type Of Regulated Role 4]
, '' as [Type Of Regulated Role 5]
, '' as [Type Of Regulated Role 6]
, '' as [Code Staff / Material Risk Taker]
, '' as [Malus]
, '' as [Comments]
, '' as [MATRIX ORG ID]
, '' as [Reference ID 2]
, '' as [Key Risk Role 2]
, '' as [JOB CLASSIFICATION - SUPERVISORY CATEGORY_1]
, '' as [JOB CLASSIFICATION - SUPERVISORY CATEGORY_2]
, '' as [JOB CLASSIFICATION - SUPERVISORY CATEGORY_3]
, '' as [JOB CLASSIFICATION - EXTENDED SUPERVISORY CATEGORY]
from AUR.t101_position a
left outer join [AUR].[T110_JOB_CODE] b
on a.T101F135_JOB_CODE = b.T110F005_JOB_CODE
--left outer join dd.SupervisoryOrganisation c on c.[Back to ToC] = CONCAT(a.T101F015_ORGANISATION_UNIT_NO, a.T101F005_POSITION_NO)
inner join dd.SupervisoryOrganisation c on cast(c.[Back to ToC] as numeric) = cast(T101F015_ORGANISATION_UNIT_NO as numeric)
where T101F010_POSITION_STATUS = 'active' --and T101F015_ORGANISATION_UNIT_NO = 1
and a.T101F005_POSITION_NO not in (select a.T101F005_POSITION_NO from AUR.t101_position a
left outer join [AUR].[T110_JOB_CODE] b
on a.T101F135_JOB_CODE = b.T110F005_JOB_CODE
--left outer join dd.SupervisoryOrganisation c on c.[Back to ToC] = CONCAT(a.T101F015_ORGANISATION_UNIT_NO, a.T101F005_POSITION_NO)
left outer join dd.SupervisoryOrganisation c on CASE WHEN LEN([Back to ToC]) <= 3 then '' else  RIGHT([Back to ToC], 7) end = a.T101F130_REPORTS_TO_POSITION

where T101F010_POSITION_STATUS = 'active' 
and case when  T101F235_ESS_AUTHORITY_LEVEL > 1 THEN Superior_Organization_ID else Reference_ID END is not null
)


GO
