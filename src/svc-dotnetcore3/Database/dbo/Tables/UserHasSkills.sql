CREATE TABLE [dbo].[UserHasSkills](
	[UserId] INT NOT NULL,
	[SkillId] INT NOT NULL
CONSTRAINT [PK_UserHasSkills] PRIMARY KEY ([UserId], [SkillId]),
CONSTRAINT [FK_UserHasSkills_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id]) ON DELETE CASCADE, 
CONSTRAINT [FK_UserHasSkills_Skills] FOREIGN KEY ([SkillId]) REFERENCES [Skills]([Id]) ON DELETE CASCADE
)
​