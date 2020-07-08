SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ADDR].[ADDRESS_ALIAS](
	[address_alias_pid] [varchar](15) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_retired] [datetime] NULL,
	[principal_pid] [varchar](15) NOT NULL,
	[alias_pid] [varchar](15) NOT NULL,
	[alias_type_code] [varchar](10) NOT NULL,
	[alias_comment] [varchar](200) NULL
) ON [PRIMARY]
GO
