CREATE TABLE [dbo].[UserInProjects](
	[UserId] INT NOT NULL,
	[ProjectId] INT NOT NULL,
	[FromDateYear] INT NOT NULL DEFAULT year(GETDATE()),
	[FromDateMonth] INT NOT NULL DEFAULT month(GETDATE()),
	[FromDateDay] INT NOT NULL DEFAULT day(GETDATE()),
	[ToDateYear] INT NOT NULL DEFAULT year(GETDATE()),
	[ToDateMonth] INT NOT NULL DEFAULT month(GETDATE()),
	[ToDateDay] INT NOT NULL DEFAULT day(GETDATE()),
	[Hours] INT NOT NULL
CONSTRAINT [PK_UserInProjects2] PRIMARY KEY ([UserId], [ProjectId]),
CONSTRAINT [FK_UserInProjects_Users2] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id]),
CONSTRAINT [FK_UserInProjects_Projects2] FOREIGN KEY ([ProjectId]) REFERENCES [Projects]([Id]) 
)
