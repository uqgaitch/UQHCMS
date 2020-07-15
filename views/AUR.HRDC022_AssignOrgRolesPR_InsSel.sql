SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/*
	Note this is a temporary view to create data for the Foundation build - as we do not have requirements yet the Manager position has been retrieved by using
	a combination of keywords to try and identify 'Manager' type positions to link back to the Org Units.
*/
ALTER view [AUR].[HRDC022_AssignOrgRolesPR_InsSel] as 
select OrganisationType, Organisation, EffectiveDate, OrganisationRoleName, Max(EmployeeID) as EmployeeID
from (
SELECT        'SUPERVISORY' AS OrganisationType
			, AUR.T101_POSITION.T101F015_ORGANISATION_UNIT_NO AS Organisation
			, convert(varchar,GETDATE() ,103) AS EffectiveDate
			, 'Manager' AS OrganisationRoleName
			, AUR.T001BASIC_MaxActiveEmployeeNo_Sel.EmployeeID
FROM            AUR.T001_BASIC_DETAILS INNER JOIN
                         AUR.T001BASIC_MaxActiveEmployeeNo_Sel ON AUR.T001_BASIC_DETAILS.T001F005_EMPLOYEE_NO = AUR.T001BASIC_MaxActiveEmployeeNo_Sel.EmployeeID INNER JOIN
                         AUR.T101_POSITION ON AUR.T001_BASIC_DETAILS.T001F065_ACTUAL_POSITION_NO = AUR.T101_POSITION.T101F005_POSITION_NO
						 inner join AUR.HRDC006_EmployeePositionManagementMGFoundation_InsSel HRDC006
on HRDC006.employeeID = AUR.T001BASIC_MaxActiveEmployeeNo_Sel.EmployeeID
WHERE        (AUR.T101_POSITION.T101F010_POSITION_STATUS = 'ACTIVE') 
AND (AUR.T101_POSITION.T101F045_POSITION_TITLE LIKE '%Manager%' OR
                         AUR.T101_POSITION.T101F045_POSITION_TITLE LIKE '%Vice%') OR
                         (AUR.T101_POSITION.T101F010_POSITION_STATUS = 'ACTIVE') 
						 AND (AUR.T101_POSITION.T101F040_MANAGER_FLAG = 'T')


--select * from AUR.T001_BASIC_DETAILS where T001F005_EMPLOYEE_NO = 2018187

--select * from AUR.T101_POSITION where T101F005_POSITION_NO = 3040739

				) A
				group by OrganisationType, Organisation, EffectiveDate, OrganisationRoleName
						
GO
