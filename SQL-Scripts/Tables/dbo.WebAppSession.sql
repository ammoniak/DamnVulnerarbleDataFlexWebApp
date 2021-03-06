/*
Run this script on SQL Server 2008 or later. There may be flaws if running on earlier versions of SQL Server.
*/
CREATE TABLE [dbo].[WebAppSession] (
	[SessionKey]		[nvarchar](36)	 COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__WebAppSes__Sessi__36B12243] DEFAULT (''),
	[CreateDate]		[date]			 NOT NULL CONSTRAINT [DF__WebAppSes__Creat__37A5467C] DEFAULT ('0001-01-01'),
	[CreateTime]		[nvarchar](8)	 COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__WebAppSes__Creat__38996AB5] DEFAULT (''),
	[LastAccessDate]	[date]			 NOT NULL CONSTRAINT [DF__WebAppSes__LastA__398D8EEE] DEFAULT ('0001-01-01'),
	[LastAccessTime]	[nvarchar](8)	 COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__WebAppSes__LastA__3A81B327] DEFAULT (''),
	[UseCount]			[int]			 NOT NULL CONSTRAINT [DF__WebAppSes__UseCo__3B75D760] DEFAULT ((0)),
	[RemoteAddress]		[nvarchar](57)	 COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__WebAppSes__Remot__3C69FB99] DEFAULT (''),
	[LoginName]			[nvarchar](20)	 COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__WebAppSes__Login__3D5E1FD2] DEFAULT (''),
	[Active]			[nvarchar](1)	 COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__WebAppSes__Activ__3E52440B] DEFAULT (''),
	CONSTRAINT [WebAppSession001_PK] PRIMARY KEY CLUSTERED ([SessionKey])
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [WebAppSession002] ON [dbo].[WebAppSession]([CreateDate], [CreateTime], [SessionKey]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [WebAppSession003] ON [dbo].[WebAppSession]([LastAccessDate], [LastAccessTime], [SessionKey]) ON [PRIMARY]
GO
