CREATE TABLE [dbo].[ProjectStatus](
	[Id] INT NOT NULL UNIQUE,
  [FromDate] DATE NOT NULL DEFAULT CONVERT(date, SYSUTCDATETIME()), 
  [ToDate] DATE NOT NULL DEFAULT CONVERT(date, SYSUTCDATETIME()),
  [Status] VARCHAR(10) CHECK ([Status] IN ('Active', 'Inactive', 'Forecast')),
	[Hours] nvarchar(4000) NOT NULL
CONSTRAINT [PK_ProjectsStatus] PRIMARY KEY ([Id]),
CONSTRAINT [FK_ProjectsStatus_Projects] FOREIGN KEY ([Id]) REFERENCES [Projects]([Id]) ON DELETE CASCADE
)