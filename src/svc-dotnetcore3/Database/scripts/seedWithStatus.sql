SET IDENTITY_INSERT [dbo].[ProjectStatus] ON 
-- CREATE TABLE [dbo].[ProjectStatus](
-- 	[Id] INT NOT NULL,
--    [FromDate] DATETIME2 NOT NULL DEFAULT CONVERT(date, SYSUTCDATETIME()), 
--    [ToDate] DATETIME2 NOT NULL DEFAULT CONVERT(date, SYSUTCDATETIME()),
--    [status] VARCHAR(10) CHECK (status IN ('Active', 'Inactive', 'Forecast'))
--  --  [Status] ENUM('Active', 'Inactive', 'Forecast')
--  CONSTRAINT [PK_Projects] PRIMARY KEY ([Id])
-- )

SET IDENTITY_INSERT [dbo].[ProjectStatus] OFF