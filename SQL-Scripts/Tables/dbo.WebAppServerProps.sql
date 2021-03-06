/*
Run this script on SQL Server 2008 or later. There may be flaws if running on earlier versions of SQL Server.
*/
CREATE TABLE [dbo].[WebAppServerProps] (
	[Key]				[nvarchar](64)	 COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__WebAppServe__Key__49C3F6B7] DEFAULT (''),
	[CreateDate]		[date]			 NOT NULL CONSTRAINT [DF__WebAppSer__Creat__4AB81AF0] DEFAULT ('0001-01-01'),
	[CreateTime]		[nvarchar](12)	 COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__WebAppSer__Creat__4BAC3F29] DEFAULT (''),
	[ExpiresDate]		[date]			 NOT NULL CONSTRAINT [DF__WebAppSer__Expir__4CA06362] DEFAULT ('0001-01-01'),
	[ExpiresTime]		[nvarchar](12)	 COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__WebAppSer__Expir__4D94879B] DEFAULT (''),
	[Locked]			[smallint]		 NOT NULL CONSTRAINT [DF__WebAppSer__Locke__4E88ABD4] DEFAULT ((0)),
	[LockedDate]		[date]			 NOT NULL CONSTRAINT [DF__WebAppSer__Locke__4F7CD00D] DEFAULT ('0001-01-01'),
	[LockedTime]		[nvarchar](12)	 COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__WebAppSer__Locke__5070F446] DEFAULT (''),
	[Page]				[smallint]		 NOT NULL CONSTRAINT [DF__WebAppServ__Page__5165187F] DEFAULT ((0)),
	[Pages]				[smallint]		 NOT NULL CONSTRAINT [DF__WebAppSer__Pages__52593CB8] DEFAULT ((0)),
	[Data]				[nvarchar](max)	 COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__WebAppServ__Data__534D60F1] DEFAULT (''),
	CONSTRAINT [WebAppServerProps001_PK] PRIMARY KEY CLUSTERED ([Key], [Page])
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [WebAppServerProps002] ON [dbo].[WebAppServerProps]([ExpiresDate] DESC, [ExpiresTime] DESC, [Key], [Page]) ON [PRIMARY]
GO
