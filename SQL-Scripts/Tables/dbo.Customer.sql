/*
Run this script on SQL Server 2008 or later. There may be flaws if running on earlier versions of SQL Server.
*/
CREATE TABLE [dbo].[Customer] (
	[CustomerID]		[int]			 IDENTITY(1, 1) NOT NULL,
	[Name]				[nvarchar](20)	 COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__Name__70DDC3D8] DEFAULT (''),
	[Email]				[nvarchar](20)	 COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__Email__71D1E811] DEFAULT (''),
	[LastUpdate]		[datetime]		 NOT NULL CONSTRAINT [DF__Customer__LastUp__72C60C4A] DEFAULT ('1753-01-01'),
	[Note]				[nvarchar](200)	 COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__Note__73BA3083] DEFAULT (''),
	[LastMailSent]		[datetime]		 NOT NULL CONSTRAINT [DF__Customer__LastMa__74AE54BC] DEFAULT ('1753-01-01'),
	CONSTRAINT [Customer001] PRIMARY KEY CLUSTERED ([CustomerID])
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Customer002] ON [dbo].[Customer]([Name], [CustomerID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Customer003] ON [dbo].[Customer]([Email], [CustomerID]) ON [PRIMARY]
GO
