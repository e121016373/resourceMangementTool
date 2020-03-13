CREATE TABLE [dbo].[ProjectStatus](
	[Id] INT NOT NULL,
   [FromDate] DATETIME2 NOT NULL DEFAULT CONVERT(date, SYSUTCDATETIME()), 
   [ToDate] DATETIME2 NOT NULL DEFAULT CONVERT(date, SYSUTCDATETIME()),
   [status] VARCHAR(10) CHECK (status IN ('Active', 'Inactive', 'Forecast')),
 --  [Status] ENUM('Active', 'Inactive', 'Forecast')
 CONSTRAINT [PK_ProjectsId] PRIMARY KEY ([Id]),
  CONSTRAINT [FK_ProjectsId] FOREIGN KEY ([Id]) REFERENCES [Projects]([Id])
)

-- CREATE TABLE [dbo].[UserInProjects](
-- 	[UserId] INT NOT NULL,
-- 	[ProjectId] INT NOT NULL,
-- 	[FromDate] DATETIME2 NOT NULL DEFAULT CONVERT(date, SYSUTCDATETIME()),
-- 	[ToDate] DATETIME2 NOT NULL DEFAULT CONVERT(date, SYSUTCDATETIME()),
-- 	[Hours] INT NOT NULL
-- CONSTRAINT [PK_UserInProjects] PRIMARY KEY ([UserId], [ProjectId]),
-- CONSTRAINT [FK_UserInProjects_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id]),
-- CONSTRAINT [FK_UserInProjects_Projects] FOREIGN KEY ([ProjectId]) REFERENCES [Projects]([Id]) 
-- )
