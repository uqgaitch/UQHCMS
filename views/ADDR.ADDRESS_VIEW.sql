SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER  VIEW [ADDR].[ADDRESS_VIEW] AS
-- Address view
SELECT
AD.BUILDING_NAME as BUILDING_NAME,

AD.LOT_NUMBER_PREFIX as LOT_NUMBER_PREFIX,
AD.LOT_NUMBER as LOT_NUMBER,
AD.LOT_NUMBER_SUFFIX as LOT_NUMBER_SUFFIX,

FTA.NAME as FLAT_TYPE,
AD.FLAT_NUMBER_PREFIX as FLAT_NUMBER_PREFIX,
AD.FLAT_NUMBER as FLAT_NUMBER,
AD.FLAT_NUMBER_SUFFIX as FLAT_NUMBER_SUFFIX,

LTA.NAME as LEVEL_TYPE,
AD.LEVEL_NUMBER_PREFIX as LEVEL_NUMBER_PREFIX,
AD.LEVEL_NUMBER as LEVEL_NUMBER,
AD.LEVEL_NUMBER_SUFFIX as LEVEL_NUMBER_SUFFIX,

AD.NUMBER_FIRST_PREFIX as NUMBER_FIRST_PREFIX,
AD.NUMBER_FIRST as NUMBER_FIRST,
AD.NUMBER_FIRST_SUFFIX as NUMBER_FIRST_SUFFIX,
AD.NUMBER_LAST_PREFIX as NUMBER_LAST_PREFIX,
AD.NUMBER_LAST as NUMBER_LAST,
AD.NUMBER_LAST_SUFFIX as NUMBER_LAST_SUFFIX,

SL.STREET_NAME as STREET_NAME,
SL.STREET_CLASS_CODE as STREET_CLASS_CODE,
SCA.NAME as STREET_CLASS_TYPE,
SL.STREET_TYPE_CODE as STREET_TYPE_CODE,
SL.STREET_SUFFIX_CODE as STREET_SUFFIX_CODE,
SSA.NAME as STREET_SUFFIX_TYPE,

L.LOCALITY_NAME as LOCALITY_NAME,

ST.STATE_ABBREVIATION as STATE_ABBREVIATION,

AD.POSTCODE as POSTCODE,

ADG.LATITUDE as LATITUDE,
ADG.LONGITUDE as LONGITUDE,
AD.PRIMARY_SECONDARY as PRIMARY_SECONDARY,

AD.LEGAL_PARCEL_ID as LEGAL_PARCEL_ID,

AD.DATE_CREATED as DATE_CREATED

FROM

ADDR.ADDRESS_DETAIL AD 
LEFT JOIN ADDR.FLAT_TYPE_AUT FTA ON CAST(AD.FLAT_TYPE_CODE as NVARCHAR(50))=CAST(FTA.CODE as NVARCHAR(50))
LEFT JOIN LEVEL_TYPE_AUT LTA ON CAST(AD.LEVEL_TYPE_CODE as NVARCHAR(50))=CAST(LTA.CODE as NVARCHAR(50))
JOIN ADDR.STREET_LOCALITY SL ON CAST(AD.STREET_LOCALITY_PID  as NVARCHAR(50))=CAST(SL.STREET_LOCALITY_PID as NVARCHAR(50))
LEFT JOIN ADDR.STREET_SUFFIX_AUT SSA ON CAST(SL.STREET_SUFFIX_CODE as NVARCHAR(50))=CAST(SSA.CODE as NVARCHAR(50))
LEFT JOIN ADDR.STREET_CLASS_AUT SCA ON CAST(SL.STREET_CLASS_CODE as NVARCHAR(50))=CAST(SCA.CODE as NVARCHAR(50))
LEFT JOIN ADDR.STREET_TYPE_AUT STA ON CAST(SL.STREET_TYPE_CODE as NVARCHAR(50))=CAST(STA.CODE as NVARCHAR(50))
JOIN ADDR.LOCALITY L ON CAST(AD.LOCALITY_PID as NVARCHAR(50)) = CAST(L.LOCALITY_PID as NVARCHAR(50))
JOIN ADDR.ADDRESS_DEFAULT_GEOCODE ADG ON CAST(AD.ADDRESS_DETAIL_PID as NVARCHAR(50))=CAST(ADG.ADDRESS_DETAIL_PID as NVARCHAR(50))
LEFT JOIN ADDR.GEOCODE_TYPE_AUT GTA ON CAST(ADG.GEOCODE_TYPE_CODE as NVARCHAR(50))=CAST(GTA.CODE as NVARCHAR(50))
LEFT JOIN ADDR.GEOCODED_LEVEL_TYPE_AUT GLTA ON CAST(AD.LEVEL_GEOCODED_CODE as NVARCHAR(50))=CAST(GLTA.CODE as NVARCHAR(50))
JOIN ADDR.STATE ST ON L.STATE_PID=ST.STATE_PID

--WHERE 
--AD.CONFIDENCE > -1
GO
