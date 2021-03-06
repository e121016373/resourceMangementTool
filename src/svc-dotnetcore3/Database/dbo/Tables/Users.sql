﻿CREATE TABLE [dbo].[Users](
	[Id] [int] NOT NULL IDENTITY(1,1),
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[LocationId] [int] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[OrganizationId] int NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Notes] [nvarchar](500),
	[ReportToManagerId] [int]
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id]),
 CONSTRAINT [UK_Users_Username] UNIQUE ([Username]),
 CONSTRAINT [FK_Users_Locations] FOREIGN KEY ([LocationId]) REFERENCES [Locations]([Id]),
 CONSTRAINT [FK_Users_OrganizationId] FOREIGN KEY ([OrganizationId]) REFERENCES [Organizations]([Id])
 CONSTRAINT [FK_Users_ReportToManagerId] FOREIGN KEY ([ReportToManagerId]) REFERENCES [Users]([Id]) 
)