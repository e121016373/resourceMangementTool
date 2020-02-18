CREATE TABLE [dbo].[UserInProjects](
	[UserId] INT NOT NULL,
	[ProjectId] INT NOT NULL,
	[FromDate] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[ToDate] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[Hours] INT NOT NULL
CONSTRAINT [PK_UserInProjects] PRIMARY KEY ([UserId], [ProjectId]),
CONSTRAINT [FK_UserInProjects_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id]),
CONSTRAINT [FK_UserInProjects_Projects] FOREIGN KEY ([ProjectId]) REFERENCES [Projects]([Id]) 
)
