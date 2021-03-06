/*
Run this script on SQL Server 2008 or later. There may be flaws if running on earlier versions of SQL Server.
*/
CREATE TABLE [dbo].[WebAppUser] (
	[LoginName]		[nvarchar](20)	 COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__WebAppUse__Login__4222D4EF] DEFAULT (''),
	[Password]		[nvarchar](20)	 COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__WebAppUse__Passw__4316F928] DEFAULT (''),
	[Rights]		[smallint]		 NOT NULL CONSTRAINT [DF__WebAppUse__Right__440B1D61] DEFAULT ((0)),
	[FullName]		[nvarchar](30)	 COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__WebAppUse__FullN__44FF419A] DEFAULT (''),
	[LastLogin]		[date]			 NOT NULL CONSTRAINT [DF__WebAppUse__LastL__45F365D3] DEFAULT ('0001-01-01'),
	CONSTRAINT [WebAppUser001_PK] PRIMARY KEY CLUSTERED ([LoginName])
) ON [PRIMARY]
GO
