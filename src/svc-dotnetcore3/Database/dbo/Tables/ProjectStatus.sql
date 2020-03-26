CREATE TABLE [dbo].[ProjectStatus](
	[Id] INT NOT NULL,
  [FromDate] DATE NOT NULL DEFAULT CONVERT(date, SYSUTCDATETIME()), 
  [ToDate] DATE NOT NULL DEFAULT CONVERT(date, SYSUTCDATETIME()),
  [Status] NVARCHAR(10) CHECK ([Status] IN ('Active', 'Inactive', 'Forecast')),
  [Year] [int] NOT NULL,
	[Jan] [int] NOT NULL,
	[Feb] [int] NOT NULL,
	[Mar] [int] NOT NULL,
	[Apr] [int] NOT NULL,
	[May] [int] NOT NULL,
	[Jun] [int] NOT NULL,
	[Jul] [int] NOT NULL,
	[Aug] [int] NOT NULL,
	[Sep] [int] NOT NULL,
	[Oct] [int] NOT NULL,
	[Nov] [int] NOT NULL,
	[Dec] [int] NOT NULL
CONSTRAINT [PK_ProjectsStatus] PRIMARY KEY ([Id], [Year]),
CONSTRAINT [FK_ProjectsStatus_Projects] FOREIGN KEY ([Id]) REFERENCES [Projects]([Id]) ON DELETE CASCADE
)