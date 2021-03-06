﻿CREATE TABLE [dbo].[Projects](
	[Id] [int] NOT NULL IDENTITY(1,1),
	[Number] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[LocationId] [int] NOT NULL,
    [CreatedAt] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(), 
    [UpdatedAt] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    -- [StartDate] DATE NOT NULL DEFAULT CONVERT(date, SYSUTCDATETIME()),
    -- [EndDate] DATE NOT NULL DEFAULT CONVERT(date, SYSUTCDATETIME()),
	-- [Hours] nvarchar(4000) NOT NULL
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED ([Id]),
 CONSTRAINT [FK_Projects_Locations] FOREIGN KEY ([LocationId]) REFERENCES [Locations]([Id]),
 CONSTRAINT [UK_Projects_Number] UNIQUE ([Number]),
 CONSTRAINT [UK_Projects_Title] UNIQUE ([Title])
)
