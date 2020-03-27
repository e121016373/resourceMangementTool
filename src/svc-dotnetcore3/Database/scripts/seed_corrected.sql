SET IDENTITY_INSERT [dbo].[Locations] ON 
INSERT [dbo].[Locations] ([Id], [Code], [Name]) VALUES (5, N'edm', N'Edmonton')
INSERT [dbo].[Locations] ([Id], [Code], [Name]) VALUES (8, N'van', N'Vancouver')
INSERT [dbo].[Locations] ([Id], [Code], [Name]) VALUES (19, N'sas', N'Saskatoon')
INSERT [dbo].[Locations] ([Id], [Code], [Name]) VALUES (20, N'cgy', N'Calgary')
INSERT [dbo].[Locations] ([Id], [Code], [Name]) VALUES (21, N'kel', N'Kelowna')
INSERT [dbo].[Locations] ([Id], [Code], [Name]) VALUES (22, N'let', N'Lethbridge')
INSERT [dbo].[Locations] ([Id], [Code], [Name]) VALUES (23, N'reg', N'Regina')
INSERT [dbo].[Locations] ([Id], [Code], [Name]) VALUES (50, N'nia', N'Niagra')
INSERT [dbo].[Locations] ([Id], [Code], [Name]) VALUES (51, N'tor', N'Toronto')
INSERT [dbo].[Locations] ([Id], [Code], [Name]) VALUES (73, N'rdr', N'Red Deer')
INSERT [dbo].[Locations] ([Id], [Code], [Name]) VALUES (75, N'ver', N'Vernon')
INSERT [dbo].[Locations] ([Id], [Code], [Name]) VALUES (79, N'vic', N'Victoria')
INSERT [dbo].[Locations] ([Id], [Code], [Name]) VALUES (81, N'kit', N'Kitchener')
INSERT [dbo].[Locations] ([Id], [Code], [Name]) VALUES (82, N'wpg', N'Winnipeg')
INSERT [dbo].[Locations] ([Id], [Code], [Name]) VALUES (84, N'pal', N'Prince Albert')
INSERT [dbo].[Locations] ([Id], [Code], [Name]) VALUES (97, N'frt', N'Fort McMurray')
SET IDENTITY_INSERT [dbo].[Locations] OFF

SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (1, 'Ashlynn', 'Larkin', 'larkina', 8, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (2, 'Burdette', 'Smith', 'smithb', 81, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (3, 'Raymond', 'Turcotte', 'turcotter', 75, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (4, 'Jonathon', 'Armstrong', 'armstrongj', 75, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (5, 'Athena', 'Mertz', 'mertza', 21, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (6, 'Jailyn', 'Fahey', 'faheyj', 21, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (7, 'Maybell', 'Marvin', 'marvinm', 75, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (8, 'Josefa', 'Abshire', 'abshirej', 81, 'Administrator')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (9, 'Christ', 'Keebler', 'keeblerc', 5, 'Administrator')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (10, 'Ewald', 'Heaney', 'heaneye', 82, 'Administrator')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (11, 'Sarah', 'Marquardt', 'marquardts', 82, 'Administrator')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (12, 'Holden', 'Raynor', 'raynorh', 50, 'Administrator')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (13, 'Oma', 'Conn', 'conno', 19, 'Administrator')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (14, 'Tyra', 'Johnston', 'johnstont', 21, 'Administrator')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (15, 'Collin', 'Leffler', 'lefflerc', 5, 'Administrator')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (16, 'Stephon', 'Toy', 'toys', 73, 'Administrator')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (17, 'Percival', 'Volkman', 'volkmanp', 97, 'Administrator')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (18, 'Andreane', 'Herman', 'hermana', 21, 'Administrator')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (19, 'Ahmad', 'Lynch', 'lyncha', 75, 'Administrator')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (20, 'Grady', 'Zieme', 'ziemeg', 73, 'Administrator')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (21, 'Marco', 'Gottlieb', 'gottliebm', 51, 'Administrator')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (22, 'Alf', 'Kerluke', 'kerlukea', 8, 'Administrator')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (23, 'Marcelo', 'Heidenreich', 'heidenreichm', 73, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (24, 'Gussie', 'Cremin', 'creming', 8, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (25, 'Kirk', 'Klocko', 'klockok', 84, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (26, 'Louvenia', 'Terry', 'terryl', 75, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (27, 'Jamir', 'Feeney', 'feeneyj', 20, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (28, 'Kariane', 'Steuber', 'steuberk', 51, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (29, 'Gwen', 'Torp', 'torpg', 23, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (30, 'Gwen', 'Waters', 'watersg', 75, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (31, 'Luz', 'Balistreri', 'balistreril', 19, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (32, 'Cora', 'Fritsch', 'fritschc', 8, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (33, 'Arjun', 'Johns', 'johnsa', 51, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (34, 'Aditya', 'Dickens', 'dickensa', 8, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (35, 'Isom', 'Turcotte', 'turcottei', 82, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (36, 'Kyla', 'Shanahan', 'shanahank', 22, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (37, 'Trudie', 'Mosciski', 'mosciskit', 97, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (38, 'Hector', 'Runte', 'runteh', 73, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (39, 'Stacey', 'Dooley', 'dooleys', 75, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (40, 'Dejuan', 'Homenick', 'homenickd', 50, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (41, 'Clement', 'Barrows', 'barrowsc', 22, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (42, 'Destany', 'Moen', 'moend', 51, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (43, 'Carmel', 'Collins', 'collinsc', 97, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (44, 'Emmy', 'Mann', 'manne', 79, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (45, 'Doyle', 'Hansen', 'hansend', 20, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (46, 'Kasey', 'Feeney', 'feeneyk', 73, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (47, 'Christophe', 'Rolfson', 'rolfsonc', 73, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (48, 'Berta', 'Runolfsdottir', 'runolfsdottirb', 73, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (49, 'Chelsey', 'Anderson', 'andersonc', 8, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (50, 'Aliyah', 'Sipes', 'sipesa', 19, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (51, 'Myron', 'Fadel', 'fadelm', 19, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (52, 'Elise', 'West', 'weste', 22, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (53, 'Carlo', 'Bednar', 'bednarc', 5, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (54, 'Era', 'Franecki', 'franeckie', 84, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (55, 'Hettie', 'Ankunding', 'ankundingh', 81, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (56, 'Brionna', 'Schroeder', 'schroederb', 22, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (57, 'Celine', 'Dare', 'darec', 20, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (58, 'Elise', 'Abbott', 'abbotte', 23, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (59, 'Sheridan', 'Klocko', 'klockos', 51, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (60, 'Lonny', 'Kautzer', 'kautzerl', 84, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (61, 'Abdiel', 'Erdman', 'erdmana', 84, 'Individual Contributor')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (62, 'Olen', 'Schimmel', 'schimmelo', 50, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (63, 'Nick', 'Rowe', 'rowen', 8, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (64, 'Grace', 'Anderson', 'andersong', 79, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (65, 'William', 'Schowalter', 'schowalterw', 81, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (66, 'Addie', 'Turcotte', 'turcottea', 97, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (67, 'Zakary', 'Walter', 'walterz', 50, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (68, 'Alfonzo', 'Adams', 'adamsa', 23, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (69, 'Mikel', 'Crona', 'cronam', 82, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (70, 'Edwardo', 'Kunze', 'kunzee', 22, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (71, 'Mckenna', 'Satterfield', 'satterfieldm', 19, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (72, 'Lura', 'Jakubowski', 'jakubowskil', 50, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (73, 'Gerardo', 'Rath', 'rathg', 82, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (74, 'Astrid', 'Wiegand', 'wieganda', 8, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (75, 'Marquis', 'Baumbach', 'baumbachm', 21, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (76, 'Ike', 'Blanda', 'blandai', 51, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (77, 'Anjali', 'Gorczany', 'gorczanya', 97, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (78, 'Jarrod', 'Larkin', 'larkinj', 22, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (79, 'Cordell', 'Okuneva', 'okunevac', 79, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (80, 'Jordan', 'Corkery', 'corkeryj', 21, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (81, 'Rosemary', 'OReilly', 'oreillyr', 81, 'Resource Manager')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [LocationId], [Type]) VALUES (82, 'Harold', 'Torp', 'torph', 73, 'Resource Manager')
SET IDENTITY_INSERT [dbo].[Users] OFF

-- SET IDENTITY_INSERT [dbo].[Projects] ON
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (1, '2009-VD9D-15', 'Ut ea magnam qui voluptates enim et voluptas qui.', 51, '[{"Jan": 300, "Feb": 300, "Mar": 300, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 300, "Sep": 300, "Oct": 300, "Nov": 600, "Dec": 600}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (2, '2005-KJS4-46', 'Aliquam qui placeat sed sapiente qui sequi.', 19, '[{"Jan": 300, "Feb": 300, "Mar": 300, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 300, "Sep": 300, "Oct": 300, "Nov": 600, "Dec": 600}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (3, '2013-P24C-76', 'Architecto sint perferendis amet vel quidem distinctio totam dolor soluta.', 97, '[{"Jan": 300, "Feb": 300, "Mar": 300, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 300, "Sep": 300, "Oct": 300, "Nov": 600, "Dec": 600}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (4, '2014-HUGC-34', 'Exercitationem perferendis sit non voluptatem nisi autem aut omnis.', 82, '[{"Jan": 300, "Feb": 300, "Mar": 300, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 300, "Sep": 300, "Oct": 300, "Nov": 600, "Dec": 600}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (5, '2011-OYRR-48', 'Consequatur voluptatem molestiae.', 75, '[{"Jan": 300, "Feb": 300, "Mar": 300, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 300, "Sep": 300, "Oct": 300, "Nov": 600, "Dec": 600}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (6, '2008-2TL3-77', 'Non ut ullam maiores deleniti.', 81, '[{"Jan": 300, "Feb": 300, "Mar": 300, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 300, "Sep": 300, "Oct": 300, "Nov": 600, "Dec": 600}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (7, '2010-ZTTB-32', 'Nam est et nihil aut nostrum sequi.', 23, '[{"Jan": 300, "Feb": 300, "Mar": 300, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 300, "Sep": 300, "Oct": 300, "Nov": 600, "Dec": 600}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (8, '2009-XGPO-15', 'Nemo culpa est necessitatibus aut tempora enim.', 21, '[{"Jan": 300, "Feb": 300, "Mar": 300, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 300, "Sep": 300, "Oct": 300, "Nov": 600, "Dec": 600}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (9, '2013-3J71-89', 'Aliquam ratione quis sed enim et enim rerum.', 81, '[{"Jan": 300, "Feb": 300, "Mar": 300, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 300, "Sep": 300, "Oct": 300, "Nov": 600, "Dec": 600}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (10, '2010-D8K3-88', 'Quis voluptatem doloremque ad qui laboriosam.', 97, '[{"Jan": 300, "Feb": 300, "Mar": 300, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 300, "Sep": 300, "Oct": 300, "Nov": 600, "Dec": 600}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (11, '2018-9D45-25', 'Impedit officia at nemo.', 21, '[{"Jan": 300, "Feb": 300, "Mar": 300, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 300, "Sep": 300, "Oct": 300, "Nov": 600, "Dec": 600}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (12, '2015-Q11H-51', 'Nemo sit deserunt neque.', 19, '[{"Jan": 300, "Feb": 300, "Mar": 300, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 300, "Sep": 300, "Oct": 300, "Nov": 600, "Dec": 600}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (13, '2011-S4F8-11', 'Eos molestiae laudantium cum ut consequatur velit.', 22, '[{"Jan": 4200, "Feb": 4200, "Mar": 4200, "Apr": 5000, "May": 5000, "Jun": 5000, "Jul": 5000, "Aug": 4200, "Sep": 4200, "Oct": 4200, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (14, '2006-DV8K-66', 'Aut ratione sit natus aliquam aut in tenetur numquam sed.', 50, '[{"Jan": 4200, "Feb": 4200, "Mar": 4200, "Apr": 5000, "May": 5000, "Jun": 5000, "Jul": 5000, "Aug": 4200, "Sep": 4200, "Oct": 4200, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (15, '2005-U249-54', 'Dolores qui sed velit quia reiciendis excepturi.', 79, '[{"Jan": 4200, "Feb": 4200, "Mar": 4200, "Apr": 5000, "May": 5000, "Jun": 5000, "Jul": 5000, "Aug": 4200, "Sep": 4200, "Oct": 4200, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (16, '2017-EZ6P-38', 'Voluptas ipsum dolore voluptatem nam.', 23, '[{"Jan": 4200, "Feb": 4200, "Mar": 4200, "Apr": 5000, "May": 5000, "Jun": 5000, "Jul": 5000, "Aug": 4200, "Sep": 4200, "Oct": 4200, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (17, '2011-60GC-83', 'Autem quod quasi aut distinctio veniam minima similique.', 51, '[{"Jan": 4200, "Feb": 4200, "Mar": 4200, "Apr": 5000, "May": 5000, "Jun": 5000, "Jul": 5000, "Aug": 4200, "Sep": 4200, "Oct": 4200, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (18, '2010-ZL9R-34', 'Voluptatem aliquid atque recusandae nihil atque doloremque quod.', 73, '[{"Jan": 4200, "Feb": 4200, "Mar": 4200, "Apr": 5000, "May": 5000, "Jun": 5000, "Jul": 5000, "Aug": 4200, "Sep": 4200, "Oct": 4200, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (19, '2018-QSTU-29', 'Quo quia voluptas nulla quibusdam eaque amet ea omnis.', 73, '[{"Jan": 4200, "Feb": 4200, "Mar": 4200, "Apr": 5000, "May": 5000, "Jun": 5000, "Jul": 5000, "Aug": 4200, "Sep": 4200, "Oct": 4200, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (20, '2004-VIWD-87', 'Et ex atque sit amet deleniti.', 8, '[{"Jan": 4200, "Feb": 4200, "Mar": 4200, "Apr": 5000, "May": 5000, "Jun": 5000, "Jul": 5000, "Aug": 4200, "Sep": 4200, "Oct": 4200, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (21, '2006-4GKT-26', 'Sunt consequatur et id ratione voluptas maiores fuga dignissimos.', 84, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (22, '2015-NBAN-70', 'Necessitatibus quisquam minus animi eveniet.', 82, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (23, '2012-QX8H-11', 'Ea cupiditate provident dolor tempora veniam nihil eveniet impedit.', 75, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (24, '2015-XQT4-08', 'Quasi eos quis consequuntur.', 19, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (25, '2011-C6H5-49', 'Consequuntur minima quas quam eligendi atque maiores et aspernatur.', 75, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (26, '2017-I6MO-12', 'Ipsam corrupti sit consequatur distinctio deleniti dolor quia repellendus.', 19, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (27, '2013-FWTL-55', 'Accusamus voluptas distinctio quas aspernatur ipsam.', 23, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (28, '2016-CQW3-07', 'Voluptatem ea aut atque aut.', 20, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (29, '2019-0QTP-95', 'Officiis sit magni eum rem.', 81, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (30, '2013-WX1H-33', 'Excepturi enim maiores sed sunt.', 23, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (31, '2013-GNOW-64', 'Molestias vel fuga nulla totam aut minus eum.', 51, '[{"Jan": 900, "Feb": 900, "Mar": 900, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 900, "Sep": 900, "Oct": 900, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (32, '2006-3EKY-64', 'Consectetur architecto repudiandae deserunt eligendi et.', 97, '[{"Jan": 900, "Feb": 900, "Mar": 900, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 900, "Sep": 900, "Oct": 900, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (33, '2019-SQHH-19', 'Sed molestias quasi qui nobis ut dolore esse.', 73, '[{"Jan": 900, "Feb": 900, "Mar": 900, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 900, "Sep": 900, "Oct": 900, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (34, '2003-S0FT-60', 'Enim harum suscipit consectetur esse animi et voluptate nesciunt.', 51, '[{"Jan": 900, "Feb": 900, "Mar": 900, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 900, "Sep": 900, "Oct": 900, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (35, '2006-11I8-81', 'Consequatur aut id sit voluptatem consequatur laborum ea.', 81, '[{"Jan": 900, "Feb": 900, "Mar": 900, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 900, "Sep": 900, "Oct": 900, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (36, '2002-KRCZ-00', 'Quidem voluptatem deleniti ut.', 82, '[{"Jan": 900, "Feb": 900, "Mar": 900, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 900, "Sep": 900, "Oct": 900, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (37, '2009-K6KR-64', 'Consequatur ea enim.', 21, '[{"Jan": 900, "Feb": 900, "Mar": 900, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 900, "Sep": 900, "Oct": 900, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (38, '2013-7FIK-06', 'Et enim vitae dolorem quo molestiae eos aut aut quo.', 5, '[{"Jan": 900, "Feb": 900, "Mar": 900, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 900, "Sep": 900, "Oct": 900, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (39, '2014-SHEY-24', 'Sit possimus distinctio.', 81, '[{"Jan": 900, "Feb": 900, "Mar": 900, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 900, "Sep": 900, "Oct": 900, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (40, '2001-CHUW-86', 'Quia et mollitia autem similique aliquam illo sapiente deserunt aliquam.', 79, '[{"Jan": 2300, "Feb": 2300, "Mar": 2300, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 2300, "Sep": 2300, "Oct": 2300, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (41, '2018-0GYG-63', 'Molestiae quo explicabo.', 75, '[{"Jan": 2300, "Feb": 2300, "Mar": 2300, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 2300, "Sep": 2300, "Oct": 2300, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (42, '2012-EDEQ-10', 'Odit aut sint aspernatur sit tempora.', 73, '[{"Jan": 2300, "Feb": 2300, "Mar": 2300, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 2300, "Sep": 2300, "Oct": 2300, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (43, '2011-0D8X-81', 'Eveniet nam minima et nihil.', 20, '[{"Jan": 2300, "Feb": 2300, "Mar": 2300, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 2300, "Sep": 2300, "Oct": 2300, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (44, '2003-T8VH-14', 'Ipsum debitis non magnam quae illum.', 23, '[{"Jan": 2300, "Feb": 2300, "Mar": 2300, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 2300, "Sep": 2300, "Oct": 2300, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (45, '2014-R1X0-36', 'Consequatur ad dignissimos.', 50, '[{"Jan": 2300, "Feb": 2300, "Mar": 2300, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 2300, "Sep": 2300, "Oct": 2300, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (46, '2011-LSUK-76', 'Ea voluptatem excepturi repudiandae non.', 19, '[{"Jan": 2300, "Feb": 2300, "Mar": 2300, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 2300, "Sep": 2300, "Oct": 2300, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (47, '2014-6YRJ-14', 'Eos quis quas fugit quis necessitatibus.', 19, '[{"Jan": 2300, "Feb": 2300, "Mar": 2300, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 2300, "Sep": 2300, "Oct": 2300, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (48, '2005-KSCN-53', 'Quidem quia impedit excepturi dignissimos quia.', 97, '[{"Jan": 2300, "Feb": 2300, "Mar": 2300, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 2300, "Sep": 2300, "Oct": 2300, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (49, '2007-HWT6-80', 'Excepturi adipisci rerum nam dolorem dolor.', 82, '[{"Jan": 2300, "Feb": 2300, "Mar": 2300, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 2300, "Sep": 2300, "Oct": 2300, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (50, '2001-D0CC-97', 'Ab vero aut atque laborum.', 97, '[{"Jan": 2300, "Feb": 2300, "Mar": 2300, "Apr": 2000, "May": 2000, "Jun": 2000, "Jul": 2000, "Aug": 2300, "Sep": 2300, "Oct": 2300, "Nov": 1200, "Dec": 1200}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (51, '2011-UNAJ-66', 'Quis dignissimos nostrum ut velit.', 19, '[{"Jan": 100, "Feb": 100, "Mar": 100, "Apr": 50, "May": 50, "Jun": 50, "Jul": 50, "Aug": 100, "Sep": 100, "Oct": 100, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (52, '2018-A87Z-07', 'Magni voluptatem ea est tempora qui rem voluptates suscipit.', 22, '[{"Jan": 100, "Feb": 100, "Mar": 100, "Apr": 50, "May": 50, "Jun": 50, "Jul": 50, "Aug": 100, "Sep": 100, "Oct": 100, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (53, '2009-9IG4-57', 'Quia aut odio sint placeat sit labore eum.', 81, '[{"Jan": 100, "Feb": 100, "Mar": 100, "Apr": 50, "May": 50, "Jun": 50, "Jul": 50, "Aug": 100, "Sep": 100, "Oct": 100, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (54, '2016-WEKJ-93', 'Et voluptatum alias voluptatem amet et.', 50, '[{"Jan": 100, "Feb": 100, "Mar": 100, "Apr": 50, "May": 50, "Jun": 50, "Jul": 50, "Aug": 100, "Sep": 100, "Oct": 100, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (55, '2011-484Y-71', 'Cupiditate voluptatem sunt corrupti.', 21, '[{"Jan": 100, "Feb": 100, "Mar": 100, "Apr": 50, "May": 50, "Jun": 50, "Jul": 50, "Aug": 100, "Sep": 100, "Oct": 100, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (56, '2003-7GOG-90', 'Praesentium repellendus magni.', 84, '[{"Jan": 100, "Feb": 100, "Mar": 100, "Apr": 50, "May": 50, "Jun": 50, "Jul": 50, "Aug": 100, "Sep": 100, "Oct": 100, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (57, '2014-FQXD-36', 'Blanditiis enim dolor minima.', 79, '[{"Jan": 100, "Feb": 100, "Mar": 100, "Apr": 50, "May": 50, "Jun": 50, "Jul": 50, "Aug": 100, "Sep": 100, "Oct": 100, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (58, '2016-3W1P-90', 'Modi consequatur nihil eius.', 51, '[{"Jan": 100, "Feb": 100, "Mar": 100, "Apr": 50, "May": 50, "Jun": 50, "Jul": 50, "Aug": 100, "Sep": 100, "Oct": 100, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (59, '2000-U7T8-35', 'Vitae vitae nam sit ab error quia blanditiis sit molestiae.', 51, '[{"Jan": 800, "Feb": 800, "Mar": 800, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 800, "Sep": 800, "Oct": 800, "Nov": 700, "Dec": 700}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (60, '2002-RZT0-91', 'Autem eius qui soluta rerum in.', 8, '[{"Jan": 800, "Feb": 800, "Mar": 800, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 800, "Sep": 800, "Oct": 800, "Nov": 700, "Dec": 700}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (61, '2019-MFM3-12', 'Ut quisquam sequi blanditiis non fuga saepe non mollitia.', 50, '[{"Jan": 800, "Feb": 800, "Mar": 800, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 800, "Sep": 800, "Oct": 800, "Nov": 700, "Dec": 700}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (62, '2016-J3UV-45', 'Itaque quo nostrum delectus asperiores dolorem voluptatem itaque et.', 79, '[{"Jan": 800, "Feb": 800, "Mar": 800, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 800, "Sep": 800, "Oct": 800, "Nov": 700, "Dec": 700}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (63, '2019-B7UZ-40', 'Laboriosam sed ut velit quasi.', 79, '[{"Jan": 800, "Feb": 800, "Mar": 800, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 800, "Sep": 800, "Oct": 800, "Nov": 700, "Dec": 700}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (64, '2013-5MVQ-16', 'Quae suscipit eum non eos.', 82, '[{"Jan": 800, "Feb": 800, "Mar": 800, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 800, "Sep": 800, "Oct": 800, "Nov": 700, "Dec": 700}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (65, '2017-XI3E-55', 'Qui labore repellendus fuga voluptatem expedita.', 20, '[{"Jan": 800, "Feb": 800, "Mar": 800, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 800, "Sep": 800, "Oct": 800, "Nov": 700, "Dec": 700}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (66, '2012-2KB1-09', 'Eum ullam sint sit aliquid excepturi id tempora totam.', 22, '[{"Jan": 800, "Feb": 800, "Mar": 800, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 800, "Sep": 800, "Oct": 800, "Nov": 700, "Dec": 700}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (67, '2019-BXMY-82', 'In aliquam ratione.', 97, '[{"Jan": 800, "Feb": 800, "Mar": 800, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 800, "Sep": 800, "Oct": 800, "Nov": 700, "Dec": 700}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (68, '2016-PU8H-45', 'Voluptate non inventore cupiditate autem iusto quia ipsa voluptas.', 19, '[{"Jan": 800, "Feb": 800, "Mar": 800, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 800, "Sep": 800, "Oct": 800, "Nov": 700, "Dec": 700}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (69, '2010-NGCV-44', 'Reprehenderit quas impedit.', 50, '[{"Jan": 800, "Feb": 800, "Mar": 800, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 800, "Sep": 800, "Oct": 800, "Nov": 700, "Dec": 700}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (70, '2013-JA2X-46', 'Ducimus facilis est commodi rerum magni.', 50, '[{"Jan": 800, "Feb": 800, "Mar": 800, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 800, "Sep": 800, "Oct": 800, "Nov": 700, "Dec": 700}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (71, '2016-ZGV8-45', 'Sit quos magni perferendis nemo voluptate eveniet corporis quo provident.', 79, '[{"Jan": 800, "Feb": 800, "Mar": 800, "Apr": 500, "May": 500, "Jun": 500, "Jul": 500, "Aug": 800, "Sep": 800, "Oct": 800, "Nov": 700, "Dec": 700}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (72, '2002-ZX0M-24', 'Ut nisi autem maxime nostrum magnam aspernatur.', 81, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (73, '2010-HUC8-65', 'Sit sed esse inventore rerum accusantium maiores doloremque sint.', 8, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (74, '2015-LIUD-38', 'Provident asperiores rerum veritatis voluptate et.', 81, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (75, '2015-L2S8-23', 'Occaecati voluptas aut aut iste qui atque dolor accusamus.', 20, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (76, '2014-VJ92-61', 'Qui minus sed esse consequatur consequatur.', 5, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (77, '2003-559P-34', 'Id aut mollitia voluptatem et distinctio sint numquam repellendus similique.', 82, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (78, '2005-57MP-28', 'Sit aliquid totam quis quasi aliquid est.', 22, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (79, '2013-ZPIQ-48', 'Ut officiis repellendus nihil est sunt ut soluta.', 97, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (80, '2002-7TDE-59', 'Nihil quia iusto eos.', 97, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (81, '2010-MJV5-82', 'Maiores officiis rerum nisi accusamus.', 82, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (82, '2016-5EIQ-89', 'Animi ut nihil et velit et.', 84, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (83, '2015-D0I1-94', 'Minima consectetur placeat qui corporis alias et veniam.', 75, '[{"Jan": 4420, "Feb": 4420, "Mar": 4420, "Apr": 800, "May": 800, "Jun": 800, "Jul": 800, "Aug": 4420, "Sep": 4420, "Oct": 4420, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (84, '2011-IMF7-29', 'Voluptatem iusto illum provident dolorem nam iure cupiditate vitae ea.', 23, '[{"Jan": 3020, "Feb": 3020, "Mar": 3020, "Apr": 950, "May": 950, "Jun": 950, "Jul": 950, "Aug": 3020, "Sep": 3020, "Oct": 3020, "Nov": 1850, "Dec": 1850}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (85, '2014-ANFS-68', 'Et autem soluta.', 19, '[{"Jan": 3020, "Feb": 3020, "Mar": 3020, "Apr": 950, "May": 950, "Jun": 950, "Jul": 950, "Aug": 3020, "Sep": 3020, "Oct": 3020, "Nov": 1850, "Dec": 1850}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (86, '2008-XNB1-76', 'Beatae minus hic vel.', 75, '[{"Jan": 3020, "Feb": 3020, "Mar": 3020, "Apr": 950, "May": 950, "Jun": 950, "Jul": 950, "Aug": 3020, "Sep": 3020, "Oct": 3020, "Nov": 1850, "Dec": 1850}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (87, '2000-A73I-44', 'Similique qui aut.', 97, '[{"Jan": 3020, "Feb": 3020, "Mar": 3020, "Apr": 950, "May": 950, "Jun": 950, "Jul": 950, "Aug": 3020, "Sep": 3020, "Oct": 3020, "Nov": 1850, "Dec": 1850}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (88, '2018-9Q22-70', 'Vero et quos ducimus.', 23, '[{"Jan": 3020, "Feb": 3020, "Mar": 3020, "Apr": 950, "May": 950, "Jun": 950, "Jul": 950, "Aug": 3020, "Sep": 3020, "Oct": 3020, "Nov": 1850, "Dec": 1850}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (89, '2016-MB8C-65', 'Minima distinctio consequatur aut perspiciatis occaecati in.', 51, '[{"Jan": 3020, "Feb": 3020, "Mar": 3020, "Apr": 950, "May": 950, "Jun": 950, "Jul": 950, "Aug": 3020, "Sep": 3020, "Oct": 3020, "Nov": 1850, "Dec": 1850}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (90, '2008-Z58C-11', 'Qui qui molestias.', 73, '[{"Jan": 3020, "Feb": 3020, "Mar": 3020, "Apr": 950, "May": 950, "Jun": 950, "Jul": 950, "Aug": 3020, "Sep": 3020, "Oct": 3020, "Nov": 1850, "Dec": 1850}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (91, '2009-ZUDJ-06', 'Laudantium nisi dignissimos quis et explicabo fugiat enim.', 8, '[{"Jan": 3020, "Feb": 3020, "Mar": 3020, "Apr": 950, "May": 950, "Jun": 950, "Jul": 950, "Aug": 3020, "Sep": 3020, "Oct": 3020, "Nov": 1850, "Dec": 1850}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (92, '2012-C5BB-77', 'Accusamus deserunt est ullam doloremque tempore et et exercitationem et.', 75, '[{"Jan": 100, "Feb": 100, "Mar": 100, "Apr": 50, "May": 50, "Jun": 50, "Jul": 50, "Aug": 100, "Sep": 100, "Oct": 100, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (93, '2018-EXGM-50', 'Molestias ducimus eos nostrum ullam.', 20, '[{"Jan": 100, "Feb": 100, "Mar": 100, "Apr": 50, "May": 50, "Jun": 50, "Jul": 50, "Aug": 100, "Sep": 100, "Oct": 100, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (94, '2012-UWYK-97', 'Cupiditate ipsam necessitatibus magnam reprehenderit est hic ex.', 79, '[{"Jan": 100, "Feb": 100, "Mar": 100, "Apr": 50, "May": 50, "Jun": 50, "Jul": 50, "Aug": 100, "Sep": 100, "Oct": 100, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (95, '2010-26RL-63', 'Velit itaque amet voluptatem ducimus blanditiis inventore doloremque consectetur.', 23, '[{"Jan": 100, "Feb": 100, "Mar": 100, "Apr": 50, "May": 50, "Jun": 50, "Jul": 50, "Aug": 100, "Sep": 100, "Oct": 100, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (96, '2012-AZLA-04', 'Enim et nostrum ducimus sit non explicabo consequatur quas voluptas.', 50, '[{"Jan": 100, "Feb": 100, "Mar": 100, "Apr": 50, "May": 50, "Jun": 50, "Jul": 50, "Aug": 100, "Sep": 100, "Oct": 100, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (97, '2002-RYU3-57', 'Dolore explicabo dolorem quis quod quasi eveniet.', 19, '[{"Jan": 100, "Feb": 100, "Mar": 100, "Apr": 50, "May": 50, "Jun": 50, "Jul": 50, "Aug": 100, "Sep": 100, "Oct": 100, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (98, '2001-0XV2-37', 'Dolor facilis atque quaerat enim quam optio perspiciatis aliquam.', 84, '[{"Jan": 100, "Feb": 100, "Mar": 100, "Apr": 50, "May": 50, "Jun": 50, "Jul": 50, "Aug": 100, "Sep": 100, "Oct": 100, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (99, '2000-E5ZL-91', 'Nobis fugiat qui.', 23, '[{"Jan": 100, "Feb": 100, "Mar": 100, "Apr": 50, "May": 50, "Jun": 50, "Jul": 50, "Aug": 100, "Sep": 100, "Oct": 100, "Nov": 70, "Dec": 70}]')
-- INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId], [Hours]) VALUES (100, '2010-PKMU-41', 'Ut est harum ducimus minima ut.', 82, '[{"Jan": 100, "Feb": 100, "Mar": 100, "Apr": 50, "May": 50, "Jun": 50, "Jul": 50, "Aug": 100, "Sep": 100, "Oct": 100, "Nov": 70, "Dec": 70}]')
-- SET IDENTITY_INSERT [dbo].[Projects] OFF

SET IDENTITY_INSERT [dbo].[Projects] ON
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (1, '2009-VD9D-15', 'Ut ea magnam qui voluptates enim et voluptas qui.', 51)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (2, '2005-KJS4-46', 'Aliquam qui placeat sed sapiente qui sequi.', 19)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (3, '2013-P24C-76', 'Architecto sint perferendis amet vel quidem distinctio totam dolor soluta.', 97)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (4, '2014-HUGC-34', 'Exercitationem perferendis sit non voluptatem nisi autem aut omnis.', 82)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (5, '2011-OYRR-48', 'Consequatur voluptatem molestiae.', 75)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (6, '2008-2TL3-77', 'Non ut ullam maiores deleniti.', 81)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (7, '2010-ZTTB-32', 'Nam est et nihil aut nostrum sequi.', 23)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (8, '2009-XGPO-15', 'Nemo culpa est necessitatibus aut tempora enim.', 21)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (9, '2013-3J71-89', 'Aliquam ratione quis sed enim et enim rerum.', 81)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (10, '2010-D8K3-88', 'Quis voluptatem doloremque ad qui laboriosam.', 97)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (11, '2018-9D45-25', 'Impedit officia at nemo.', 21)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (12, '2015-Q11H-51', 'Nemo sit deserunt neque.', 19)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (13, '2011-S4F8-11', 'Eos molestiae laudantium cum ut consequatur velit.', 22)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (14, '2006-DV8K-66', 'Aut ratione sit natus aliquam aut in tenetur numquam sed.', 50)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (15, '2005-U249-54', 'Dolores qui sed velit quia reiciendis excepturi.', 79)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (16, '2017-EZ6P-38', 'Voluptas ipsum dolore voluptatem nam.', 23)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (17, '2011-60GC-83', 'Autem quod quasi aut distinctio veniam minima similique.', 51)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (18, '2010-ZL9R-34', 'Voluptatem aliquid atque recusandae nihil atque doloremque quod.', 73)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (19, '2018-QSTU-29', 'Quo quia voluptas nulla quibusdam eaque amet ea omnis.', 73)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (20, '2004-VIWD-87', 'Et ex atque sit amet deleniti.', 8)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (21, '2006-4GKT-26', 'Sunt consequatur et id ratione voluptas maiores fuga dignissimos.', 84)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (22, '2015-NBAN-70', 'Necessitatibus quisquam minus animi eveniet.', 82)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (23, '2012-QX8H-11', 'Ea cupiditate provident dolor tempora veniam nihil eveniet impedit.', 75)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (24, '2015-XQT4-08', 'Quasi eos quis consequuntur.', 19)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (25, '2011-C6H5-49', 'Consequuntur minima quas quam eligendi atque maiores et aspernatur.', 75)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (26, '2017-I6MO-12', 'Ipsam corrupti sit consequatur distinctio deleniti dolor quia repellendus.', 19)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (27, '2013-FWTL-55', 'Accusamus voluptas distinctio quas aspernatur ipsam.', 23)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (28, '2016-CQW3-07', 'Voluptatem ea aut atque aut.', 20)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (29, '2019-0QTP-95', 'Officiis sit magni eum rem.', 81)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (30, '2013-WX1H-33', 'Excepturi enim maiores sed sunt.', 23)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (31, '2013-GNOW-64', 'Molestias vel fuga nulla totam aut minus eum.', 51)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (32, '2006-3EKY-64', 'Consectetur architecto repudiandae deserunt eligendi et.', 97)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (33, '2019-SQHH-19', 'Sed molestias quasi qui nobis ut dolore esse.', 73)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (34, '2003-S0FT-60', 'Enim harum suscipit consectetur esse animi et voluptate nesciunt.', 51)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (35, '2006-11I8-81', 'Consequatur aut id sit voluptatem consequatur laborum ea.', 81)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (36, '2002-KRCZ-00', 'Quidem voluptatem deleniti ut.', 82)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (37, '2009-K6KR-64', 'Consequatur ea enim.', 21)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (38, '2013-7FIK-06', 'Et enim vitae dolorem quo molestiae eos aut aut quo.', 5)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (39, '2014-SHEY-24', 'Sit possimus distinctio.', 81)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (40, '2001-CHUW-86', 'Quia et mollitia autem similique aliquam illo sapiente deserunt aliquam.', 79)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (41, '2018-0GYG-63', 'Molestiae quo explicabo.', 75)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (42, '2012-EDEQ-10', 'Odit aut sint aspernatur sit tempora.', 73)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (43, '2011-0D8X-81', 'Eveniet nam minima et nihil.', 20)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (44, '2003-T8VH-14', 'Ipsum debitis non magnam quae illum.', 23)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (45, '2014-R1X0-36', 'Consequatur ad dignissimos.', 50)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (46, '2011-LSUK-76', 'Ea voluptatem excepturi repudiandae non.', 19)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (47, '2014-6YRJ-14', 'Eos quis quas fugit quis necessitatibus.', 19)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (48, '2005-KSCN-53', 'Quidem quia impedit excepturi dignissimos quia.', 97)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (49, '2007-HWT6-80', 'Excepturi adipisci rerum nam dolorem dolor.', 82)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (50, '2001-D0CC-97', 'Ab vero aut atque laborum.', 97)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (51, '2011-UNAJ-66', 'Quis dignissimos nostrum ut velit.', 19)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (52, '2018-A87Z-07', 'Magni voluptatem ea est tempora qui rem voluptates suscipit.', 22)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (53, '2009-9IG4-57', 'Quia aut odio sint placeat sit labore eum.', 81)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (54, '2016-WEKJ-93', 'Et voluptatum alias voluptatem amet et.', 50)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (55, '2011-484Y-71', 'Cupiditate voluptatem sunt corrupti.', 21)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (56, '2003-7GOG-90', 'Praesentium repellendus magni.', 84)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (57, '2014-FQXD-36', 'Blanditiis enim dolor minima.', 79)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (58, '2016-3W1P-90', 'Modi consequatur nihil eius.', 51)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (59, '2000-U7T8-35', 'Vitae vitae nam sit ab error quia blanditiis sit molestiae.', 51)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (60, '2002-RZT0-91', 'Autem eius qui soluta rerum in.', 8)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (61, '2019-MFM3-12', 'Ut quisquam sequi blanditiis non fuga saepe non mollitia.', 50)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (62, '2016-J3UV-45', 'Itaque quo nostrum delectus asperiores dolorem voluptatem itaque et.', 79)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (63, '2019-B7UZ-40', 'Laboriosam sed ut velit quasi.', 79)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (64, '2013-5MVQ-16', 'Quae suscipit eum non eos.', 82)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (65, '2017-XI3E-55', 'Qui labore repellendus fuga voluptatem expedita.', 20)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (66, '2012-2KB1-09', 'Eum ullam sint sit aliquid excepturi id tempora totam.', 22)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (67, '2019-BXMY-82', 'In aliquam ratione.', 97)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (68, '2016-PU8H-45', 'Voluptate non inventore cupiditate autem iusto quia ipsa voluptas.', 19)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (69, '2010-NGCV-44', 'Reprehenderit quas impedit.', 50)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (70, '2013-JA2X-46', 'Ducimus facilis est commodi rerum magni.', 50)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (71, '2016-ZGV8-45', 'Sit quos magni perferendis nemo voluptate eveniet corporis quo provident.', 79)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (72, '2002-ZX0M-24', 'Ut nisi autem maxime nostrum magnam aspernatur.', 81)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (73, '2010-HUC8-65', 'Sit sed esse inventore rerum accusantium maiores doloremque sint.', 8)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (74, '2015-LIUD-38', 'Provident asperiores rerum veritatis voluptate et.', 81)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (75, '2015-L2S8-23', 'Occaecati voluptas aut aut iste qui atque dolor accusamus.', 20)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (76, '2014-VJ92-61', 'Qui minus sed esse consequatur consequatur.', 5)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (77, '2003-559P-34', 'Id aut mollitia voluptatem et distinctio sint numquam repellendus similique.', 82)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (78, '2005-57MP-28', 'Sit aliquid totam quis quasi aliquid est.', 22)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (79, '2013-ZPIQ-48', 'Ut officiis repellendus nihil est sunt ut soluta.', 97)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (80, '2002-7TDE-59', 'Nihil quia iusto eos.', 97)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (81, '2010-MJV5-82', 'Maiores officiis rerum nisi accusamus.', 82)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (82, '2016-5EIQ-89', 'Animi ut nihil et velit et.', 84)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (83, '2015-D0I1-94', 'Minima consectetur placeat qui corporis alias et veniam.', 75)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (84, '2011-IMF7-29', 'Voluptatem iusto illum provident dolorem nam iure cupiditate vitae ea.', 23)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (85, '2014-ANFS-68', 'Et autem soluta.', 19)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (86, '2008-XNB1-76', 'Beatae minus hic vel.', 75)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (87, '2000-A73I-44', 'Similique qui aut.', 97)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (88, '2018-9Q22-70', 'Vero et quos ducimus.', 23)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (89, '2016-MB8C-65', 'Minima distinctio consequatur aut perspiciatis occaecati in.', 51)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (90, '2008-Z58C-11', 'Qui qui molestias.', 73)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (91, '2009-ZUDJ-06', 'Laudantium nisi dignissimos quis et explicabo fugiat enim.', 8)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (92, '2012-C5BB-77', 'Accusamus deserunt est ullam doloremque tempore et et exercitationem et.', 75)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (93, '2018-EXGM-50', 'Molestias ducimus eos nostrum ullam.', 20)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (94, '2012-UWYK-97', 'Cupiditate ipsam necessitatibus magnam reprehenderit est hic ex.', 79)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (95, '2010-26RL-63', 'Velit itaque amet voluptatem ducimus blanditiis inventore doloremque consectetur.', 23)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (96, '2012-AZLA-04', 'Enim et nostrum ducimus sit non explicabo consequatur quas voluptas.', 50)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (97, '2002-RYU3-57', 'Dolore explicabo dolorem quis quod quasi eveniet.', 19)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (98, '2001-0XV2-37', 'Dolor facilis atque quaerat enim quam optio perspiciatis aliquam.', 84)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (99, '2000-E5ZL-91', 'Nobis fugiat qui.', 23)
INSERT [dbo].[Projects] ([Id], [Number], [Title], [LocationId]) VALUES (100, '2010-PKMU-41', 'Ut est harum ducimus minima ut.', 82)
SET IDENTITY_INSERT [dbo].[Projects] OFF

Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (1, '2019-01-01', '2020-12-31', 'Active', 2019, 400, 300, 1700, 500, 1400, 700, 1100, 200, 1800, 800, 1300, 800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (1, '2019-01-01', '2020-12-31', 'Active', 2020, 1300, 1700, 1800, 2000, 1900, 1700, 900, 200, 1200, 1800, 1100, 900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (2, '2018-01-01', '2019-12-31', 'Forecast', 2018, 1300, 900, 1200, 400, 1400, 400,
1300, 600, 600, 1700, 1700, 2000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (2, '2018-01-01', '2019-12-31', 'Forecast', 2019, 1300, 200, 800, 1900, 1400, 1300, 2000, 700, 400, 600, 1900, 1100)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (3, '2020-01-01', '2021-12-31', 'Inactive', 2020, 600, 700, 1300, 600, 700, 500, 600, 900, 1200, 1300, 1400, 1800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (3, '2020-01-01', '2021-12-31', 'Inactive', 2021, 1800, 1100, 1300, 300, 1100, 1900, 1100, 800, 1000, 1800, 800, 1900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (4, '2020-01-01', '2021-12-31', 'Inactive', 2020, 400, 1300, 2000, 1300, 1000, 900, 1700, 500, 1900, 1400, 200, 1500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (4, '2020-01-01', '2021-12-31', 'Inactive', 2021, 1300, 700, 1600, 1400, 800, 1100, 600, 1000, 1800, 1600, 1900, 1600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (5, '2018-01-01', '2019-12-31', 'Inactive', 2018, 900, 900, 1200, 500, 800, 1500, 1000, 900, 1000, 1900, 1800, 1200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (5, '2018-01-01', '2019-12-31', 'Inactive', 2019, 600, 1700, 1500, 1300, 1300, 1200, 800, 1300, 400, 2000, 400, 600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (6, '2020-01-01', '2021-12-31', 'Forecast', 2020, 1200, 800, 800, 1900, 600, 1200,
1400, 600, 1600, 400, 1500, 1400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (6, '2020-01-01', '2021-12-31', 'Forecast', 2021, 1000, 1300, 800, 1600, 400, 1800, 700, 1500, 1800, 1700, 1800, 800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (7, '2019-01-01', '2020-12-31', 'Forecast', 2019, 1100, 1400, 1100, 900, 900, 900,
900, 800, 200, 1100, 1100, 800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (7, '2019-01-01', '2020-12-31', 'Forecast', 2020, 1700, 1700, 900, 2000, 900, 500,
1800, 700, 1700, 1000, 800, 1900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (8, '2019-01-01', '2020-12-31', 'Inactive', 2019, 1300, 700, 1900, 700, 1800, 1000, 1100, 2000, 500, 900, 1100, 1900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (8, '2019-01-01', '2020-12-31', 'Inactive', 2020, 1000, 600, 1400, 1200, 200, 1300, 400, 800, 1400, 600, 2000, 1300)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (9, '2019-01-01', '2020-12-31', 'Forecast', 2019, 500, 1100, 1800, 1000, 600, 1000, 400, 300, 700, 600, 1800, 1300)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (9, '2019-01-01', '2020-12-31', 'Forecast', 2020, 800, 300, 1900, 1800, 1300, 500,
1900, 1900, 700, 400, 1400, 300)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (10, '2018-01-01', '2019-12-31', 'Forecast', 2018, 800, 1400, 1000, 500, 400, 600,
1900, 500, 900, 600, 1000, 700)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (10, '2018-01-01', '2019-12-31', 'Forecast', 2019, 1900, 1300, 700, 1800, 1700, 1400, 1700, 1700, 900, 800, 2000, 2000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (11, '2018-01-01', '2019-12-31', 'Forecast', 2018, 700, 1100, 800, 1700, 1000, 600, 900, 1000, 1300, 400, 800, 1800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (11, '2018-01-01', '2019-12-31', 'Forecast', 2019, 1100, 800, 1300, 1600, 1700, 1000, 500, 1400, 1400, 500, 1700, 1700)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (12, '2020-01-01', '2021-12-31', 'Forecast', 2020, 500, 500, 2000, 900, 700, 400, 2000, 1800, 700, 1400, 1700, 1100)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (12, '2020-01-01', '2021-12-31', 'Forecast', 2021, 1900, 300, 900, 1400, 700, 1700, 2000, 1200, 1800, 1600, 500, 1600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (13, '2020-01-01', '2021-12-31', 'Inactive', 2020, 200, 1100, 900, 1800, 1000, 1400, 1000, 1400, 400, 1300, 1600, 400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (13, '2020-01-01', '2021-12-31', 'Inactive', 2021, 1000, 600, 200, 1900, 2000, 700, 1500, 200, 1600, 1100, 600, 1000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (14, '2019-01-01', '2020-12-31', 'Forecast', 2019, 300, 1700, 300, 1600, 1000, 1600, 800, 1700, 900, 400, 2000, 1700)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (14, '2019-01-01', '2020-12-31', 'Forecast', 2020, 1700, 1500, 900, 2000, 700, 1500, 1400, 1400, 1800, 400, 800, 1200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (15, '2019-01-01', '2020-12-31', 'Inactive', 2019, 1100, 700, 700, 1500, 1400, 200, 1300, 1200, 500, 400, 900, 500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (15, '2019-01-01', '2020-12-31', 'Inactive', 2020, 1800, 300, 1200, 600, 700, 1500, 800, 2000, 700, 1300, 800, 700)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (16, '2019-01-01', '2020-12-31', 'Forecast', 2019, 1300, 500, 600, 700, 500, 900, 600, 200, 1700, 800, 400, 1400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (16, '2019-01-01', '2020-12-31', 'Forecast', 2020, 200, 2000, 900, 2000, 800, 1100, 1700, 700, 300, 500, 500, 900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (17, '2019-01-01', '2020-12-31', 'Active', 2019, 1400, 700, 1600, 700, 1600, 2000,
600, 1000, 800, 2000, 800, 400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (17, '2019-01-01', '2020-12-31', 'Active', 2020, 1300, 800, 900, 400, 1500, 1300, 700, 800, 300, 300, 200, 1900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (18, '2020-01-01', '2021-12-31', 'Active', 2020, 1900, 1100, 600, 800, 800, 1200, 1500, 1000, 1500, 1100, 2000, 1600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (18, '2020-01-01', '2021-12-31', 'Active', 2021, 1300, 600, 500, 1100, 200, 1000, 1300, 1700, 600, 1400, 400, 1400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (19, '2018-01-01', '2019-12-31', 'Active', 2018, 1600, 700, 500, 900, 1300, 1600, 400, 900, 500, 1600, 800, 2000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (19, '2018-01-01', '2019-12-31', 'Active', 2019, 1200, 1200, 200, 400, 500, 1400, 1000, 600, 800, 1600, 1800, 1900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (20, '2019-01-01', '2020-12-31', 'Inactive', 2019, 700, 1500, 1800, 200, 1400, 500, 200, 200, 1800, 1200, 2000, 1600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (20, '2019-01-01', '2020-12-31', 'Inactive', 2020, 400, 1900, 1600, 900, 200, 1700, 1300, 1600, 1500, 2000, 1100, 1400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (21, '2019-01-01', '2020-12-31', 'Inactive', 2019, 900, 900, 200, 900, 600, 1600, 1100, 2000, 1400, 1500, 600, 1300)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (21, '2019-01-01', '2020-12-31', 'Inactive', 2020, 600, 600, 1000, 2000, 600, 1400, 600, 1300, 1300, 1300, 1900, 1900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (22, '2020-01-01', '2021-12-31', 'Inactive', 2020, 800, 1200, 1100, 1700, 800, 1000, 1800, 300, 1600, 1500, 300, 400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (22, '2020-01-01', '2021-12-31', 'Inactive', 2021, 2000, 1000, 500, 1800, 900, 1600, 1100, 600, 1100, 400, 800, 300)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (23, '2020-01-01', '2021-12-31', 'Inactive', 2020, 1000, 300, 2000, 1400, 1000, 2000, 2000, 1200, 1700, 1200, 1800, 1600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (23, '2020-01-01', '2021-12-31', 'Inactive', 2021, 1900, 300, 800, 300, 800, 1800,
800, 500, 600, 200, 400, 300)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (24, '2020-01-01', '2021-12-31', 'Forecast', 2020, 700, 300, 2000, 700, 1300, 200,
200, 1400, 1700, 1200, 1500, 2000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (24, '2020-01-01', '2021-12-31', 'Forecast', 2021, 1400, 1600, 1000, 400, 600, 1000, 1900, 800, 200, 1100, 800, 300)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (25, '2020-01-01', '2021-12-31', 'Forecast', 2020, 300, 1000, 1800, 1600, 1800, 200, 1400, 400, 1400, 300, 800, 1000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (25, '2020-01-01', '2021-12-31', 'Forecast', 2021, 1700, 700, 700, 1700, 1000, 1200, 1600, 500, 1900, 600, 2000, 1400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (26, '2020-01-01', '2021-12-31', 'Inactive', 2020, 1000, 1100, 1800, 1200, 1300, 1000, 200, 500, 1200, 600, 200, 1700)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (26, '2020-01-01', '2021-12-31', 'Inactive', 2021, 1100, 200, 600, 1000, 1900, 500, 1200, 1900, 1800, 400, 1400, 1400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (27, '2018-01-01', '2019-12-31', 'Forecast', 2018, 700, 900, 1600, 1900, 1700, 1700, 1500, 1500, 1800, 1800, 1700, 1300)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (27, '2018-01-01', '2019-12-31', 'Forecast', 2019, 1800, 2000, 1800, 1400, 300, 1600, 1100, 1400, 200, 1600, 400, 300)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (28, '2018-01-01', '2019-12-31', 'Forecast', 2018, 800, 1200, 1000, 1600, 1200, 600, 1500, 1400, 1600, 1100, 1800, 500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (28, '2018-01-01', '2019-12-31', 'Forecast', 2019, 1700, 1300, 1800, 1200, 1400, 1400, 400, 900, 600, 700, 1600, 900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (29, '2020-01-01', '2021-12-31', 'Active', 2020, 1600, 1300, 200, 1800, 400, 600, 400, 1500, 800, 1700, 1000, 2000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (29, '2020-01-01', '2021-12-31', 'Active', 2021, 1300, 700, 1100, 2000, 600, 1700,
2000, 1900, 1600, 300, 2000, 900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (30, '2020-01-01', '2021-12-31', 'Forecast', 2020, 1500, 300, 600, 1500, 1200, 1400, 200, 600, 1600, 1500, 1200, 1000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (30, '2020-01-01', '2021-12-31', 'Forecast', 2021, 1500, 1000, 2000, 1000, 1400, 1800, 500, 800, 600, 500, 900, 1200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (31, '2020-01-01', '2021-12-31', 'Active', 2020, 1100, 1000, 600, 1600, 1900, 1800, 700, 1200, 1900, 1400, 1300, 1100)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (31, '2020-01-01', '2021-12-31', 'Active', 2021, 1700, 400, 1400, 400, 1800, 900, 1400, 600, 1000, 700, 300, 800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (32, '2020-01-01', '2021-12-31', 'Inactive', 2020, 2000, 700, 1200, 600, 1500, 1500, 1800, 2000, 400, 1300, 700, 1900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (32, '2020-01-01', '2021-12-31', 'Inactive', 2021, 1100, 2000, 400, 1100, 500, 1600, 1700, 900, 500, 1800, 1600, 1100)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (33, '2018-01-01', '2019-12-31', 'Active', 2018, 800, 400, 1200, 800, 1600, 1700, 1700, 600, 400, 1600, 1800, 900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (33, '2018-01-01', '2019-12-31', 'Active', 2019, 1400, 1900, 1100, 400, 300, 300, 1200, 200, 500, 1000, 600, 500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (34, '2020-01-01', '2021-12-31', 'Active', 2020, 1500, 1500, 700, 400, 2000, 500, 1900, 1800, 800, 1200, 700, 200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (34, '2020-01-01', '2021-12-31', 'Active', 2021, 1000, 1900, 700, 500, 1500, 1400,
1800, 2000, 600, 1900, 700, 900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (35, '2019-01-01', '2020-12-31', 'Inactive', 2019, 1200, 1900, 1800, 300, 1500, 200, 1000, 900, 400, 1800, 1300, 1200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (35, '2019-01-01', '2020-12-31', 'Inactive', 2020, 1000, 200, 400, 1300, 300, 900,
1100, 1800, 500, 1800, 900, 1200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (36, '2018-01-01', '2019-12-31', 'Forecast', 2018, 1300, 500, 1100, 1400, 400, 1700, 300, 600, 1800, 1500, 1900, 200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (36, '2018-01-01', '2019-12-31', 'Forecast', 2019, 800, 1500, 700, 1400, 1100, 1900, 400, 1600, 500, 1600, 200, 1100)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (37, '2020-01-01', '2021-12-31', 'Active', 2020, 2000, 900, 1900, 2000, 1500, 800,
1200, 1800, 300, 200, 1300, 300)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (37, '2020-01-01', '2021-12-31', 'Active', 2021, 1600, 800, 600, 500, 2000, 1800, 200, 1500, 1900, 200, 700, 1500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (38, '2020-01-01', '2021-12-31', 'Forecast', 2020, 400, 1900, 200, 1400, 2000, 200, 1700, 1600, 1900, 300, 800, 300)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (38, '2020-01-01', '2021-12-31', 'Forecast', 2021, 200, 800, 1700, 1600, 1800, 1900, 400, 200, 1100, 1900, 200, 1200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (39, '2018-01-01', '2019-12-31', 'Inactive', 2018, 500, 1300, 1500, 1600, 500, 200, 600, 200, 1000, 600, 300, 500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (39, '2018-01-01', '2019-12-31', 'Inactive', 2019, 400, 400, 500, 1200, 1300, 1500, 1900, 600, 1000, 400, 700, 700)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (40, '2018-01-01', '2019-12-31', 'Inactive', 2018, 700, 1200, 400, 500, 800, 1800,
1900, 1500, 1400, 1300, 1400, 300)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (40, '2018-01-01', '2019-12-31', 'Inactive', 2019, 1500, 300, 1600, 1700, 1400, 500, 700, 200, 500, 800, 1900, 1800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (41, '2019-01-01', '2020-12-31', 'Forecast', 2019, 2000, 600, 600, 2000, 1200, 1400, 500, 600, 1600, 1800, 500, 1500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (41, '2019-01-01', '2020-12-31', 'Forecast', 2020, 200, 800, 1400, 1300, 700, 800,
1600, 300, 1900, 1100, 200, 1800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (42, '2018-01-01', '2019-12-31', 'Active', 2018, 1900, 1400, 1000, 2000, 1500, 800, 200, 1000, 800, 2000, 500, 600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (42, '2018-01-01', '2019-12-31', 'Active', 2019, 1400, 300, 800, 600, 1500, 1700, 1800, 1000, 900, 200, 1600, 1400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (43, '2019-01-01', '2020-12-31', 'Inactive', 2019, 1000, 200, 1900, 800, 400, 1600, 800, 400, 200, 1300, 1600, 600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (43, '2019-01-01', '2020-12-31', 'Inactive', 2020, 900, 1600, 1700, 600, 300, 500,
1800, 400, 500, 700, 1200, 700)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (44, '2018-01-01', '2019-12-31', 'Forecast', 2018, 1700, 1100, 400, 1700, 800, 400, 500, 400, 900, 700, 1400, 1800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (44, '2018-01-01', '2019-12-31', 'Forecast', 2019, 1600, 700, 1300, 1200, 1900, 600, 1100, 1400, 1100, 1200, 1900, 1100)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (45, '2019-01-01', '2020-12-31', 'Inactive', 2019, 1600, 300, 1000, 1300, 1700, 400, 700, 900, 1700, 600, 700, 1100)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (45, '2019-01-01', '2020-12-31', 'Inactive', 2020, 1400, 800, 1000, 1500, 1400, 1500, 800, 200, 500, 1000, 1200, 1800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (46, '2019-01-01', '2020-12-31', 'Active', 2019, 500, 400, 1800, 1100, 1800, 1400,
2000, 600, 1300, 1000, 1100, 2000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (46, '2019-01-01', '2020-12-31', 'Active', 2020, 900, 700, 300, 1100, 1000, 1200, 1700, 400, 500, 1700, 1900, 400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (47, '2019-01-01', '2020-12-31', 'Inactive', 2019, 1400, 700, 500, 1200, 600, 1400, 800, 1600, 500, 1100, 1700, 1200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (47, '2019-01-01', '2020-12-31', 'Inactive', 2020, 1200, 1600, 200, 400, 800, 700,
1000, 600, 900, 900, 1100, 1800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (48, '2019-01-01', '2020-12-31', 'Active', 2019, 2000, 400, 900, 2000, 1100, 200, 200, 1300, 1800, 500, 700, 600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (48, '2019-01-01', '2020-12-31', 'Active', 2020, 500, 1500, 700, 1800, 900, 700, 1800, 1600, 800, 1600, 900, 1100)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (49, '2020-01-01', '2021-12-31', 'Active', 2020, 1400, 1400, 700, 800, 1400, 1300,
1000, 1600, 1700, 1900, 500, 200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (49, '2020-01-01', '2021-12-31', 'Active', 2021, 1200, 1000, 1700, 300, 1200, 500,
200, 1600, 1200, 200, 1000, 700)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (50, '2020-01-01', '2021-12-31', 'Forecast', 2020, 1100, 1100, 1700, 1400, 1300, 800, 1400, 200, 1100, 1000, 600, 700)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (50, '2020-01-01', '2021-12-31', 'Forecast', 2021, 1900, 1000, 200, 1900, 200, 1500, 1700, 200, 600, 2000, 600, 600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (51, '2019-01-01', '2020-12-31', 'Inactive', 2019, 1400, 300, 1800, 1800, 1000, 1600, 800, 700, 200, 1500, 1500, 600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (51, '2019-01-01', '2020-12-31', 'Inactive', 2020, 1200, 900, 900, 1500, 1200, 900, 1900, 1300, 1300, 1800, 200, 600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (52, '2020-01-01', '2021-12-31', 'Active', 2020, 200, 500, 1100, 700, 1800, 300, 400, 500, 500, 1400, 1800, 1400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (52, '2020-01-01', '2021-12-31', 'Active', 2021, 1400, 1300, 400, 400, 1400, 2000,
1400, 800, 1700, 900, 1200, 1500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (53, '2020-01-01', '2021-12-31', 'Forecast', 2020, 1700, 1400, 900, 900, 500, 2000, 1100, 1100, 1600, 1200, 1900, 1600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (53, '2020-01-01', '2021-12-31', 'Forecast', 2021, 1000, 1900, 600, 800, 1300, 1700, 1300, 600, 700, 2000, 800, 1900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (54, '2019-01-01', '2020-12-31', 'Inactive', 2019, 1700, 1000, 1700, 1800, 1700, 1800, 1500, 400, 1700, 1300, 400, 800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (54, '2019-01-01', '2020-12-31', 'Inactive', 2020, 1600, 1000, 1200, 1300, 1700, 1100, 500, 1300, 1300, 800, 600, 400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (55, '2020-01-01', '2021-12-31', 'Forecast', 2020, 200, 500, 900, 800, 1300, 1000,
1700, 1200, 1100, 1500, 1700, 1200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (55, '2020-01-01', '2021-12-31', 'Forecast', 2021, 1400, 700, 1500, 900, 1600, 300, 800, 800, 600, 200, 700, 2000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (56, '2018-01-01', '2019-12-31', 'Forecast', 2018, 300, 1500, 2000, 1300, 1800, 2000, 200, 400, 500, 1900, 900, 1900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (56, '2018-01-01', '2019-12-31', 'Forecast', 2019, 1900, 300, 1200, 600, 1700, 800, 1200, 1300, 1000, 2000, 600, 200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (57, '2019-01-01', '2020-12-31', 'Forecast', 2019, 900, 1000, 200, 1300, 1500, 1500, 700, 1900, 1300, 1700, 1600, 2000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (57, '2019-01-01', '2020-12-31', 'Forecast', 2020, 1200, 1100, 600, 1000, 800, 300, 1900, 500, 1400, 900, 400, 400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (58, '2020-01-01', '2021-12-31', 'Forecast', 2020, 600, 1600, 1700, 900, 800, 1900, 1400, 900, 1000, 800, 1300, 800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (58, '2020-01-01', '2021-12-31', 'Forecast', 2021, 1400, 1400, 2000, 1000, 800, 200, 300, 400, 200, 1100, 400, 200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (59, '2018-01-01', '2019-12-31', 'Inactive', 2018, 1000, 1500, 1300, 1700, 1800, 300, 700, 1700, 1400, 300, 1800, 400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (59, '2018-01-01', '2019-12-31', 'Inactive', 2019, 500, 1200, 1000, 2000, 1700, 900, 1400, 900, 1200, 800, 1800, 800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (60, '2018-01-01', '2019-12-31', 'Active', 2018, 200, 1500, 2000, 900, 1000, 700, 1100, 500, 800, 900, 1000, 200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (60, '2018-01-01', '2019-12-31', 'Active', 2019, 900, 1600, 1100, 1000, 1700, 1500, 300, 1500, 1400, 1300, 1000, 200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (61, '2018-01-01', '2019-12-31', 'Active', 2018, 500, 1900, 1100, 400, 1900, 700, 1600, 1500, 800, 2000, 1600, 2000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (61, '2018-01-01', '2019-12-31', 'Active', 2019, 2000, 500, 1600, 500, 900, 1900, 200, 600, 600, 1100, 600, 1100)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (62, '2018-01-01', '2019-12-31', 'Forecast', 2018, 800, 1500, 2000, 1500, 900, 300, 2000, 1900, 1700, 200, 1600, 1100)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (62, '2018-01-01', '2019-12-31', 'Forecast', 2019, 1600, 1000, 1600, 1000, 1900, 900, 500, 600, 400, 200, 1700, 800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (63, '2019-01-01', '2020-12-31', 'Inactive', 2019, 1400, 2000, 1300, 1700, 300, 300, 600, 500, 400, 400, 1700, 1700)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (63, '2019-01-01', '2020-12-31', 'Inactive', 2020, 1500, 800, 1400, 300, 1800, 1800, 1100, 1600, 900, 1600, 1200, 1500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (64, '2019-01-01', '2020-12-31', 'Forecast', 2019, 1400, 1200, 1700, 500, 400, 400, 1700, 1300, 500, 900, 900, 1400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (64, '2019-01-01', '2020-12-31', 'Forecast', 2020, 800, 700, 600, 1800, 200, 1900,
500, 1100, 200, 2000, 200, 200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (65, '2020-01-01', '2021-12-31', 'Forecast', 2020, 500, 1400, 1000, 700, 1900, 800, 1500, 200, 700, 1000, 1200, 1900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (65, '2020-01-01', '2021-12-31', 'Forecast', 2021, 800, 800, 1300, 400, 1700, 1000, 700, 1800, 1400, 800, 700, 1000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (66, '2020-01-01', '2021-12-31', 'Forecast', 2020, 600, 1700, 700, 1300, 1000, 200, 500, 400, 600, 500, 700, 300)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (66, '2020-01-01', '2021-12-31', 'Forecast', 2021, 1000, 1200, 1400, 1600, 700, 1000, 1300, 1000, 1100, 1500, 1800, 1900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (67, '2018-01-01', '2019-12-31', 'Inactive', 2018, 1300, 700, 500, 900, 1300, 500,
600, 1400, 1600, 1000, 2000, 600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (67, '2018-01-01', '2019-12-31', 'Inactive', 2019, 1000, 600, 1400, 1400, 1200, 300, 2000, 1500, 900, 900, 600, 1800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (68, '2018-01-01', '2019-12-31', 'Forecast', 2018, 600, 700, 800, 1200, 700, 700, 1500, 200, 1000, 400, 1300, 900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (68, '2018-01-01', '2019-12-31', 'Forecast', 2019, 1100, 1100, 2000, 1100, 800, 1600, 900, 400, 1200, 300, 300, 2000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (69, '2018-01-01', '2019-12-31', 'Active', 2018, 1000, 1200, 1500, 1100, 1900, 900, 300, 1100, 1700, 1800, 900, 1600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (69, '2018-01-01', '2019-12-31', 'Active', 2019, 900, 400, 1400, 1200, 1800, 1200,
200, 1500, 600, 300, 400, 1400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (70, '2020-01-01', '2021-12-31', 'Forecast', 2020, 500, 300, 1400, 700, 900, 800, 400, 900, 1100, 1300, 1800, 1700)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (70, '2020-01-01', '2021-12-31', 'Forecast', 2021, 800, 800, 1300, 300, 1100, 1200, 400, 500, 2000, 900, 1900, 600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (71, '2020-01-01', '2021-12-31', 'Inactive', 2020, 700, 1400, 1000, 1700, 700, 1900, 500, 600, 1000, 1200, 1100, 1100)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (71, '2020-01-01', '2021-12-31', 'Inactive', 2021, 1700, 200, 900, 1100, 1400, 600, 1500, 1900, 400, 1100, 1900, 2000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (72, '2020-01-01', '2021-12-31', 'Inactive', 2020, 1300, 1600, 2000, 2000, 1400, 700, 300, 1200, 1600, 600, 900, 1900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (72, '2020-01-01', '2021-12-31', 'Inactive', 2021, 1700, 900, 1500, 2000, 1400, 1400, 200, 1800, 800, 900, 1500, 2000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (73, '2020-01-01', '2021-12-31', 'Active', 2020, 400, 1300, 800, 1000, 1500, 1600,
1100, 800, 1400, 1200, 1200, 1000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (73, '2020-01-01', '2021-12-31', 'Active', 2021, 200, 200, 500, 800, 900, 1100, 1100, 300, 1900, 600, 300, 900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (74, '2018-01-01', '2019-12-31', 'Forecast', 2018, 200, 1800, 600, 800, 500, 2000,
500, 800, 1500, 1700, 1000, 1600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (74, '2018-01-01', '2019-12-31', 'Forecast', 2019, 1600, 1800, 1600, 1100, 1300, 1300, 1200, 700, 800, 200, 1500, 200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (75, '2019-01-01', '2020-12-31', 'Inactive', 2019, 600, 200, 900, 1800, 2000, 1500, 1600, 900, 800, 1100, 600, 1500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (75, '2019-01-01', '2020-12-31', 'Inactive', 2020, 1600, 1400, 500, 1100, 800, 800, 1400, 900, 1700, 800, 1000, 1500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (76, '2018-01-01', '2019-12-31', 'Forecast', 2018, 1900, 1900, 200, 1300, 200, 2000, 300, 1900, 900, 800, 1300, 1000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (76, '2018-01-01', '2019-12-31', 'Forecast', 2019, 1600, 2000, 1700, 1600, 800, 1400, 1800, 1800, 1700, 300, 1100, 1600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (77, '2019-01-01', '2020-12-31', 'Active', 2019, 900, 800, 1100, 1700, 1000, 300, 400, 1800, 400, 600, 800, 1500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (77, '2019-01-01', '2020-12-31', 'Active', 2020, 1000, 1800, 1500, 1900, 1000, 900, 1400, 800, 1700, 200, 900, 1100)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (78, '2020-01-01', '2021-12-31', 'Active', 2020, 300, 1700, 1500, 1000, 2000, 900,
1000, 400, 1400, 700, 600, 1100)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (78, '2020-01-01', '2021-12-31', 'Active', 2021, 1400, 2000, 1200, 1500, 1400, 200, 1200, 900, 600, 900, 800, 1400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (79, '2020-01-01', '2021-12-31', 'Inactive', 2020, 1100, 1000, 1900, 1900, 500, 400, 1800, 800, 1400, 1000, 300, 1100)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (79, '2020-01-01', '2021-12-31', 'Inactive', 2021, 1600, 1100, 2000, 700, 600, 600, 1100, 1600, 200, 1800, 500, 500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (80, '2018-01-01', '2019-12-31', 'Inactive', 2018, 1900, 500, 200, 200, 2000, 1000, 1700, 600, 1700, 1700, 1000, 1600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (80, '2018-01-01', '2019-12-31', 'Inactive', 2019, 200, 200, 1400, 200, 500, 500, 600, 500, 1400, 1900, 600, 600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (81, '2020-01-01', '2021-12-31', 'Forecast', 2020, 500, 500, 1600, 2000, 700, 300,
200, 400, 1100, 2000, 900, 1800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (81, '2020-01-01', '2021-12-31', 'Forecast', 2021, 1800, 2000, 700, 1600, 1500, 900, 900, 1600, 2000, 1100, 900, 2000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (82, '2018-01-01', '2019-12-31', 'Active', 2018, 1900, 300, 700, 2000, 300, 600, 500, 1300, 1800, 1600, 1100, 200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (82, '2018-01-01', '2019-12-31', 'Active', 2019, 400, 1600, 800, 1500, 400, 400, 1900, 1200, 200, 1500, 1800, 1600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (83, '2018-01-01', '2019-12-31', 'Forecast', 2018, 200, 1200, 600, 900, 1200, 1600, 200, 900, 200, 500, 500, 1600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (83, '2018-01-01', '2019-12-31', 'Forecast', 2019, 700, 1400, 1500, 800, 800, 1100, 1500, 2000, 1500, 1000, 1300, 1600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (84, '2019-01-01', '2020-12-31', 'Active', 2019, 1600, 1700, 1500, 1100, 1100, 1800, 300, 800, 1900, 700, 900, 1900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (84, '2019-01-01', '2020-12-31', 'Active', 2020, 1400, 500, 800, 400, 1900, 1800, 200, 1600, 1900, 1600, 1800, 1000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (85, '2019-01-01', '2020-12-31', 'Active', 2019, 1800, 1400, 300, 700, 1600, 1200,
800, 1400, 900, 500, 1600, 1100)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (85, '2019-01-01', '2020-12-31', 'Active', 2020, 600, 1700, 1800, 300, 2000, 600, 1700, 1100, 800, 500, 1600, 1300)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (86, '2018-01-01', '2019-12-31', 'Inactive', 2018, 200, 1700, 1600, 900, 800, 900,
700, 200, 700, 900, 600, 1300)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (86, '2018-01-01', '2019-12-31', 'Inactive', 2019, 1400, 900, 800, 1000, 1100, 1600, 1400, 500, 1900, 1400, 600, 1300)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (87, '2018-01-01', '2019-12-31', 'Inactive', 2018, 1100, 2000, 900, 700, 1300, 800, 1200, 300, 1800, 1500, 1100, 1200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (87, '2018-01-01', '2019-12-31', 'Inactive', 2019, 700, 1100, 500, 600, 200, 500, 200, 1100, 1700, 800, 1200, 1900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (88, '2018-01-01', '2019-12-31', 'Forecast', 2018, 400, 600, 1300, 1900, 1400, 400, 300, 600, 1500, 1700, 600, 600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (88, '2018-01-01', '2019-12-31', 'Forecast', 2019, 800, 700, 1700, 500, 900, 1400,
1800, 1500, 1700, 1600, 2000, 700)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (89, '2019-01-01', '2020-12-31', 'Active', 2019, 1200, 1400, 1900, 1200, 300, 1900, 1300, 600, 1900, 1700, 1100, 1400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (89, '2019-01-01', '2020-12-31', 'Active', 2020, 800, 700, 200, 400, 400, 600, 1900, 500, 500, 300, 800, 1500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (90, '2018-01-01', '2019-12-31', 'Active', 2018, 1800, 1100, 1100, 200, 600, 1800,
2000, 2000, 1300, 1300, 1300, 1100)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (90, '2018-01-01', '2019-12-31', 'Active', 2019, 900, 1800, 1500, 700, 200, 900, 500, 700, 500, 1900, 900, 1900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (91, '2018-01-01', '2019-12-31', 'Active', 2018, 1100, 1700, 1400, 1400, 1000, 900, 1200, 1200, 1600, 1100, 1300, 1800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (91, '2018-01-01', '2019-12-31', 'Active', 2019, 1900, 1600, 1900, 1000, 400, 1900, 600, 1600, 1400, 700, 600, 200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (92, '2020-01-01', '2021-12-31', 'Active', 2020, 1000, 2000, 600, 1500, 1900, 800,
1400, 1300, 700, 1900, 400, 200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (92, '2020-01-01', '2021-12-31', 'Active', 2021, 1800, 1600, 400, 1000, 1700, 500,
400, 1700, 1200, 600, 900, 1500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (93, '2019-01-01', '2020-12-31', 'Active', 2019, 200, 1000, 500, 1100, 600, 700, 400, 500, 1100, 1800, 900, 300)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (93, '2019-01-01', '2020-12-31', 'Active', 2020, 1200, 1900, 1400, 200, 300, 900, 900, 2000, 600, 600, 1900, 500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (94, '2020-01-01', '2021-12-31', 'Inactive', 2020, 300, 2000, 2000, 1600, 600, 1600, 1600, 700, 1400, 1900, 400, 1700)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (94, '2020-01-01', '2021-12-31', 'Inactive', 2021, 700, 400, 900, 700, 700, 2000, 1900, 300, 400, 1600, 1900, 500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (95, '2020-01-01', '2021-12-31', 'Active', 2020, 1600, 700, 800, 800, 1700, 500, 1700, 600, 600, 1700, 400, 900)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (95, '2020-01-01', '2021-12-31', 'Active', 2021, 1700, 500, 1000, 1300, 1300, 1200, 1500, 1000, 500, 900, 500, 800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (96, '2019-01-01', '2020-12-31', 'Active', 2019, 300, 500, 400, 900, 1200, 1700, 1000, 1400, 1700, 1400, 1900, 600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (96, '2019-01-01', '2020-12-31', 'Active', 2020, 1500, 800, 400, 1600, 400, 2000, 1400, 1600, 1000, 600, 900, 1500)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (97, '2019-01-01', '2020-12-31', 'Inactive', 2019, 1500, 1300, 800, 1400, 700, 1600, 300, 1700, 500, 1500, 200, 400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (97, '2019-01-01', '2020-12-31', 'Inactive', 2020, 2000, 1100, 1800, 1100, 900, 1400, 400, 600, 1300, 1700, 1100, 1600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (98, '2018-01-01', '2019-12-31', 'Forecast', 2018, 1900, 700, 1800, 1200, 1200, 500, 1800, 200, 1300, 2000, 1900, 400)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (98, '2018-01-01', '2019-12-31', 'Forecast', 2019, 1200, 1100, 1500, 1000, 1200, 800, 700, 200, 1600, 1300, 1100, 200)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (99, '2019-01-01', '2020-12-31', 'Forecast', 2019, 1300, 200, 600, 800, 600, 1200,
1000, 600, 500, 1500, 2000, 800)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (99, '2019-01-01', '2020-12-31', 'Forecast', 2020, 2000, 500, 300, 1200, 1200, 1000, 1600, 200, 700, 1700, 1800, 1000)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (100, '2020-01-01', '2021-12-31', 'Active', 2020, 700, 1100, 800, 1500, 1700, 1800, 1700, 2000, 1400, 900, 200, 600)
Insert into ProjectStatus (Id, FromDate, ToDate, [Status], [Year], Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) values (100, '2020-01-01', '2021-12-31', 'Active', 2021, 1700, 1600, 700, 800, 300, 1700,
2000, 1500, 1600, 1500, 2000, 2000)

SET IDENTITY_INSERT [dbo].[Disciplines] ON
Insert into Disciplines (Id,[Name]) values (1,'Services');
Insert into Disciplines (Id,[Name]) values (2,'Delivery');
Insert into Disciplines (Id,[Name]) values (3,'Environmental Management');
Insert into Disciplines (Id,[Name]) values (4,'Natural Resources');
Insert into Disciplines (Id,[Name]) values (5,'Solid Waste');
Insert into Disciplines (Id,[Name]) values (6,'Energy');
Insert into Disciplines (Id,[Name]) values (8,'Landscape Architecture');
Insert into Disciplines (Id,[Name]) values (9,'Trenchless Technologies');
Insert into Disciplines (Id,[Name]) values (10,'Survey');
Insert into Disciplines (Id,[Name]) values (11,'Stormwater');
Insert into Disciplines (Id,[Name]) values (12,'Water Treatment');
Insert into Disciplines (Id,[Name]) values (13,'Water Resource Recovery');
Insert into Disciplines (Id,[Name]) values (14,'Building Mechanical');
Insert into Disciplines (Id,[Name]) values (15,'Electrical');
Insert into Disciplines (Id,[Name]) values (16,'Instrumentation & Controls');
Insert into Disciplines (Id,[Name]) values (18,'Airports');
Insert into Disciplines (Id,[Name]) values (19,'Roads, Highways, Paths');
Insert into Disciplines (Id,[Name]) values (20,'Pavements');
Insert into Disciplines (Id,[Name]) values (21,'Ports');
Insert into Disciplines (Id,[Name]) values (22,'Railway');
Insert into Disciplines (Id,[Name]) values (23,'Traffic Engineering');
Insert into Disciplines (Id,[Name]) values (24,'Transportation Planning');
Insert into Disciplines (Id,[Name]) values (25,'Transit');
Insert into Disciplines (Id,[Name]) values (26,'Software');
Insert into Disciplines (Id,[Name]) values (100,'Accounting');
Insert into Disciplines (Id,[Name]) values (101,'Administration');
Insert into Disciplines (Id,[Name]) values (102,'Community Planning');
Insert into Disciplines (Id,[Name]) values (103,'Human Resources');
Insert into Disciplines (Id,[Name]) values (104,'Information Management');
Insert into Disciplines (Id,[Name]) values (106,'Library');
Insert into Disciplines (Id,[Name]) values (107,'Marketing & Graphic Design');
Insert into Disciplines (Id,[Name]) values (108,'Memberships - Canadian');
Insert into Disciplines (Id,[Name]) values (109,'Memberships - International');
Insert into Disciplines (Id,[Name]) values (208,'Structural Elements & Analysis');
Insert into Disciplines (Id,[Name]) values (200,'Asset Management');
Insert into Disciplines (Id,[Name]) values (201,'Climate Change');
Insert into Disciplines (Id,[Name]) values (214,'Construction Techniques');
Insert into Disciplines (Id,[Name]) values (202,'Hydrogeology');
Insert into Disciplines (Id,[Name]) values (203,'Hydrology');
Insert into Disciplines (Id,[Name]) values (204,'Infrastructure');
Insert into Disciplines (Id,[Name]) values (205,'Material Design & Science');
Insert into Disciplines (Id,[Name]) values (206,'River Engineering');
Insert into Disciplines (Id,[Name]) values (209,'Structures-Bridges');
Insert into Disciplines (Id,[Name]) values (210,'Structures-Buildings');
Insert into Disciplines (Id,[Name]) values (211,'Structures-Civil & Hydraulic');
Insert into Disciplines (Id,[Name]) values (212,'Sustainable Design & Management');
Insert into Disciplines (Id,[Name]) values (213,'Watershed Management');
SET IDENTITY_INSERT [dbo].[Disciplines] OFF

SET IDENTITY_INSERT [dbo].[Skills] ON
Insert into Skills (DisciplineId,Id,[Name]) values (1,2,'Class Environmental Assessments');
Insert into Skills (DisciplineId,Id,[Name]) values (1,3,'Condition Assessments');
Insert into Skills (DisciplineId,Id,[Name]) values (1,4,'Commissioning');
Insert into Skills (DisciplineId,Id,[Name]) values (1,5,'Conceptual Design');
Insert into Skills (DisciplineId,Id,[Name]) values (1,6,'Construction Staging Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (1,7,'Constructability Reviews');
Insert into Skills (DisciplineId,Id,[Name]) values (1,8,'Contract Administration');
Insert into Skills (DisciplineId,Id,[Name]) values (1,9,'Contract Documents & Specifications');
Insert into Skills (DisciplineId,Id,[Name]) values (1,10,'Cost Estimating');
Insert into Skills (DisciplineId,Id,[Name]) values (1,11,'Detailed Design');
Insert into Skills (DisciplineId,Id,[Name]) values (1,12,'Environmental Assessments');
Insert into Skills (DisciplineId,Id,[Name]) values (1,14,'Facilitation');
Insert into Skills (DisciplineId,Id,[Name]) values (1,15,'Functional Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (1,16,'Inspection');
Insert into Skills (DisciplineId,Id,[Name]) values (1,17,'Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (1,18,'Project Management');
Insert into Skills (DisciplineId,Id,[Name]) values (1,19,'Preliminary Design');
Insert into Skills (DisciplineId,Id,[Name]) values (1,20,'Public Outreach/Consultation');
Insert into Skills (DisciplineId,Id,[Name]) values (1,21,'Quality Management');
Insert into Skills (DisciplineId,Id,[Name]) values (1,22,'Risk Management');
Insert into Skills (DisciplineId,Id,[Name]) values (1,23,'Route Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (1,24,'Strategic Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (1,25,'Tendering');
Insert into Skills (DisciplineId,Id,[Name]) values (1,26,'Testing');
Insert into Skills (DisciplineId,Id,[Name]) values (1,27,'Triple Bottom Line Assessments');
Insert into Skills (DisciplineId,Id,[Name]) values (1,28,'Value Engineering');
Insert into Skills (DisciplineId,Id,[Name]) values (2,1,'Design-Build');
Insert into Skills (DisciplineId,Id,[Name]) values (2,2,'Design-Bid-Build');
Insert into Skills (DisciplineId,Id,[Name]) values (2,3,'Design-Build-Finance-Operate');
Insert into Skills (DisciplineId,Id,[Name]) values (2,4,'Owner''s Engineer');
Insert into Skills (DisciplineId,Id,[Name]) values (2,5,'Program Management');
Insert into Skills (DisciplineId,Id,[Name]) values (2,6,'Public Private Partnership (P3)');
Insert into Skills (DisciplineId,Id,[Name]) values (3,1,'Audits');
Insert into Skills (DisciplineId,Id,[Name]) values (3,2,'Contaminated Site Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (3,3,'EMS');
Insert into Skills (DisciplineId,Id,[Name]) values (3,4,'Fish & Wildlife');
Insert into Skills (DisciplineId,Id,[Name]) values (3,6,'Policy & Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (3,7,'Remediation');
Insert into Skills (DisciplineId,Id,[Name]) values (3,8,'Soil Conservation/Erosion Control');
Insert into Skills (DisciplineId,Id,[Name]) values (3,9,'Terrain Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (4,1,'Biological Surveys');
Insert into Skills (DisciplineId,Id,[Name]) values (4,2,'Forestry');
Insert into Skills (DisciplineId,Id,[Name]) values (4,3,'Roads');
Insert into Skills (DisciplineId,Id,[Name]) values (4,4,'Soils Reclamation');
Insert into Skills (DisciplineId,Id,[Name]) values (5,1,'Aerated Static Piles');
Insert into Skills (DisciplineId,Id,[Name]) values (5,2,'Composting');
Insert into Skills (DisciplineId,Id,[Name]) values (5,3,'Groundwater Monitoring');
Insert into Skills (DisciplineId,Id,[Name]) values (5,4,'In-Vessel');
Insert into Skills (DisciplineId,Id,[Name]) values (5,5,'Landfill Closure Plan');
Insert into Skills (DisciplineId,Id,[Name]) values (5,6,'Landfill Siting');
Insert into Skills (DisciplineId,Id,[Name]) values (5,7,'Landfills');
Insert into Skills (DisciplineId,Id,[Name]) values (5,8,'Leachate Control');
Insert into Skills (DisciplineId,Id,[Name]) values (5,9,'Leachate Treatment');
Insert into Skills (DisciplineId,Id,[Name]) values (5,10,'Recycling');
Insert into Skills (DisciplineId,Id,[Name]) values (5,11,'Solid Waste Characterization');
Insert into Skills (DisciplineId,Id,[Name]) values (5,12,'Solid Waste Management Plan');
Insert into Skills (DisciplineId,Id,[Name]) values (5,13,'Transfer Stations');
Insert into Skills (DisciplineId,Id,[Name]) values (5,14,'Windrows');
Insert into Skills (DisciplineId,Id,[Name]) values (6,1,'Energy Audit');
Insert into Skills (DisciplineId,Id,[Name]) values (6,2,'Coal');
Insert into Skills (DisciplineId,Id,[Name]) values (6,3,'Energy Conservation');
Insert into Skills (DisciplineId,Id,[Name]) values (6,4,'Geothermal');
Insert into Skills (DisciplineId,Id,[Name]) values (6,5,'Hydropower');
Insert into Skills (DisciplineId,Id,[Name]) values (6,6,'Land Reclamation');
Insert into Skills (DisciplineId,Id,[Name]) values (6,7,'Oil & Gas');
Insert into Skills (DisciplineId,Id,[Name]) values (6,8,'Solar');
Insert into Skills (DisciplineId,Id,[Name]) values (6,9,'Wind');
Insert into Skills (DisciplineId,Id,[Name]) values (8,1,'Master Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (8,5,'Erosion & Sediment Control');
Insert into Skills (DisciplineId,Id,[Name]) values (9,3,'Pipe Bursting');
Insert into Skills (DisciplineId,Id,[Name]) values (9,4,'Pipe Jacking');
Insert into Skills (DisciplineId,Id,[Name]) values (9,5,'Sliplining');
Insert into Skills (DisciplineId,Id,[Name]) values (10,1,'Construction Layout');
Insert into Skills (DisciplineId,Id,[Name]) values (10,2,'Global Positioning System (GPS)');
Insert into Skills (DisciplineId,Id,[Name]) values (10,3,'Topographic');
Insert into Skills (DisciplineId,Id,[Name]) values (11,1,'Airport Drainage');
Insert into Skills (DisciplineId,Id,[Name]) values (11,4,'Bridge Hydraulics');
Insert into Skills (DisciplineId,Id,[Name]) values (11,19,'Low Impact Development/Source Controls');
Insert into Skills (DisciplineId,Id,[Name]) values (12,1,'Advanced Oxidation');
Insert into Skills (DisciplineId,Id,[Name]) values (12,2,'Ballasted Flocculation');
Insert into Skills (DisciplineId,Id,[Name]) values (12,3,'Biological');
Insert into Skills (DisciplineId,Id,[Name]) values (12,4,'Chemical Feed');
Insert into Skills (DisciplineId,Id,[Name]) values (12,5,'Chloramination');
Insert into Skills (DisciplineId,Id,[Name]) values (12,6,'Chlorination');
Insert into Skills (DisciplineId,Id,[Name]) values (12,7,'Chlorine Dioxide');
Insert into Skills (DisciplineId,Id,[Name]) values (12,8,'Clarification');
Insert into Skills (DisciplineId,Id,[Name]) values (12,9,'Clearwells');
Insert into Skills (DisciplineId,Id,[Name]) values (12,10,'Coagulation');
Insert into Skills (DisciplineId,Id,[Name]) values (12,11,'Computational Fluid Dynamics');
Insert into Skills (DisciplineId,Id,[Name]) values (12,12,'Corrosion Control');
Insert into Skills (DisciplineId,Id,[Name]) values (12,13,'Dechlorination');
Insert into Skills (DisciplineId,Id,[Name]) values (12,14,'Direct Filtration');
Insert into Skills (DisciplineId,Id,[Name]) values (12,15,'Disinfection');
Insert into Skills (DisciplineId,Id,[Name]) values (12,16,'Dissolved Air Flotation');
Insert into Skills (DisciplineId,Id,[Name]) values (12,18,'Filtration');
Insert into Skills (DisciplineId,Id,[Name]) values (12,19,'Flocculation');
Insert into Skills (DisciplineId,Id,[Name]) values (12,20,'Fluoridation');
Insert into Skills (DisciplineId,Id,[Name]) values (12,22,'Granular Media Filtration');
Insert into Skills (DisciplineId,Id,[Name]) values (12,26,'Groundwater Treatment');
Insert into Skills (DisciplineId,Id,[Name]) values (12,27,'In Situ Filtration');
Insert into Skills (DisciplineId,Id,[Name]) values (12,28,'Intakes');
Insert into Skills (DisciplineId,Id,[Name]) values (12,29,'Laboratory');
Insert into Skills (DisciplineId,Id,[Name]) values (12,30,'Master Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (12,31,'Membranes');
Insert into Skills (DisciplineId,Id,[Name]) values (12,32,'Micro/Ultrafiltration');
Insert into Skills (DisciplineId,Id,[Name]) values (12,33,'Nanofiltration/Reverse Osmosis');
Insert into Skills (DisciplineId,Id,[Name]) values (12,35,'Optimization');
Insert into Skills (DisciplineId,Id,[Name]) values (12,36,'Ozonation');
Insert into Skills (DisciplineId,Id,[Name]) values (12,37,'Package Plants');
Insert into Skills (DisciplineId,Id,[Name]) values (12,38,'pH Control');
Insert into Skills (DisciplineId,Id,[Name]) values (12,39,'Pilot Testing');
Insert into Skills (DisciplineId,Id,[Name]) values (12,40,'Plant Assessment/Audit');
Insert into Skills (DisciplineId,Id,[Name]) values (12,41,'Pressure Reducing Valves');
Insert into Skills (DisciplineId,Id,[Name]) values (12,42,'Pretreatment');
Insert into Skills (DisciplineId,Id,[Name]) values (12,43,'Pump Stations');
Insert into Skills (DisciplineId,Id,[Name]) values (12,44,'Rapid Mix');
Insert into Skills (DisciplineId,Id,[Name]) values (12,46,'Residuals Management');
Insert into Skills (DisciplineId,Id,[Name]) values (12,47,'Residuals Treatment');
Insert into Skills (DisciplineId,Id,[Name]) values (12,48,'Screening');
Insert into Skills (DisciplineId,Id,[Name]) values (12,49,'Siphons');
Insert into Skills (DisciplineId,Id,[Name]) values (12,50,'Slow Sand Filtration');
Insert into Skills (DisciplineId,Id,[Name]) values (12,51,'Sodium Hypochlorite Generation');
Insert into Skills (DisciplineId,Id,[Name]) values (12,53,'Taste & Odour Control');
Insert into Skills (DisciplineId,Id,[Name]) values (12,57,'Water Treatment');
Insert into Skills (DisciplineId,Id,[Name]) values (12,58,'Ultraviolet Disinfection');
Insert into Skills (DisciplineId,Id,[Name]) values (12,59,'Valve Chambers');
Insert into Skills (DisciplineId,Id,[Name]) values (13,1,'Activated Sludge');
Insert into Skills (DisciplineId,Id,[Name]) values (13,2,'Aerobic');
Insert into Skills (DisciplineId,Id,[Name]) values (13,3,'Anaerobic');
Insert into Skills (DisciplineId,Id,[Name]) values (13,4,'Anoxic');
Insert into Skills (DisciplineId,Id,[Name]) values (13,5,'Biogas');
Insert into Skills (DisciplineId,Id,[Name]) values (13,6,'Biological Aerated Filters');
Insert into Skills (DisciplineId,Id,[Name]) values (13,7,'Biological Nutrient Removal');
Insert into Skills (DisciplineId,Id,[Name]) values (13,8,'Biosolids');
Insert into Skills (DisciplineId,Id,[Name]) values (13,9,'Biosolids Management');
Insert into Skills (DisciplineId,Id,[Name]) values (13,11,'Centrifuges');
Insert into Skills (DisciplineId,Id,[Name]) values (13,12,'Characterization Programs');
Insert into Skills (DisciplineId,Id,[Name]) values (13,13,'Chemically Enhanced Primary Treatment');
Insert into Skills (DisciplineId,Id,[Name]) values (13,16,'Composting');
Insert into Skills (DisciplineId,Id,[Name]) values (13,17,'Computational Fluid Dynamics');
Insert into Skills (DisciplineId,Id,[Name]) values (13,18,'Dewatering');
Insert into Skills (DisciplineId,Id,[Name]) values (13,19,'Digesters');
Insert into Skills (DisciplineId,Id,[Name]) values (13,20,'Disposal');
Insert into Skills (DisciplineId,Id,[Name]) values (13,21,'Dissolved Air Flotation');
Insert into Skills (DisciplineId,Id,[Name]) values (13,22,'Effluent Irrigation');
Insert into Skills (DisciplineId,Id,[Name]) values (13,23,'Effluent Plume Modelling & Monitoring');
Insert into Skills (DisciplineId,Id,[Name]) values (13,24,'Filtration');
Insert into Skills (DisciplineId,Id,[Name]) values (13,26,'Ground Discharge');
Insert into Skills (DisciplineId,Id,[Name]) values (13,28,'Lagoon');
Insert into Skills (DisciplineId,Id,[Name]) values (13,29,'Leachate Treatment/Collection');
Insert into Skills (DisciplineId,Id,[Name]) values (13,30,'Liquid Waste Management Plan');
Insert into Skills (DisciplineId,Id,[Name]) values (13,31,'Membrane Bioreactors');
Insert into Skills (DisciplineId,Id,[Name]) values (13,32,'Modelling');
Insert into Skills (DisciplineId,Id,[Name]) values (13,33,'Odour Control');
Insert into Skills (DisciplineId,Id,[Name]) values (13,34,'Outfall');
Insert into Skills (DisciplineId,Id,[Name]) values (13,35,'Oxidation Ditches');
Insert into Skills (DisciplineId,Id,[Name]) values (13,36,'Package Plants');
Insert into Skills (DisciplineId,Id,[Name]) values (13,37,'Pilot Testing');
Insert into Skills (DisciplineId,Id,[Name]) values (13,38,'Plant Assessment/Audit');
Insert into Skills (DisciplineId,Id,[Name]) values (13,39,'Pump Stations');
Insert into Skills (DisciplineId,Id,[Name]) values (13,40,'Rapid Infiltration');
Insert into Skills (DisciplineId,Id,[Name]) values (13,41,'Resource Recovery Evaluations');
Insert into Skills (DisciplineId,Id,[Name]) values (13,42,'Rotating Biological Contactors');
Insert into Skills (DisciplineId,Id,[Name]) values (13,43,'Septage');
Insert into Skills (DisciplineId,Id,[Name]) values (13,44,'Sequencing Batch Reactors');
Insert into Skills (DisciplineId,Id,[Name]) values (13,45,'Sequential Bioreactor');
Insert into Skills (DisciplineId,Id,[Name]) values (13,46,'Siphon');
Insert into Skills (DisciplineId,Id,[Name]) values (13,47,'Stress Testing Programs');
Insert into Skills (DisciplineId,Id,[Name]) values (13,48,'Storage');
Insert into Skills (DisciplineId,Id,[Name]) values (13,49,'Surface Discharge');
Insert into Skills (DisciplineId,Id,[Name]) values (13,50,'Thickening');
Insert into Skills (DisciplineId,Id,[Name]) values (13,51,'Wastewater Treatment');
Insert into Skills (DisciplineId,Id,[Name]) values (13,52,'Treatment Process Simulation');
Insert into Skills (DisciplineId,Id,[Name]) values (13,53,'Trickling Filters/Solids Contact');
Insert into Skills (DisciplineId,Id,[Name]) values (13,54,'Ultraviolet Disinfection');
Insert into Skills (DisciplineId,Id,[Name]) values (13,55,'Vortex Separation');
Insert into Skills (DisciplineId,Id,[Name]) values (13,56,'Wetlands');
Insert into Skills (DisciplineId,Id,[Name]) values (14,1,'Acoustics');
Insert into Skills (DisciplineId,Id,[Name]) values (14,2,'Air Conditioning');
Insert into Skills (DisciplineId,Id,[Name]) values (14,3,'Chlorine');
Insert into Skills (DisciplineId,Id,[Name]) values (14,4,'Energy Audits');
Insert into Skills (DisciplineId,Id,[Name]) values (14,5,'Fire Protection');
Insert into Skills (DisciplineId,Id,[Name]) values (14,6,'Geothermal Systems');
Insert into Skills (DisciplineId,Id,[Name]) values (14,7,'Heat Pumps');
Insert into Skills (DisciplineId,Id,[Name]) values (14,8,'Heating');
Insert into Skills (DisciplineId,Id,[Name]) values (14,9,'Humidity Control');
Insert into Skills (DisciplineId,Id,[Name]) values (14,10,'Ozone');
Insert into Skills (DisciplineId,Id,[Name]) values (14,11,'Piping');
Insert into Skills (DisciplineId,Id,[Name]) values (14,12,'Plumbing');
Insert into Skills (DisciplineId,Id,[Name]) values (14,13,'Ventilation');
Insert into Skills (DisciplineId,Id,[Name]) values (15,1,'Cogeneration');
Insert into Skills (DisciplineId,Id,[Name]) values (15,2,'Digital Bus');
Insert into Skills (DisciplineId,Id,[Name]) values (15,3,'Electrical');
Insert into Skills (DisciplineId,Id,[Name]) values (15,4,'Fibre Optic Cables');
Insert into Skills (DisciplineId,Id,[Name]) values (15,5,'Generators');
Insert into Skills (DisciplineId,Id,[Name]) values (15,6,'Hydro');
Insert into Skills (DisciplineId,Id,[Name]) values (15,7,'Instrument Landing System (ILS)');
Insert into Skills (DisciplineId,Id,[Name]) values (15,8,'Lighting');
Insert into Skills (DisciplineId,Id,[Name]) values (15,9,'Lighting Impact Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (15,10,'Main Service');
Insert into Skills (DisciplineId,Id,[Name]) values (15,11,'Medium Voltage');
Insert into Skills (DisciplineId,Id,[Name]) values (15,12,'Motor Control Centres');
Insert into Skills (DisciplineId,Id,[Name]) values (15,13,'Power Distribution');
Insert into Skills (DisciplineId,Id,[Name]) values (15,14,'Power Transmission');
Insert into Skills (DisciplineId,Id,[Name]) values (15,15,'Relay Protection');
Insert into Skills (DisciplineId,Id,[Name]) values (15,16,'Switchgear');
Insert into Skills (DisciplineId,Id,[Name]) values (15,17,'Traffic Signals');
Insert into Skills (DisciplineId,Id,[Name]) values (15,18,'Transformers');
Insert into Skills (DisciplineId,Id,[Name]) values (15,19,'Turbines');
Insert into Skills (DisciplineId,Id,[Name]) values (16,1,'Alarms');
Insert into Skills (DisciplineId,Id,[Name]) values (16,2,'Communication');
Insert into Skills (DisciplineId,Id,[Name]) values (16,3,'Fire Alarms');
Insert into Skills (DisciplineId,Id,[Name]) values (16,4,'HMI Programming');
Insert into Skills (DisciplineId,Id,[Name]) values (16,5,'Instrumentation & Controls');
Insert into Skills (DisciplineId,Id,[Name]) values (16,6,'PLC');
Insert into Skills (DisciplineId,Id,[Name]) values (16,7,'PLC Programming');
Insert into Skills (DisciplineId,Id,[Name]) values (16,8,'SCADA');
Insert into Skills (DisciplineId,Id,[Name]) values (16,9,'Security');
Insert into Skills (DisciplineId,Id,[Name]) values (16,10,'Telemetry');
Insert into Skills (DisciplineId,Id,[Name]) values (16,11,'VFD');
Insert into Skills (DisciplineId,Id,[Name]) values (16,12,'Wireless');
Insert into Skills (DisciplineId,Id,[Name]) values (18,1,'Airfield Electrical Systems & Controls');
Insert into Skills (DisciplineId,Id,[Name]) values (18,2,'Airport Operation Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (18,3,'Aprons');
Insert into Skills (DisciplineId,Id,[Name]) values (18,4,'Navigational Aids');
Insert into Skills (DisciplineId,Id,[Name]) values (18,5,'Obstruction & Hazard Lighting');
Insert into Skills (DisciplineId,Id,[Name]) values (18,6,'Omni Directional Approach Lights (ODAL)');
Insert into Skills (DisciplineId,Id,[Name]) values (18,7,'Precision Approach Path Indicator (PAPI)');
Insert into Skills (DisciplineId,Id,[Name]) values (18,8,'Runways');
Insert into Skills (DisciplineId,Id,[Name]) values (18,9,'Taxiways');
Insert into Skills (DisciplineId,Id,[Name]) values (19,1,'Bridge Approaches');
Insert into Skills (DisciplineId,Id,[Name]) values (19,3,'Interchanges');
Insert into Skills (DisciplineId,Id,[Name]) values (19,4,'Intersections');
Insert into Skills (DisciplineId,Id,[Name]) values (19,5,'Property Acquisition');
Insert into Skills (DisciplineId,Id,[Name]) values (19,6,'Recreational/Bicycle Paths');
Insert into Skills (DisciplineId,Id,[Name]) values (19,7,'Roundabouts');
Insert into Skills (DisciplineId,Id,[Name]) values (19,8,'Roads-Rural');
Insert into Skills (DisciplineId,Id,[Name]) values (19,10,'Roads-Urban');
Insert into Skills (DisciplineId,Id,[Name]) values (20,1,'Asphalt');
Insert into Skills (DisciplineId,Id,[Name]) values (20,2,'Hot-in-Place Recycled Asphalt');
Insert into Skills (DisciplineId,Id,[Name]) values (20,3,'Pavements');
Insert into Skills (DisciplineId,Id,[Name]) values (20,4,'Portland Cement Concrete');
Insert into Skills (DisciplineId,Id,[Name]) values (21,1,'Break Bulk Terminals');
Insert into Skills (DisciplineId,Id,[Name]) values (21,2,'Bulk Terminals');
Insert into Skills (DisciplineId,Id,[Name]) values (21,3,'Container Terminals');
Insert into Skills (DisciplineId,Id,[Name]) values (21,4,'Intermodal Facilities');
Insert into Skills (DisciplineId,Id,[Name]) values (21,5,'Marine Ports');
Insert into Skills (DisciplineId,Id,[Name]) values (22,1,'Railways');
Insert into Skills (DisciplineId,Id,[Name]) values (23,1,'Capacity Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (23,2,'Collision Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (23,3,'Corridor Studies');
Insert into Skills (DisciplineId,Id,[Name]) values (23,4,'Data Collection (Counts, ATR, Speed Studies)');
Insert into Skills (DisciplineId,Id,[Name]) values (23,5,'Expert Testimony');
Insert into Skills (DisciplineId,Id,[Name]) values (23,6,'Micro-Simulations');
Insert into Skills (DisciplineId,Id,[Name]) values (23,7,'Neighbourhood Traffic Management');
Insert into Skills (DisciplineId,Id,[Name]) values (23,8,'Parking Studies & Policies');
Insert into Skills (DisciplineId,Id,[Name]) values (23,9,'Pedestrian & Bicycle Safety');
Insert into Skills (DisciplineId,Id,[Name]) values (23,10,'Safety Audits');
Insert into Skills (DisciplineId,Id,[Name]) values (23,11,'Traffic Accommodation Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (23,12,'Traffic Bylaw Reviews');
Insert into Skills (DisciplineId,Id,[Name]) values (23,13,'Traffic Data Management');
Insert into Skills (DisciplineId,Id,[Name]) values (23,14,'Traffic Impact Assessments');
Insert into Skills (DisciplineId,Id,[Name]) values (23,15,'Traffic Signal Programming & Design');
Insert into Skills (DisciplineId,Id,[Name]) values (23,16,'Traffic Signing');
Insert into Skills (DisciplineId,Id,[Name]) values (24,1,'Access Management');
Insert into Skills (DisciplineId,Id,[Name]) values (24,2,'Area Structure Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (24,3,'Context Sensitive Design');
Insert into Skills (DisciplineId,Id,[Name]) values (24,4,'Land Use Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (24,5,'Neighbourhood Street Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (24,6,'Pedestrian & Bike Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (24,7,'Secondary Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (24,8,'Sustainable Transportation');
Insert into Skills (DisciplineId,Id,[Name]) values (24,9,'TOD');
Insert into Skills (DisciplineId,Id,[Name]) values (24,10,'Traffic Demand Management (TDM)');
Insert into Skills (DisciplineId,Id,[Name]) values (24,11,'Transit Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (24,12,'Transportation Investment Strategies');
Insert into Skills (DisciplineId,Id,[Name]) values (24,13,'Transportation Master Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (24,14,'Transportation Policy Review & Development');
Insert into Skills (DisciplineId,Id,[Name]) values (24,15,'Transportation Standards Review');
Insert into Skills (DisciplineId,Id,[Name]) values (24,16,'Transportation Survey');
Insert into Skills (DisciplineId,Id,[Name]) values (24,17,'Travel Demand Forecasting');
Insert into Skills (DisciplineId,Id,[Name]) values (24,18,'Travel Demand Modelling');
Insert into Skills (DisciplineId,Id,[Name]) values (24,19,'Truck Route Studies');
Insert into Skills (DisciplineId,Id,[Name]) values (24,20,'Urban Corridor Revitalization');
Insert into Skills (DisciplineId,Id,[Name]) values (25,1,'Accessibility Acts');
Insert into Skills (DisciplineId,Id,[Name]) values (25,2,'Accessibility Plans & Review');
Insert into Skills (DisciplineId,Id,[Name]) values (25,3,'Automated Fare Collection Systems');
Insert into Skills (DisciplineId,Id,[Name]) values (25,4,'Automatic Train Control Systems');
Insert into Skills (DisciplineId,Id,[Name]) values (25,5,'BRT/LRT/HOV Planning & Design');
Insert into Skills (DisciplineId,Id,[Name]) values (25,6,'Centralized Management Systems');
Insert into Skills (DisciplineId,Id,[Name]) values (25,7,'Control Rooms');
Insert into Skills (DisciplineId,Id,[Name]) values (25,8,'Crew Scheduling Systems');
Insert into Skills (DisciplineId,Id,[Name]) values (25,9,'Infrastructure Planning/Design');
Insert into Skills (DisciplineId,Id,[Name]) values (25,10,'Intelligent Transportation Systems');
Insert into Skills (DisciplineId,Id,[Name]) values (25,11,'Operating Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (25,12,'Real Time Communications');
Insert into Skills (DisciplineId,Id,[Name]) values (25,13,'Roadway Lighting');
Insert into Skills (DisciplineId,Id,[Name]) values (25,14,'Route Studies');
Insert into Skills (DisciplineId,Id,[Name]) values (25,15,'SCADA');
Insert into Skills (DisciplineId,Id,[Name]) values (25,16,'Service & Operations Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (25,17,'Signalling & Controls');
Insert into Skills (DisciplineId,Id,[Name]) values (25,18,'Simulation & Training Systems');
Insert into Skills (DisciplineId,Id,[Name]) values (25,19,'Terminal & Facilities Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (25,20,'Transit Priority');
Insert into Skills (DisciplineId,Id,[Name]) values (25,21,'Transit Safety/Security');
Insert into Skills (DisciplineId,Id,[Name]) values (25,22,'Transit Standards Review');
Insert into Skills (DisciplineId,Id,[Name]) values (26,1,'AGI 32');
Insert into Skills (DisciplineId,Id,[Name]) values (26,2,'Allen Bradley');
Insert into Skills (DisciplineId,Id,[Name]) values (26,3,'ARCADY');
Insert into Skills (DisciplineId,Id,[Name]) values (26,4,'ArcGIS');
Insert into Skills (DisciplineId,Id,[Name]) values (26,5,'AutoCAD Map 3D');
Insert into Skills (DisciplineId,Id,[Name]) values (26,6,'AutoTURN');
Insert into Skills (DisciplineId,Id,[Name]) values (26,7,'AutoTURN Aircraft');
Insert into Skills (DisciplineId,Id,[Name]) values (26,8,'Bentley AutoPLANT');
Insert into Skills (DisciplineId,Id,[Name]) values (26,9,'BioWIN');
Insert into Skills (DisciplineId,Id,[Name]) values (26,10,'Buzzsaw');
Insert into Skills (DisciplineId,Id,[Name]) values (26,11,'CAiCE');
Insert into Skills (DisciplineId,Id,[Name]) values (26,12,'CFM');
Insert into Skills (DisciplineId,Id,[Name]) values (26,13,'Cimplicity');
Insert into Skills (DisciplineId,Id,[Name]) values (26,14,'Citect');
Insert into Skills (DisciplineId,Id,[Name]) values (26,15,'Civil 3D');
Insert into Skills (DisciplineId,Id,[Name]) values (26,16,'Civil Design');
Insert into Skills (DisciplineId,Id,[Name]) values (26,17,'CPF');
Insert into Skills (DisciplineId,Id,[Name]) values (26,18,'Criterium Decision Plus');
Insert into Skills (DisciplineId,Id,[Name]) values (26,19,'Cybernet');
Insert into Skills (DisciplineId,Id,[Name]) values (26,20,'DeltaV');
Insert into Skills (DisciplineId,Id,[Name]) values (26,21,'DHI Mouse');
Insert into Skills (DisciplineId,Id,[Name]) values (26,22,'DirectSoft');
Insert into Skills (DisciplineId,Id,[Name]) values (26,23,'Eaglepoint');
Insert into Skills (DisciplineId,Id,[Name]) values (26,24,'EMME');
Insert into Skills (DisciplineId,Id,[Name]) values (26,25,'EPA Plumes');
Insert into Skills (DisciplineId,Id,[Name]) values (26,26,'EPANET');
Insert into Skills (DisciplineId,Id,[Name]) values (26,27,'ETAP');
Insert into Skills (DisciplineId,Id,[Name]) values (26,28,'FLUENT');
Insert into Skills (DisciplineId,Id,[Name]) values (26,29,'GE Fanuc');
Insert into Skills (DisciplineId,Id,[Name]) values (26,30,'H2ONet');
Insert into Skills (DisciplineId,Id,[Name]) values (26,31,'HEC_RAS');
Insert into Skills (DisciplineId,Id,[Name]) values (26,33,'Highway Capacity Manual');
Insert into Skills (DisciplineId,Id,[Name]) values (26,34,'HYDSYS');
Insert into Skills (DisciplineId,Id,[Name]) values (26,35,'Intellution Fix');
Insert into Skills (DisciplineId,Id,[Name]) values (26,36,'Intellution IFix');
Insert into Skills (DisciplineId,Id,[Name]) values (26,37,'Land Development Desktop');
Insert into Skills (DisciplineId,Id,[Name]) values (26,38,'LookOut');
Insert into Skills (DisciplineId,Id,[Name]) values (26,39,'Lumen');
Insert into Skills (DisciplineId,Id,[Name]) values (26,40,'Manifold');
Insert into Skills (DisciplineId,Id,[Name]) values (26,41,'Masonry Design');
Insert into Skills (DisciplineId,Id,[Name]) values (26,42,'MathCAD');
Insert into Skills (DisciplineId,Id,[Name]) values (26,43,'McTrans HCS+');
Insert into Skills (DisciplineId,Id,[Name]) values (26,44,'Microstation');
Insert into Skills (DisciplineId,Id,[Name]) values (26,45,'Midas');
Insert into Skills (DisciplineId,Id,[Name]) values (26,46,'MIDUSS');
Insert into Skills (DisciplineId,Id,[Name]) values (26,47,'Modsoft');
Insert into Skills (DisciplineId,Id,[Name]) values (26,48,'Modflow');
Insert into Skills (DisciplineId,Id,[Name]) values (26,49,'Moscad ToolBox');
Insert into Skills (DisciplineId,Id,[Name]) values (26,50,'OTTHYMO');
Insert into Skills (DisciplineId,Id,[Name]) values (26,51,'PC Bridge');
Insert into Skills (DisciplineId,Id,[Name]) values (26,52,'Prokon');
Insert into Skills (DisciplineId,Id,[Name]) values (26,53,'QHM');
Insert into Skills (DisciplineId,Id,[Name]) values (26,54,'Quicksurf');
Insert into Skills (DisciplineId,Id,[Name]) values (26,55,'Raster Design');
Insert into Skills (DisciplineId,Id,[Name]) values (26,56,'RCStudio');
Insert into Skills (DisciplineId,Id,[Name]) values (26,57,'RoadEng');
Insert into Skills (DisciplineId,Id,[Name]) values (26,58,'RSLogix 5');
Insert into Skills (DisciplineId,Id,[Name]) values (26,59,'RSLogix 500');
Insert into Skills (DisciplineId,Id,[Name]) values (26,60,'RSLogix 5000');
Insert into Skills (DisciplineId,Id,[Name]) values (26,61,'RSView');
Insert into Skills (DisciplineId,Id,[Name]) values (26,62,'RTW');
Insert into Skills (DisciplineId,Id,[Name]) values (26,63,'Sansys');
Insert into Skills (DisciplineId,Id,[Name]) values (26,64,'SAP2000');
Insert into Skills (DisciplineId,Id,[Name]) values (26,65,'Schneider Electric');
Insert into Skills (DisciplineId,Id,[Name]) values (26,66,'SEWHymo');
Insert into Skills (DisciplineId,Id,[Name]) values (26,67,'Simply Roadway');
Insert into Skills (DisciplineId,Id,[Name]) values (26,68,'SLC');
Insert into Skills (DisciplineId,Id,[Name]) values (26,69,'Step7');
Insert into Skills (DisciplineId,Id,[Name]) values (26,70,'SWMHYMO');
Insert into Skills (DisciplineId,Id,[Name]) values (26,71,'SWMM');
Insert into Skills (DisciplineId,Id,[Name]) values (26,72,'Synchro (Micro Model)');
Insert into Skills (DisciplineId,Id,[Name]) values (26,73,'Telesafe');
Insert into Skills (DisciplineId,Id,[Name]) values (26,74,'TORUS');
Insert into Skills (DisciplineId,Id,[Name]) values (26,75,'TransCad');
Insert into Skills (DisciplineId,Id,[Name]) values (26,76,'Visum (Macro Model)');
Insert into Skills (DisciplineId,Id,[Name]) values (26,77,'Vissim (Micro Model)');
Insert into Skills (DisciplineId,Id,[Name]) values (26,78,'Visual Hydro');
Insert into Skills (DisciplineId,Id,[Name]) values (26,79,'WaterCAD');
Insert into Skills (DisciplineId,Id,[Name]) values (26,80,'WaterWorks for Excel');
Insert into Skills (DisciplineId,Id,[Name]) values (26,81,'WatPro');
Insert into Skills (DisciplineId,Id,[Name]) values (26,82,'Wonderware InTouch');
Insert into Skills (DisciplineId,Id,[Name]) values (26,83,'XP-SWMM');
Insert into Skills (DisciplineId,Id,[Name]) values (100,1,'Account Reconciliation');
Insert into Skills (DisciplineId,Id,[Name]) values (100,2,'Accounts Payable');
Insert into Skills (DisciplineId,Id,[Name]) values (100,3,'Auditing');
Insert into Skills (DisciplineId,Id,[Name]) values (100,4,'Benefits Administration');
Insert into Skills (DisciplineId,Id,[Name]) values (100,5,'Bookkeeping');
Insert into Skills (DisciplineId,Id,[Name]) values (100,6,'Budgeting');
Insert into Skills (DisciplineId,Id,[Name]) values (100,7,'Cash Flow Forecasting');
Insert into Skills (DisciplineId,Id,[Name]) values (100,8,'Corporate Income Tax Preparation');
Insert into Skills (DisciplineId,Id,[Name]) values (100,9,'Financial Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (100,10,'Financial Statement Preparation');
Insert into Skills (DisciplineId,Id,[Name]) values (100,11,'Invoicing');
Insert into Skills (DisciplineId,Id,[Name]) values (100,12,'Payroll Administration');
Insert into Skills (DisciplineId,Id,[Name]) values (101,1,'Document Production');
Insert into Skills (DisciplineId,Id,[Name]) values (101,2,'Event Organization');
Insert into Skills (DisciplineId,Id,[Name]) values (101,3,'International Travel Visas');
Insert into Skills (DisciplineId,Id,[Name]) values (101,4,'Office Administration');
Insert into Skills (DisciplineId,Id,[Name]) values (101,5,'Project Administration');
Insert into Skills (DisciplineId,Id,[Name]) values (101,6,'Records Management');
Insert into Skills (DisciplineId,Id,[Name]) values (101,7,'Template Troubleshooting');
Insert into Skills (DisciplineId,Id,[Name]) values (102,1,'Area Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (102,2,'Concept Development Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (102,3,'Development Applications Review');
Insert into Skills (DisciplineId,Id,[Name]) values (102,4,'Growth Strategies');
Insert into Skills (DisciplineId,Id,[Name]) values (102,5,'Housing Policies');
Insert into Skills (DisciplineId,Id,[Name]) values (102,6,'Implementation Strategies');
Insert into Skills (DisciplineId,Id,[Name]) values (102,7,'Municipal Development Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (102,8,'Neighbourhood Concept Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (102,9,'Official Community Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (102,10,'Outline Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (102,11,'Sector Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (102,12,'Site Analysis & Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (102,13,'Subdivision Bylaws');
Insert into Skills (DisciplineId,Id,[Name]) values (102,14,'Subdivision Design');
Insert into Skills (DisciplineId,Id,[Name]) values (102,15,'Zoning Bylaws');
Insert into Skills (DisciplineId,Id,[Name]) values (102,16,'Zoning Map Updates');
Insert into Skills (DisciplineId,Id,[Name]) values (103,1,'Change Management');
Insert into Skills (DisciplineId,Id,[Name]) values (103,2,'Coaching');
Insert into Skills (DisciplineId,Id,[Name]) values (103,3,'Compensation Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (103,4,'Conflict Resolution');
Insert into Skills (DisciplineId,Id,[Name]) values (103,5,'Counselling');
Insert into Skills (DisciplineId,Id,[Name]) values (103,6,'Health & Safety');
Insert into Skills (DisciplineId,Id,[Name]) values (103,7,'Human Resources Forecasting');
Insert into Skills (DisciplineId,Id,[Name]) values (103,8,'Interviewing');
Insert into Skills (DisciplineId,Id,[Name]) values (103,9,'International Recruitment (LMO, PNP)');
Insert into Skills (DisciplineId,Id,[Name]) values (103,10,'Job Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (103,11,'Succession Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (103,12,'Training Development');
Insert into Skills (DisciplineId,Id,[Name]) values (103,13,'Training Needs Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (104,1,'Data Systems');
Insert into Skills (DisciplineId,Id,[Name]) values (104,2,'GIS Mapping');
Insert into Skills (DisciplineId,Id,[Name]) values (104,3,'Programming');
Insert into Skills (DisciplineId,Id,[Name]) values (106,1,'Acquisitions');
Insert into Skills (DisciplineId,Id,[Name]) values (106,2,'Cataloguing');
Insert into Skills (DisciplineId,Id,[Name]) values (106,3,'Reference Help');
Insert into Skills (DisciplineId,Id,[Name]) values (106,4,'Research');
Insert into Skills (DisciplineId,Id,[Name]) values (107,1,'Advertising Strategy');
Insert into Skills (DisciplineId,Id,[Name]) values (107,2,'Branding');
Insert into Skills (DisciplineId,Id,[Name]) values (107,3,'Copywriting');
Insert into Skills (DisciplineId,Id,[Name]) values (107,4,'Competitive Intelligence');
Insert into Skills (DisciplineId,Id,[Name]) values (107,5,'Market Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (107,6,'Marketing Campaigns');
Insert into Skills (DisciplineId,Id,[Name]) values (107,7,'Market Research');
Insert into Skills (DisciplineId,Id,[Name]) values (107,8,'Marketing Communications');
Insert into Skills (DisciplineId,Id,[Name]) values (107,9,'Marketing Strategies');
Insert into Skills (DisciplineId,Id,[Name]) values (107,10,'Media Releases/Relations');
Insert into Skills (DisciplineId,Id,[Name]) values (107,11,'Proposal Strategies');
Insert into Skills (DisciplineId,Id,[Name]) values (107,12,'Proposal Writing');
Insert into Skills (DisciplineId,Id,[Name]) values (107,13,'Tradeshow/Event Marketing');
Insert into Skills (DisciplineId,Id,[Name]) values (107,14,'Audio Mastering/Sound Design');
Insert into Skills (DisciplineId,Id,[Name]) values (107,15,'Graphic Design & Layout');
Insert into Skills (DisciplineId,Id,[Name]) values (107,16,'Human Interface/UX Design');
Insert into Skills (DisciplineId,Id,[Name]) values (107,17,'Identity Design');
Insert into Skills (DisciplineId,Id,[Name]) values (107,18,'Illustration');
Insert into Skills (DisciplineId,Id,[Name]) values (107,19,'Industrial Design');
Insert into Skills (DisciplineId,Id,[Name]) values (107,20,'Motion Graphics Design');
Insert into Skills (DisciplineId,Id,[Name]) values (107,21,'New Media & Campaign Design');
Insert into Skills (DisciplineId,Id,[Name]) values (107,22,'Still Photography');
Insert into Skills (DisciplineId,Id,[Name]) values (107,23,'Photo Retouch/Repair');
Insert into Skills (DisciplineId,Id,[Name]) values (107,24,'Web Design');
Insert into Skills (DisciplineId,Id,[Name]) values (107,25,'Vector Editing');
Insert into Skills (DisciplineId,Id,[Name]) values (107,26,'Videography/Editing');
Insert into Skills (DisciplineId,Id,[Name]) values (108,1,'ABCFP');
Insert into Skills (DisciplineId,Id,[Name]) values (108,2,'ACEC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,3,'ACI');
Insert into Skills (DisciplineId,Id,[Name]) values (108,4,'AEAP');
Insert into Skills (DisciplineId,Id,[Name]) values (108,5,'AGG');
Insert into Skills (DisciplineId,Id,[Name]) values (108,6,'AIBC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,7,'AIH');
Insert into Skills (DisciplineId,Id,[Name]) values (108,8,'AISC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,9,'AMEBC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,10,'AOLS');
Insert into Skills (DisciplineId,Id,[Name]) values (108,11,'APAC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,12,'APBBC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,13,'APEGBC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,14,'APEGA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,15,'APEGS');
Insert into Skills (DisciplineId,Id,[Name]) values (108,16,'APEGM');
Insert into Skills (DisciplineId,Id,[Name]) values (108,17,'APEY');
Insert into Skills (DisciplineId,Id,[Name]) values (108,18,'AREMA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,19,'ARMA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,20,'ASCE');
Insert into Skills (DisciplineId,Id,[Name]) values (108,21,'ASET');
Insert into Skills (DisciplineId,Id,[Name]) values (108,22,'ASHRAE');
Insert into Skills (DisciplineId,Id,[Name]) values (108,23,'ASME');
Insert into Skills (DisciplineId,Id,[Name]) values (108,24,'ASPB');
Insert into Skills (DisciplineId,Id,[Name]) values (108,25,'ASPE');
Insert into Skills (DisciplineId,Id,[Name]) values (108,26,'ASSMR');
Insert into Skills (DisciplineId,Id,[Name]) values (108,27,'ASSMT');
Insert into Skills (DisciplineId,Id,[Name]) values (108,28,'ASTTBC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,29,'AUGI');
Insert into Skills (DisciplineId,Id,[Name]) values (108,30,'AWS');
Insert into Skills (DisciplineId,Id,[Name]) values (108,31,'AWWA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,32,'AWWOA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,33,'BCAC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,34,'BCCR');
Insert into Skills (DisciplineId,Id,[Name]) values (108,35,'BCSEA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,36,'BCWWA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,37,'BCXA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,38,'CAB');
Insert into Skills (DisciplineId,Id,[Name]) values (108,39,'CAEE');
Insert into Skills (DisciplineId,Id,[Name]) values (108,40,'CAG');
Insert into Skills (DisciplineId,Id,[Name]) values (108,41,'CaGBC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,42,'CAPTG');
Insert into Skills (DisciplineId,Id,[Name]) values (108,43,'CARCNET');
Insert into Skills (DisciplineId,Id,[Name]) values (108,44,'CCHRA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,45,'CDA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,46,'CEA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,47,'CEAA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,48,'ACEC BC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,49,'CECAB');
Insert into Skills (DisciplineId,Id,[Name]) values (108,50,'ACEC Manitoba');
Insert into Skills (DisciplineId,Id,[Name]) values (108,51,'CEO');
Insert into Skills (DisciplineId,Id,[Name]) values (108,52,'CES');
Insert into Skills (DisciplineId,Id,[Name]) values (108,53,'CEY');
Insert into Skills (DisciplineId,Id,[Name]) values (108,54,'CFAA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,55,'CGBC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,56,'CIC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,57,'CICA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,58,'CIP');
Insert into Skills (DisciplineId,Id,[Name]) values (108,59,'CISC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,60,'CLRA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,61,'CMA-A');
Insert into Skills (DisciplineId,Id,[Name]) values (108,62,'CMAC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,63,'CMVA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,64,'CORS');
Insert into Skills (DisciplineId,Id,[Name]) values (108,65,'CPA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,66,'CPESC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,67,'CREA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,68,'cBIMc (Calgary BIM Community)');
Insert into Skills (DisciplineId,Id,[Name]) values (108,69,'CSC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,70,'CSCE');
Insert into Skills (DisciplineId,Id,[Name]) values (108,71,'CSEB');
Insert into Skills (DisciplineId,Id,[Name]) values (108,72,'CSEM');
Insert into Skills (DisciplineId,Id,[Name]) values (108,73,'CSHS');
Insert into Skills (DisciplineId,Id,[Name]) values (108,74,'CSMPS');
Insert into Skills (DisciplineId,Id,[Name]) values (108,75,'CSSE');
Insert into Skills (DisciplineId,Id,[Name]) values (108,76,'CTTAM');
Insert into Skills (DisciplineId,Id,[Name]) values (108,77,'CUTA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,78,'CWB');
Insert into Skills (DisciplineId,Id,[Name]) values (108,79,'CWN');
Insert into Skills (DisciplineId,Id,[Name]) values (108,80,'CWRA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,81,'EERI');
Insert into Skills (DisciplineId,Id,[Name]) values (108,82,'EHRA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,83,'GCC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,84,'GDC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,85,'GeoExchange BC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,86,'GSE');
Insert into Skills (DisciplineId,Id,[Name]) values (108,87,'HRAC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,88,'HRIA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,89,'IAAE');
Insert into Skills (DisciplineId,Id,[Name]) values (108,90,'IAAP');
Insert into Skills (DisciplineId,Id,[Name]) values (108,91,'IABSE');
Insert into Skills (DisciplineId,Id,[Name]) values (108,92,'IBEC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,93,'ICAA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,94,'ICE');
Insert into Skills (DisciplineId,Id,[Name]) values (108,95,'IEEE');
Insert into Skills (DisciplineId,Id,[Name]) values (108,96,'IES');
Insert into Skills (DisciplineId,Id,[Name]) values (108,97,'IMEC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,98,'IMSA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,99,'IOA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,100,'IRSE');
Insert into Skills (DisciplineId,Id,[Name]) values (108,101,'ISA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,102,'ISOCARP');
Insert into Skills (DisciplineId,Id,[Name]) values (108,103,'IStructE');
Insert into Skills (DisciplineId,Id,[Name]) values (108,104,'ITE');
Insert into Skills (DisciplineId,Id,[Name]) values (108,105,'ITS');
Insert into Skills (DisciplineId,Id,[Name]) values (108,106,'IUVA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,107,'IWA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,108,'KOFC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,109,'LCGI');
Insert into Skills (DisciplineId,Id,[Name]) values (108,110,'LEED');
Insert into Skills (DisciplineId,Id,[Name]) values (108,111,'MED');
Insert into Skills (DisciplineId,Id,[Name]) values (108,112,'MEL');
Insert into Skills (DisciplineId,Id,[Name]) values (108,113,'MMCDA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,114,'MWWA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,116,'NACE');
Insert into Skills (DisciplineId,Id,[Name]) values (108,117,'NAPEG');
Insert into Skills (DisciplineId,Id,[Name]) values (108,118,'NASTT');
Insert into Skills (DisciplineId,Id,[Name]) values (108,119,'NCEES');
Insert into Skills (DisciplineId,Id,[Name]) values (108,120,'NFPA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,121,'NWTCA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,122,'OACETT');
Insert into Skills (DisciplineId,Id,[Name]) values (108,123,'OARS');
Insert into Skills (DisciplineId,Id,[Name]) values (108,124,'OIQ');
Insert into Skills (DisciplineId,Id,[Name]) values (108,125,'OPPI');
Insert into Skills (DisciplineId,Id,[Name]) values (108,126,'OPWA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,127,'OREG');
Insert into Skills (DisciplineId,Id,[Name]) values (108,128,'OSPE');
Insert into Skills (DisciplineId,Id,[Name]) values (108,129,'OWWA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,130,'PEO');
Insert into Skills (DisciplineId,Id,[Name]) values (108,131,'PMI');
Insert into Skills (DisciplineId,Id,[Name]) values (108,132,'PWABC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,133,'PWIS');
Insert into Skills (DisciplineId,Id,[Name]) values (108,134,'RELM');
Insert into Skills (DisciplineId,Id,[Name]) values (108,135,'RISA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,137,'RRHBA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,138,'SAHRP');
Insert into Skills (DisciplineId,Id,[Name]) values (108,139,'SASTT');
Insert into Skills (DisciplineId,Id,[Name]) values (108,140,'SBOA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,141,'SCB');
Insert into Skills (DisciplineId,Id,[Name]) values (108,142,'SEABC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,143,'SEIMA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,144,'SETAC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,145,'SNVB');
Insert into Skills (DisciplineId,Id,[Name]) values (108,146,'SPWA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,147,'SWANA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,148,'SWWA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,149,'TAC');
Insert into Skills (DisciplineId,Id,[Name]) values (108,150,'TRB');
Insert into Skills (DisciplineId,Id,[Name]) values (108,151,'WCWEA');
Insert into Skills (DisciplineId,Id,[Name]) values (108,152,'WCW');
Insert into Skills (DisciplineId,Id,[Name]) values (108,153,'WEAO');
Insert into Skills (DisciplineId,Id,[Name]) values (108,154,'WEF');
Insert into Skills (DisciplineId,Id,[Name]) values (108,155,'WERF');
Insert into Skills (DisciplineId,Id,[Name]) values (108,156,'WHBC');
Insert into Skills (DisciplineId,Id,[Name]) values (109,2,'ASB');
Insert into Skills (DisciplineId,Id,[Name]) values (109,3,'CIWEM');
Insert into Skills (DisciplineId,Id,[Name]) values (109,4,'CPE');
Insert into Skills (DisciplineId,Id,[Name]) values (109,5,'EI');
Insert into Skills (DisciplineId,Id,[Name]) values (109,6,'HKIE');
Insert into Skills (DisciplineId,Id,[Name]) values (109,7,'IRE');
Insert into Skills (DisciplineId,Id,[Name]) values (109,8,'IWO');
Insert into Skills (DisciplineId,Id,[Name]) values (109,9,'SAICE');
Insert into Skills (DisciplineId,Id,[Name]) values (109,10,'VAE');
Insert into Skills (DisciplineId,Id,[Name]) values (109,11,'WPE');
Insert into Skills (DisciplineId,Id,[Name]) values (26,301,'ACD Canvas');
Insert into Skills (DisciplineId,Id,[Name]) values (26,312,'ACDSee Pro');
Insert into Skills (DisciplineId,Id,[Name]) values (26,323,'Adobe Acrobat Pro');
Insert into Skills (DisciplineId,Id,[Name]) values (26,334,'Adobe Dreamweaver');
Insert into Skills (DisciplineId,Id,[Name]) values (26,336,'Adobe Fireworks');
Insert into Skills (DisciplineId,Id,[Name]) values (26,337,'Adobe Flash');
Insert into Skills (DisciplineId,Id,[Name]) values (26,338,'Adobe Illustrator');
Insert into Skills (DisciplineId,Id,[Name]) values (26,339,'Adobe Indesign');
Insert into Skills (DisciplineId,Id,[Name]) values (26,340,'Adobe Media Encoder');
Insert into Skills (DisciplineId,Id,[Name]) values (26,302,'Adobe Photoshop');
Insert into Skills (DisciplineId,Id,[Name]) values (26,303,'Adobe Premiere');
Insert into Skills (DisciplineId,Id,[Name]) values (26,304,'Apple Final Cut');
Insert into Skills (DisciplineId,Id,[Name]) values (26,305,'Apple Logic');
Insert into Skills (DisciplineId,Id,[Name]) values (26,306,'Apple Motion/Shake');
Insert into Skills (DisciplineId,Id,[Name]) values (26,307,'Autodesk Combustion');
Insert into Skills (DisciplineId,Id,[Name]) values (26,308,'Autodesk Maya');
Insert into Skills (DisciplineId,Id,[Name]) values (26,309,'Avid');
Insert into Skills (DisciplineId,Id,[Name]) values (26,310,'Corel Draw');
Insert into Skills (DisciplineId,Id,[Name]) values (26,311,'Corel Painter');
Insert into Skills (DisciplineId,Id,[Name]) values (26,313,'Corel Presentation');
Insert into Skills (DisciplineId,Id,[Name]) values (26,314,'DBTextworks');
Insert into Skills (DisciplineId,Id,[Name]) values (26,315,'GIMP');
Insert into Skills (DisciplineId,Id,[Name]) values (26,316,'Infopath');
Insert into Skills (DisciplineId,Id,[Name]) values (26,317,'Infranview');
Insert into Skills (DisciplineId,Id,[Name]) values (26,318,'Maxon Cinema4D');
Insert into Skills (DisciplineId,Id,[Name]) values (26,319,'MS Excel');
Insert into Skills (DisciplineId,Id,[Name]) values (26,320,'MS Power Point');
Insert into Skills (DisciplineId,Id,[Name]) values (26,321,'MS Word');
Insert into Skills (DisciplineId,Id,[Name]) values (26,322,'MS Access');
Insert into Skills (DisciplineId,Id,[Name]) values (26,324,'MS Project');
Insert into Skills (DisciplineId,Id,[Name]) values (26,325,'MS Publisher');
Insert into Skills (DisciplineId,Id,[Name]) values (26,326,'MS Sharepoint');
Insert into Skills (DisciplineId,Id,[Name]) values (26,327,'PDF-xchange');
Insert into Skills (DisciplineId,Id,[Name]) values (26,328,'DAW');
Insert into Skills (DisciplineId,Id,[Name]) values (26,329,'Quark Xpress');
Insert into Skills (DisciplineId,Id,[Name]) values (26,330,'ScanSoft OmniPage');
Insert into Skills (DisciplineId,Id,[Name]) values (26,331,'TRIM');
Insert into Skills (DisciplineId,Id,[Name]) values (26,332,'Visio');
Insert into Skills (DisciplineId,Id,[Name]) values (26,333,'Vision');
Insert into Skills (DisciplineId,Id,[Name]) values (26,335,'WordPerfect');
Insert into Skills (DisciplineId,Id,[Name]) values (14,100,'Compressed Air Systems');
Insert into Skills (DisciplineId,Id,[Name]) values (14,101,'Building Automation');
Insert into Skills (DisciplineId,Id,[Name]) values (2,100,'Building Information Management');
Insert into Skills (DisciplineId,Id,[Name]) values (15,100,'Arc Flash Studies');
Insert into Skills (DisciplineId,Id,[Name]) values (15,101,'Loop Drawings');
Insert into Skills (DisciplineId,Id,[Name]) values (6,100,'Equipment Performance Testing');
Insert into Skills (DisciplineId,Id,[Name]) values (6,101,'Geoexchange');
Insert into Skills (DisciplineId,Id,[Name]) values (3,100,'Aquatic Biology');
Insert into Skills (DisciplineId,Id,[Name]) values (3,101,'Aquatic Toxicology');
Insert into Skills (DisciplineId,Id,[Name]) values (3,102,'Environmental Monitoring');
Insert into Skills (DisciplineId,Id,[Name]) values (3,103,'Geomorphology');
Insert into Skills (DisciplineId,Id,[Name]) values (3,104,'Hazards Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (202,11,'3D Modelling');
Insert into Skills (DisciplineId,Id,[Name]) values (3,106,'Reclamation');
Insert into Skills (DisciplineId,Id,[Name]) values (3,107,'Terrestrial Biology');
Insert into Skills (DisciplineId,Id,[Name]) values (8,21,'Campgrounds');
Insert into Skills (DisciplineId,Id,[Name]) values (1,30,'Decision Support');
Insert into Skills (DisciplineId,Id,[Name]) values (1,31,'Forensics');
Insert into Skills (DisciplineId,Id,[Name]) values (1,32,'Technical Writing');
Insert into Skills (DisciplineId,Id,[Name]) values (1,33,'Technical Editing');
Insert into Skills (DisciplineId,Id,[Name]) values (8,101,'Landscape Design');
Insert into Skills (DisciplineId,Id,[Name]) values (8,102,'Landscape Visualization & Rendering');
Insert into Skills (DisciplineId,Id,[Name]) values (1,100,'Approvals');
Insert into Skills (DisciplineId,Id,[Name]) values (1,103,'Capital and Long Range Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (1,106,'Cold Region Engineering');
Insert into Skills (DisciplineId,Id,[Name]) values (1,107,'Contract Packaging');
Insert into Skills (DisciplineId,Id,[Name]) values (1,108,'Mediation');
Insert into Skills (DisciplineId,Id,[Name]) values (1,109,'Permits');
Insert into Skills (DisciplineId,Id,[Name]) values (1,110,'Record Drawings');
Insert into Skills (DisciplineId,Id,[Name]) values (1,111,'Risk Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (26,100,'3ds Max Design');
Insert into Skills (DisciplineId,Id,[Name]) values (26,101,'ArchiCAD');
Insert into Skills (DisciplineId,Id,[Name]) values (26,102,'AutoCAD');
Insert into Skills (DisciplineId,Id,[Name]) values (26,103,'AutoCAD Electrical');
Insert into Skills (DisciplineId,Id,[Name]) values (26,104,'AutoCAD MEP (Mechanical, Electrical, Plumbing)');
Insert into Skills (DisciplineId,Id,[Name]) values (26,105,'AutoCAD P&ID');
Insert into Skills (DisciplineId,Id,[Name]) values (26,106,'AutoCAD Plant 3D');
Insert into Skills (DisciplineId,Id,[Name]) values (26,107,'AutoCAD RasterDesign');
Insert into Skills (DisciplineId,Id,[Name]) values (26,108,'AutoCAD Structural Detailing');
Insert into Skills (DisciplineId,Id,[Name]) values (26,109,'Autodesk Impressions');
Insert into Skills (DisciplineId,Id,[Name]) values (26,110,'Autodesk Structural Analysis Professional');
Insert into Skills (DisciplineId,Id,[Name]) values (26,111,'Autoplant Structural');
Insert into Skills (DisciplineId,Id,[Name]) values (26,112,'CADPipe');
Insert into Skills (DisciplineId,Id,[Name]) values (26,113,'CADworx');
Insert into Skills (DisciplineId,Id,[Name]) values (26,114,'Carlson');
Insert into Skills (DisciplineId,Id,[Name]) values (26,115,'Catia');
Insert into Skills (DisciplineId,Id,[Name]) values (26,116,'CEASAR II');
Insert into Skills (DisciplineId,Id,[Name]) values (26,117,'Culvert Master');
Insert into Skills (DisciplineId,Id,[Name]) values (26,118,'Design Review');
Insert into Skills (DisciplineId,Id,[Name]) values (26,119,'DWG True View');
Insert into Skills (DisciplineId,Id,[Name]) values (26,120,'EcoDesigner');
Insert into Skills (DisciplineId,Id,[Name]) values (26,121,'e-Specs');
Insert into Skills (DisciplineId,Id,[Name]) values (26,122,'Google Sketchup');
Insert into Skills (DisciplineId,Id,[Name]) values (26,123,'Green Building Studio');
Insert into Skills (DisciplineId,Id,[Name]) values (26,124,'Hammer');
Insert into Skills (DisciplineId,Id,[Name]) values (26,125,'HYSIM');
Insert into Skills (DisciplineId,Id,[Name]) values (26,126,'IES Suite');
Insert into Skills (DisciplineId,Id,[Name]) values (26,127,'Infowater');
Insert into Skills (DisciplineId,Id,[Name]) values (26,128,'Inroads');
Insert into Skills (DisciplineId,Id,[Name]) values (26,129,'Inventor');
Insert into Skills (DisciplineId,Id,[Name]) values (26,130,'Microstation');
Insert into Skills (DisciplineId,Id,[Name]) values (26,131,'Navisworks Freedom');
Insert into Skills (DisciplineId,Id,[Name]) values (26,132,'Navisworks Manage');
Insert into Skills (DisciplineId,Id,[Name]) values (26,133,'Pro Engineering');
Insert into Skills (DisciplineId,Id,[Name]) values (26,134,'Pro Steel');
Insert into Skills (DisciplineId,Id,[Name]) values (26,135,'ProCAD');
Insert into Skills (DisciplineId,Id,[Name]) values (26,136,'ProEngineer');
Insert into Skills (DisciplineId,Id,[Name]) values (26,137,'Revit Architecture');
Insert into Skills (DisciplineId,Id,[Name]) values (26,138,'Revit MEP');
Insert into Skills (DisciplineId,Id,[Name]) values (26,139,'Revit Structure');
Insert into Skills (DisciplineId,Id,[Name]) values (26,140,'RISA');
Insert into Skills (DisciplineId,Id,[Name]) values (26,141,'SCADA Systems ElecDES');
Insert into Skills (DisciplineId,Id,[Name]) values (26,142,'SCADA Systems Instrument Manager');
Insert into Skills (DisciplineId,Id,[Name]) values (26,143,'SCADA Systems PanelsDES');
Insert into Skills (DisciplineId,Id,[Name]) values (26,144,'Sewer Gems');
Insert into Skills (DisciplineId,Id,[Name]) values (26,145,'S-Frame');
Insert into Skills (DisciplineId,Id,[Name]) values (26,146,'SolidWorks');
Insert into Skills (DisciplineId,Id,[Name]) values (26,147,'StormCAD');
Insert into Skills (DisciplineId,Id,[Name]) values (26,148,'Tekla');
Insert into Skills (DisciplineId,Id,[Name]) values (26,149,'Vectorworks');
Insert into Skills (DisciplineId,Id,[Name]) values (26,150,'VICO Suite');
Insert into Skills (DisciplineId,Id,[Name]) values (26,151,'Watergems');
Insert into Skills (DisciplineId,Id,[Name]) values (26,152,'Woodworks');
Insert into Skills (DisciplineId,Id,[Name]) values (12,100,'Biological Filtration');
Insert into Skills (DisciplineId,Id,[Name]) values (12,101,'Chemical Feed & Storage');
Insert into Skills (DisciplineId,Id,[Name]) values (12,102,'Control Valves');
Insert into Skills (DisciplineId,Id,[Name]) values (12,104,'Fish Handling Systems');
Insert into Skills (DisciplineId,Id,[Name]) values (12,105,'Screw Pumps');
Insert into Skills (DisciplineId,Id,[Name]) values (200,10,'Asset Costing & Valuation');
Insert into Skills (DisciplineId,Id,[Name]) values (200,11,'Asset Information Systems');
Insert into Skills (DisciplineId,Id,[Name]) values (200,12,'Asset Management BC Framework');
Insert into Skills (DisciplineId,Id,[Name]) values (200,13,'Asset Management Leadership');
Insert into Skills (DisciplineId,Id,[Name]) values (200,14,'Asset Management Policy & Strategy Development');
Insert into Skills (DisciplineId,Id,[Name]) values (200,15,'Asset Planning/Infrastructure Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (200,16,'Capital Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (200,17,'Competence Management');
Insert into Skills (DisciplineId,Id,[Name]) values (200,18,'Condition Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (200,19,'Contingency Planning / Resiliency Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (200,20,'Criticality & Risk Management');
Insert into Skills (DisciplineId,Id,[Name]) values (200,21,'Data & Information Management');
Insert into Skills (DisciplineId,Id,[Name]) values (200,22,'Decision Analysis - Cost Benefit');
Insert into Skills (DisciplineId,Id,[Name]) values (200,23,'Decision Analysis - MCDA');
Insert into Skills (DisciplineId,Id,[Name]) values (200,24,'Demand Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (200,25,'Information Strategy Development');
Insert into Skills (DisciplineId,Id,[Name]) values (200,26,'ISO 55001');
Insert into Skills (DisciplineId,Id,[Name]) values (200,27,'Levels of Service & Asset Performance Management');
Insert into Skills (DisciplineId,Id,[Name]) values (200,28,'Life-cycle Cost Analysis/Evaluation');
Insert into Skills (DisciplineId,Id,[Name]) values (200,29,'Maintenance Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (200,30,'Management Review, Audit, Maturity Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (200,31,'Organizational Structure');
Insert into Skills (DisciplineId,Id,[Name]) values (200,32,'PAS 55');
Insert into Skills (DisciplineId,Id,[Name]) values (200,33,'Triple Bottom Line Evaluation');
Insert into Skills (DisciplineId,Id,[Name]) values (19,20,'Highways-Rural');
Insert into Skills (DisciplineId,Id,[Name]) values (19,21,'Highways-Urban');
Insert into Skills (DisciplineId,Id,[Name]) values (19,22,'Ice Roads');
Insert into Skills (DisciplineId,Id,[Name]) values (19,23,'Sound Walls');
Insert into Skills (DisciplineId,Id,[Name]) values (201,10,'Climatic Projections & Model Interpretation');
Insert into Skills (DisciplineId,Id,[Name]) values (201,11,'Climate Change Hydrology Assessments');
Insert into Skills (DisciplineId,Id,[Name]) values (201,12,'IDF-Climate Change Online Tool');
Insert into Skills (DisciplineId,Id,[Name]) values (201,13,'Adaptation - Extreme Event Recovery Advisory');
Insert into Skills (DisciplineId,Id,[Name]) values (201,14,'Adaptation:  Planning & Resiliency Analysis (existing infrastructure)');
Insert into Skills (DisciplineId,Id,[Name]) values (201,15,'Adaptation:  Planning & Resiliency Analysis (new infrastructure)');
Insert into Skills (DisciplineId,Id,[Name]) values (201,16,'Adaptation:  Operation & Maintenance Preventive Strategies Advisory');
Insert into Skills (DisciplineId,Id,[Name]) values (201,17,'Adaptation: Vulnerability, Impact and Risk Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (201,18,'Mitigation - Carbon Footprint Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (201,19,'Mitigation - Greenhouse Gas Source / Sinks Management');
Insert into Skills (DisciplineId,Id,[Name]) values (201,20,'Mitigation - Low Carbon/Non-Carbon Energy Management');
Insert into Skills (DisciplineId,Id,[Name]) values (201,21,'PIEVC Protocol Vulnerability Assessment Tool');
Insert into Skills (DisciplineId,Id,[Name]) values (201,22,'Policy Development');
Insert into Skills (DisciplineId,Id,[Name]) values (201,23,'Standards and Codes Development');
Insert into Skills (DisciplineId,Id,[Name]) values (102,20,'Tourism Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (102,21,'Urban Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (214,10,'Insitu');
Insert into Skills (DisciplineId,Id,[Name]) values (214,11,'Pre-Fabrication & Assembly');
Insert into Skills (DisciplineId,Id,[Name]) values (214,12,'Timing');
Insert into Skills (DisciplineId,Id,[Name]) values (6,20,'District Energy');
Insert into Skills (DisciplineId,Id,[Name]) values (6,21,'Energy Recovery');
Insert into Skills (DisciplineId,Id,[Name]) values (3,20,'Environmental Impact Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (3,21,'Earth Science');
Insert into Skills (DisciplineId,Id,[Name]) values (202,10,'2D Modelling');
Insert into Skills (DisciplineId,Id,[Name]) values (202,12,'Aquifer Recharge/Aquifer Storage & Recovery');
Insert into Skills (DisciplineId,Id,[Name]) values (202,13,'Contaminated Sites Investigation');
Insert into Skills (DisciplineId,Id,[Name]) values (202,14,'Contaminated Sites Remediation');
Insert into Skills (DisciplineId,Id,[Name]) values (202,15,'Dewatering');
Insert into Skills (DisciplineId,Id,[Name]) values (202,16,'Groundwater Dewatering & Subsidence');
Insert into Skills (DisciplineId,Id,[Name]) values (202,17,'Groundwater Monitoring');
Insert into Skills (DisciplineId,Id,[Name]) values (202,18,'Groundwater Resource Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (202,19,'Groundwater Supply Drilling & Testing');
Insert into Skills (DisciplineId,Id,[Name]) values (202,20,'GUDI/GARP Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (202,21,'Regional Water Budgets/Water Supply & Demand');
Insert into Skills (DisciplineId,Id,[Name]) values (202,22,'Source Assessment & Protection');
Insert into Skills (DisciplineId,Id,[Name]) values (202,23,'Water Licensing Application');
Insert into Skills (DisciplineId,Id,[Name]) values (202,24,'Well Development & Rehabilitation');
Insert into Skills (DisciplineId,Id,[Name]) values (203,10,'Base Flow Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (203,11,'Environmental Flow Needs Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (203,12,'Frequency Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (203,13,'Flow Estimates-Ungauged Basin');
Insert into Skills (DisciplineId,Id,[Name]) values (203,14,'Flow Monitoring');
Insert into Skills (DisciplineId,Id,[Name]) values (203,15,'Orographic Effect Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (203,16,'Rain-on-Snow Hydrology');
Insert into Skills (DisciplineId,Id,[Name]) values (203,17,'Riparian Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (203,18,'Stage-Discharge Curve Development');
Insert into Skills (DisciplineId,Id,[Name]) values (203,19,'Stream Restoration');
Insert into Skills (DisciplineId,Id,[Name]) values (203,20,'Water Quality Monitoring & Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (203,21,'Water Balance Studies');
Insert into Skills (DisciplineId,Id,[Name]) values (203,22,'Wetland Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (203,23,'Urban Hydrology');
Insert into Skills (DisciplineId,Id,[Name]) values (204,10,'Combined Sewer Overflows');
Insert into Skills (DisciplineId,Id,[Name]) values (204,11,'Computational Fluid Dynamics');
Insert into Skills (DisciplineId,Id,[Name]) values (204,12,'Drainage');
Insert into Skills (DisciplineId,Id,[Name]) values (204,13,'Flow Monitoring & Assessments');
Insert into Skills (DisciplineId,Id,[Name]) values (204,14,'Hydraulics');
Insert into Skills (DisciplineId,Id,[Name]) values (204,15,'Inflow/Infiltration Studies');
Insert into Skills (DisciplineId,Id,[Name]) values (204,16,'Insulated Pipe');
Insert into Skills (DisciplineId,Id,[Name]) values (204,17,'Land Development-Commercial');
Insert into Skills (DisciplineId,Id,[Name]) values (204,18,'Land Development-Municipal');
Insert into Skills (DisciplineId,Id,[Name]) values (204,19,'Land Development-Institutional');
Insert into Skills (DisciplineId,Id,[Name]) values (204,20,'Land Development-Residential');
Insert into Skills (DisciplineId,Id,[Name]) values (204,21,'Lift/Pump Stations-Stormwater');
Insert into Skills (DisciplineId,Id,[Name]) values (204,22,'Lift/Pump Stations-Wastewater');
Insert into Skills (DisciplineId,Id,[Name]) values (204,23,'Lift/Pump Stations-Water');
Insert into Skills (DisciplineId,Id,[Name]) values (204,24,'Master Plans-Wastewater');
Insert into Skills (DisciplineId,Id,[Name]) values (204,25,'Master Plans-Water');
Insert into Skills (DisciplineId,Id,[Name]) values (8,20,'Athletic Facilities');
Insert into Skills (DisciplineId,Id,[Name]) values (204,26,'Modelling-Wastewater');
Insert into Skills (DisciplineId,Id,[Name]) values (204,27,'Modelling-Water');
Insert into Skills (DisciplineId,Id,[Name]) values (204,28,'Parks & Recreation');
Insert into Skills (DisciplineId,Id,[Name]) values (204,29,'Rehabilitation');
Insert into Skills (DisciplineId,Id,[Name]) values (204,30,'Site Servicing');
Insert into Skills (DisciplineId,Id,[Name]) values (204,31,'Snow Storage');
Insert into Skills (DisciplineId,Id,[Name]) values (204,32,'Storm Sewers');
Insert into Skills (DisciplineId,Id,[Name]) values (204,33,'Transient Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (204,34,'Utilidor');
Insert into Skills (DisciplineId,Id,[Name]) values (204,35,'Utilities');
Insert into Skills (DisciplineId,Id,[Name]) values (204,36,'Wastewater Forcemain');
Insert into Skills (DisciplineId,Id,[Name]) values (204,37,'Wastewater Collection');
Insert into Skills (DisciplineId,Id,[Name]) values (204,38,'Wastewater Storage');
Insert into Skills (DisciplineId,Id,[Name]) values (204,39,'Wastewater Studies');
Insert into Skills (DisciplineId,Id,[Name]) values (204,40,'Water Demand Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (204,41,'Water Storage');
Insert into Skills (DisciplineId,Id,[Name]) values (204,42,'Water Studies');
Insert into Skills (DisciplineId,Id,[Name]) values (204,43,'Water Supply');
Insert into Skills (DisciplineId,Id,[Name]) values (204,44,'Watermain Design');
Insert into Skills (DisciplineId,Id,[Name]) values (8,22,'Environmental Graphics / Signage');
Insert into Skills (DisciplineId,Id,[Name]) values (8,23,'Interpretive Design');
Insert into Skills (DisciplineId,Id,[Name]) values (8,24,'Naturalization');
Insert into Skills (DisciplineId,Id,[Name]) values (8,25,'Placemaking');
Insert into Skills (DisciplineId,Id,[Name]) values (8,26,'Site Planning');
Insert into Skills (DisciplineId,Id,[Name]) values (8,27,'Streetscaping');
Insert into Skills (DisciplineId,Id,[Name]) values (8,28,'Therapeutic Gardens');
Insert into Skills (DisciplineId,Id,[Name]) values (8,29,'Trail Planning and Design');
Insert into Skills (DisciplineId,Id,[Name]) values (8,30,'Urban Forestry');
Insert into Skills (DisciplineId,Id,[Name]) values (8,31,'Xeriscaping');
Insert into Skills (DisciplineId,Id,[Name]) values (205,10,'Alloys');
Insert into Skills (DisciplineId,Id,[Name]) values (205,11,'Aluminum');
Insert into Skills (DisciplineId,Id,[Name]) values (205,12,'Building Envelope & Roofing');
Insert into Skills (DisciplineId,Id,[Name]) values (205,13,'Coatings');
Insert into Skills (DisciplineId,Id,[Name]) values (205,14,'Composites');
Insert into Skills (DisciplineId,Id,[Name]) values (205,15,'Concrete');
Insert into Skills (DisciplineId,Id,[Name]) values (205,16,'Concrete-UHP');
Insert into Skills (DisciplineId,Id,[Name]) values (205,17,'Corrosion');
Insert into Skills (DisciplineId,Id,[Name]) values (205,18,'Emerging Materials');
Insert into Skills (DisciplineId,Id,[Name]) values (205,19,'Fatigue & Fracture');
Insert into Skills (DisciplineId,Id,[Name]) values (205,20,'Fibreglass Reinforced Plastics');
Insert into Skills (DisciplineId,Id,[Name]) values (205,21,'Glass');
Insert into Skills (DisciplineId,Id,[Name]) values (205,22,'Life Cycle Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (205,23,'Masonry');
Insert into Skills (DisciplineId,Id,[Name]) values (205,24,'Plastics');
Insert into Skills (DisciplineId,Id,[Name]) values (205,25,'Steel');
Insert into Skills (DisciplineId,Id,[Name]) values (205,26,'Waterproofing');
Insert into Skills (DisciplineId,Id,[Name]) values (205,27,'Wood');
Insert into Skills (DisciplineId,Id,[Name]) values (108,200,'IBC - Institute for BIM in Canada');
Insert into Skills (DisciplineId,Id,[Name]) values (109,20,'ACI');
Insert into Skills (DisciplineId,Id,[Name]) values (109,21,'AISC');
Insert into Skills (DisciplineId,Id,[Name]) values (109,22,'AREMA');
Insert into Skills (DisciplineId,Id,[Name]) values (109,23,'ASCE');
Insert into Skills (DisciplineId,Id,[Name]) values (206,10,'Culvert Risk Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (206,11,'Debris Risk Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (206,12,'Erosion Protection');
Insert into Skills (DisciplineId,Id,[Name]) values (206,13,'Flood Protection');
Insert into Skills (DisciplineId,Id,[Name]) values (206,14,'Flood Risk Mapping');
Insert into Skills (DisciplineId,Id,[Name]) values (206,15,'Flow Diversion');
Insert into Skills (DisciplineId,Id,[Name]) values (206,16,'Fluvial Geomorphology');
Insert into Skills (DisciplineId,Id,[Name]) values (206,17,'Guide Bank Design');
Insert into Skills (DisciplineId,Id,[Name]) values (206,18,'River Hydraulics');
Insert into Skills (DisciplineId,Id,[Name]) values (206,19,'River Ice');
Insert into Skills (DisciplineId,Id,[Name]) values (206,20,'Scour Assessments');
Insert into Skills (DisciplineId,Id,[Name]) values (206,21,'Sediment Transport Assessments');
Insert into Skills (DisciplineId,Id,[Name]) values (206,22,'Tidally Controlled Rivers');
Insert into Skills (DisciplineId,Id,[Name]) values (26,200,'Aquifer Test Pro');
Insert into Skills (DisciplineId,Id,[Name]) values (26,201,'Aquifer Win32');
Insert into Skills (DisciplineId,Id,[Name]) values (26,202,'ARC Info');
Insert into Skills (DisciplineId,Id,[Name]) values (26,203,'Bed Load Analyzer');
Insert into Skills (DisciplineId,Id,[Name]) values (26,204,'Bentley CivilStorm');
Insert into Skills (DisciplineId,Id,[Name]) values (26,205,'EasyFit');
Insert into Skills (DisciplineId,Id,[Name]) values (26,206,'Feflow');
Insert into Skills (DisciplineId,Id,[Name]) values (26,207,'Flowmaster');
Insert into Skills (DisciplineId,Id,[Name]) values (26,208,'Geosoft');
Insert into Skills (DisciplineId,Id,[Name]) values (26,209,'Global Mapper');
Insert into Skills (DisciplineId,Id,[Name]) values (26,210,'Google Earth Pro');
Insert into Skills (DisciplineId,Id,[Name]) values (26,211,'Groundwater Modelling System (GMS)');
Insert into Skills (DisciplineId,Id,[Name]) values (26,212,'Infraworks');
Insert into Skills (DisciplineId,Id,[Name]) values (26,213,'HEC-RTS');
Insert into Skills (DisciplineId,Id,[Name]) values (26,214,'HEC-HMS');
Insert into Skills (DisciplineId,Id,[Name]) values (26,215,'HEC-ResSim');
Insert into Skills (DisciplineId,Id,[Name]) values (26,216,'HEC-RAS 5');
Insert into Skills (DisciplineId,Id,[Name]) values (26,217,'HEC-FIA');
Insert into Skills (DisciplineId,Id,[Name]) values (26,218,'HEC-DSS');
Insert into Skills (DisciplineId,Id,[Name]) values (26,219,'Hydraulic Toolbox');
Insert into Skills (DisciplineId,Id,[Name]) values (26,220,'Hyfran+');
Insert into Skills (DisciplineId,Id,[Name]) values (26,221,'HEC-HMS');
Insert into Skills (DisciplineId,Id,[Name]) values (26,222,'HEC-SSP');
Insert into Skills (DisciplineId,Id,[Name]) values (26,223,'HY-8');
Insert into Skills (DisciplineId,Id,[Name]) values (26,224,'LARSA');
Insert into Skills (DisciplineId,Id,[Name]) values (26,225,'MIKE11');
Insert into Skills (DisciplineId,Id,[Name]) values (26,226,'Mike21');
Insert into Skills (DisciplineId,Id,[Name]) values (26,227,'Mike-SHE');
Insert into Skills (DisciplineId,Id,[Name]) values (26,228,'Peak FQ');
Insert into Skills (DisciplineId,Id,[Name]) values (26,229,'PhreeqC');
Insert into Skills (DisciplineId,Id,[Name]) values (26,230,'PMWin');
Insert into Skills (DisciplineId,Id,[Name]) values (26,231,'Gawser');
Insert into Skills (DisciplineId,Id,[Name]) values (26,232,'TEDDS');
Insert into Skills (DisciplineId,Id,[Name]) values (26,233,'R');
Insert into Skills (DisciplineId,Id,[Name]) values (26,234,'Seep-W');
Insert into Skills (DisciplineId,Id,[Name]) values (26,235,'Surfer 10');
Insert into Skills (DisciplineId,Id,[Name]) values (26,236,'SWMHYMO/OTTHYMO');
Insert into Skills (DisciplineId,Id,[Name]) values (26,237,'UBC Watershed Model/Raven');
Insert into Skills (DisciplineId,Id,[Name]) values (26,238,'VBA (Excel)');
Insert into Skills (DisciplineId,Id,[Name]) values (26,239,'Visual Modflow');
Insert into Skills (DisciplineId,Id,[Name]) values (26,240,'Water Balance Model');
Insert into Skills (DisciplineId,Id,[Name]) values (26,241,'QualHYMO/QHM');
Insert into Skills (DisciplineId,Id,[Name]) values (11,20,'Absorbent / Amended Topsoil');
Insert into Skills (DisciplineId,Id,[Name]) values (11,21,'Artificial Turf Fields');
Insert into Skills (DisciplineId,Id,[Name]) values (11,22,'Bioswales');
Insert into Skills (DisciplineId,Id,[Name]) values (11,23,'Coalescing Plate Oil-Water Separators');
Insert into Skills (DisciplineId,Id,[Name]) values (11,24,'Constructed Wetland Design');
Insert into Skills (DisciplineId,Id,[Name]) values (11,25,'Erosion & Sediment Control Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (11,26,'Highway Drainage');
Insert into Skills (DisciplineId,Id,[Name]) values (11,27,'Hydrodynamic Separators');
Insert into Skills (DisciplineId,Id,[Name]) values (11,28,'Integrated Stormwater Management Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (11,29,'Permeable Pavement');
Insert into Skills (DisciplineId,Id,[Name]) values (11,30,'Pollutant Loading Calculations');
Insert into Skills (DisciplineId,Id,[Name]) values (11,31,'Rain Gardens');
Insert into Skills (DisciplineId,Id,[Name]) values (11,32,'Rainwater Management');
Insert into Skills (DisciplineId,Id,[Name]) values (11,33,'Rural Drainage Study');
Insert into Skills (DisciplineId,Id,[Name]) values (11,34,'Sediment Control');
Insert into Skills (DisciplineId,Id,[Name]) values (11,35,'Stormwater Collection System Modelling');
Insert into Skills (DisciplineId,Id,[Name]) values (11,36,'Pond Design-Dry');
Insert into Skills (DisciplineId,Id,[Name]) values (11,37,'Pond Design-Wet');
Insert into Skills (DisciplineId,Id,[Name]) values (11,38,'Pump Stations-Stormwater');
Insert into Skills (DisciplineId,Id,[Name]) values (11,39,'Road Drainage');
Insert into Skills (DisciplineId,Id,[Name]) values (11,40,'Urban Drainage Study');
Insert into Skills (DisciplineId,Id,[Name]) values (11,41,'Urban Runoff Water Quality');
Insert into Skills (DisciplineId,Id,[Name]) values (208,10,'Advanced Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (208,11,'Base Isolation');
Insert into Skills (DisciplineId,Id,[Name]) values (208,12,'Bearings');
Insert into Skills (DisciplineId,Id,[Name]) values (208,13,'Blast Resistant Design');
Insert into Skills (DisciplineId,Id,[Name]) values (208,14,'Climatic Loading');
Insert into Skills (DisciplineId,Id,[Name]) values (208,15,'Demolition');
Insert into Skills (DisciplineId,Id,[Name]) values (208,16,'Explosives');
Insert into Skills (DisciplineId,Id,[Name]) values (208,17,'Fabrication');
Insert into Skills (DisciplineId,Id,[Name]) values (208,18,'Falsework');
Insert into Skills (DisciplineId,Id,[Name]) values (208,19,'Foundations');
Insert into Skills (DisciplineId,Id,[Name]) values (209,10,'Abutments');
Insert into Skills (DisciplineId,Id,[Name]) values (209,11,'Arch');
Insert into Skills (DisciplineId,Id,[Name]) values (209,12,'Asset Life Cycle Management');
Insert into Skills (DisciplineId,Id,[Name]) values (209,13,'Bearings');
Insert into Skills (DisciplineId,Id,[Name]) values (209,14,'Cable Stayed');
Insert into Skills (DisciplineId,Id,[Name]) values (209,15,'Cast-In-Place');
Insert into Skills (DisciplineId,Id,[Name]) values (209,16,'Composite');
Insert into Skills (DisciplineId,Id,[Name]) values (209,17,'Concrete-Post-Tensioned');
Insert into Skills (DisciplineId,Id,[Name]) values (209,18,'Concrete-Precast');
Insert into Skills (DisciplineId,Id,[Name]) values (209,19,'Concrete- Prestressed');
Insert into Skills (DisciplineId,Id,[Name]) values (209,20,'Construction-Substructures');
Insert into Skills (DisciplineId,Id,[Name]) values (209,21,'Construction-Decks');
Insert into Skills (DisciplineId,Id,[Name]) values (209,22,'Culverts & Buried Structures');
Insert into Skills (DisciplineId,Id,[Name]) values (209,23,'Deck Joints');
Insert into Skills (DisciplineId,Id,[Name]) values (209,24,'Demolition');
Insert into Skills (DisciplineId,Id,[Name]) values (209,25,'Erection Engineering');
Insert into Skills (DisciplineId,Id,[Name]) values (209,26,'Fabrication-Precast Concrete');
Insert into Skills (DisciplineId,Id,[Name]) values (209,27,'Fabrication-Steel');
Insert into Skills (DisciplineId,Id,[Name]) values (209,28,'Hydraulics');
Insert into Skills (DisciplineId,Id,[Name]) values (209,29,'Ice Bridge');
Insert into Skills (DisciplineId,Id,[Name]) values (209,30,'Ice Effects');
Insert into Skills (DisciplineId,Id,[Name]) values (209,31,'Industrial');
Insert into Skills (DisciplineId,Id,[Name]) values (209,32,'Inspection-Construction');
Insert into Skills (DisciplineId,Id,[Name]) values (209,33,'Inspection-Existing');
Insert into Skills (DisciplineId,Id,[Name]) values (209,34,'Isolation & Damping');
Insert into Skills (DisciplineId,Id,[Name]) values (209,35,'Launching');
Insert into Skills (DisciplineId,Id,[Name]) values (209,36,'Multi-Span');
Insert into Skills (DisciplineId,Id,[Name]) values (209,37,'Non-linear & Advanced Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (209,38,'Orthotropic Decks');
Insert into Skills (DisciplineId,Id,[Name]) values (209,39,'Overpass');
Insert into Skills (DisciplineId,Id,[Name]) values (209,40,'Pedestrian');
Insert into Skills (DisciplineId,Id,[Name]) values (209,41,'Piled Foundations');
Insert into Skills (DisciplineId,Id,[Name]) values (209,42,'Portable');
Insert into Skills (DisciplineId,Id,[Name]) values (209,43,'Proprietary Systems');
Insert into Skills (DisciplineId,Id,[Name]) values (209,44,'Railway');
Insert into Skills (DisciplineId,Id,[Name]) values (209,45,'Rehabilitation');
Insert into Skills (DisciplineId,Id,[Name]) values (209,46,'Rehabilitation-Decks');
Insert into Skills (DisciplineId,Id,[Name]) values (209,47,'Rehabilitation-Joists & Bearings');
Insert into Skills (DisciplineId,Id,[Name]) values (209,48,'Retaining Walls-Cuts');
Insert into Skills (DisciplineId,Id,[Name]) values (209,49,'Retaining Walls-Fills');
Insert into Skills (DisciplineId,Id,[Name]) values (209,50,'Rigid Frame');
Insert into Skills (DisciplineId,Id,[Name]) values (209,51,'River');
Insert into Skills (DisciplineId,Id,[Name]) values (209,52,'Scour');
Insert into Skills (DisciplineId,Id,[Name]) values (209,53,'Segmental');
Insert into Skills (DisciplineId,Id,[Name]) values (209,54,'Seismic Design');
Insert into Skills (DisciplineId,Id,[Name]) values (209,55,'Seismic Retrofit');
Insert into Skills (DisciplineId,Id,[Name]) values (209,56,'Sign Gantries');
Insert into Skills (DisciplineId,Id,[Name]) values (209,57,'Steel');
Insert into Skills (DisciplineId,Id,[Name]) values (209,58,'Stress Ribbon');
Insert into Skills (DisciplineId,Id,[Name]) values (209,59,'Suspension');
Insert into Skills (DisciplineId,Id,[Name]) values (209,60,'Temporary');
Insert into Skills (DisciplineId,Id,[Name]) values (209,61,'Timber');
Insert into Skills (DisciplineId,Id,[Name]) values (209,62,'Trestle');
Insert into Skills (DisciplineId,Id,[Name]) values (209,63,'Truss');
Insert into Skills (DisciplineId,Id,[Name]) values (209,64,'Wearing Surfaces');
Insert into Skills (DisciplineId,Id,[Name]) values (209,65,'Widening');
Insert into Skills (DisciplineId,Id,[Name]) values (209,66,'Wind Engineering & Design');
Insert into Skills (DisciplineId,Id,[Name]) values (210,10,'Commercial');
Insert into Skills (DisciplineId,Id,[Name]) values (210,11,'Concrete');
Insert into Skills (DisciplineId,Id,[Name]) values (210,12,'Construction');
Insert into Skills (DisciplineId,Id,[Name]) values (210,13,'Demountable');
Insert into Skills (DisciplineId,Id,[Name]) values (210,14,'Education & Research');
Insert into Skills (DisciplineId,Id,[Name]) values (210,15,'Emergency & Security');
Insert into Skills (DisciplineId,Id,[Name]) values (210,16,'Government');
Insert into Skills (DisciplineId,Id,[Name]) values (210,17,'High Rise');
Insert into Skills (DisciplineId,Id,[Name]) values (210,18,'Historic');
Insert into Skills (DisciplineId,Id,[Name]) values (210,19,'Industrial');
Insert into Skills (DisciplineId,Id,[Name]) values (210,20,'Infrastructure');
Insert into Skills (DisciplineId,Id,[Name]) values (210,21,'Office');
Insert into Skills (DisciplineId,Id,[Name]) values (210,22,'Public & Institutional');
Insert into Skills (DisciplineId,Id,[Name]) values (210,23,'Renovation');
Insert into Skills (DisciplineId,Id,[Name]) values (210,24,'Residential');
Insert into Skills (DisciplineId,Id,[Name]) values (210,25,'Seismic Design');
Insert into Skills (DisciplineId,Id,[Name]) values (210,26,'Seismic Retrofit');
Insert into Skills (DisciplineId,Id,[Name]) values (210,27,'Sports & Cultural');
Insert into Skills (DisciplineId,Id,[Name]) values (210,28,'Steel');
Insert into Skills (DisciplineId,Id,[Name]) values (210,29,'Transportation');
Insert into Skills (DisciplineId,Id,[Name]) values (210,30,'Wood');
Insert into Skills (DisciplineId,Id,[Name]) values (211,10,'Canals & Locks');
Insert into Skills (DisciplineId,Id,[Name]) values (211,11,'Cranes & Rigging');
Insert into Skills (DisciplineId,Id,[Name]) values (211,12,'Culverts');
Insert into Skills (DisciplineId,Id,[Name]) values (211,13,'Culverts for Fish Passage');
Insert into Skills (DisciplineId,Id,[Name]) values (211,14,'Dams');
Insert into Skills (DisciplineId,Id,[Name]) values (211,15,'Dam Hydraulics');
Insert into Skills (DisciplineId,Id,[Name]) values (211,16,'Dam Safety Reviews');
Insert into Skills (DisciplineId,Id,[Name]) values (211,17,'Dykes');
Insert into Skills (DisciplineId,Id,[Name]) values (211,18,'Fish Friendly Drainage Pumping');
Insert into Skills (DisciplineId,Id,[Name]) values (211,19,'Fish Friendly Hydraulic Design');
Insert into Skills (DisciplineId,Id,[Name]) values (211,20,'Grade Control Structures');
Insert into Skills (DisciplineId,Id,[Name]) values (211,21,'High Mast Structures');
Insert into Skills (DisciplineId,Id,[Name]) values (211,22,'Intakes');
Insert into Skills (DisciplineId,Id,[Name]) values (211,23,'Marine');
Insert into Skills (DisciplineId,Id,[Name]) values (211,24,'Outfalls');
Insert into Skills (DisciplineId,Id,[Name]) values (211,25,'Reservoirs/Tanks/Water Retaining');
Insert into Skills (DisciplineId,Id,[Name]) values (211,26,'Retaining Walls');
Insert into Skills (DisciplineId,Id,[Name]) values (211,27,'Riffle');
Insert into Skills (DisciplineId,Id,[Name]) values (211,28,'Rockfall Protection');
Insert into Skills (DisciplineId,Id,[Name]) values (211,29,'Shafts');
Insert into Skills (DisciplineId,Id,[Name]) values (211,30,'Spillways');
Insert into Skills (DisciplineId,Id,[Name]) values (211,31,'Towers');
Insert into Skills (DisciplineId,Id,[Name]) values (211,32,'Tunnels');
Insert into Skills (DisciplineId,Id,[Name]) values (212,10,'Envision');
Insert into Skills (DisciplineId,Id,[Name]) values (212,11,'Environmental Risk Assessments');
Insert into Skills (DisciplineId,Id,[Name]) values (212,12,'ISO 14001');
Insert into Skills (DisciplineId,Id,[Name]) values (212,13,'LEED');
Insert into Skills (DisciplineId,Id,[Name]) values (212,14,'Living Building Challenge');
Insert into Skills (DisciplineId,Id,[Name]) values (212,15,'Sustainable Design');
Insert into Skills (DisciplineId,Id,[Name]) values (212,16,'Sustainable Management');
Insert into Skills (DisciplineId,Id,[Name]) values (212,17,'Sustainability Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (23,20,'Traffic Management Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (24,30,'Active Transportation');
Insert into Skills (DisciplineId,Id,[Name]) values (24,31,'Complete Streets');
Insert into Skills (DisciplineId,Id,[Name]) values (9,20,'Auger Boring');
Insert into Skills (DisciplineId,Id,[Name]) values (9,21,'Cured-In-Place Pipe Relining');
Insert into Skills (DisciplineId,Id,[Name]) values (9,22,'Horizontal Directional Drilling');
Insert into Skills (DisciplineId,Id,[Name]) values (9,23,'Microtunneling');
Insert into Skills (DisciplineId,Id,[Name]) values (9,24,'Pipe Ramming');
Insert into Skills (DisciplineId,Id,[Name]) values (9,25,'Tunneling');
Insert into Skills (DisciplineId,Id,[Name]) values (13,60,'Master Plans');
Insert into Skills (DisciplineId,Id,[Name]) values (13,61,'Water Quality Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (12,200,'Bench Scale Testing');
Insert into Skills (DisciplineId,Id,[Name]) values (12,201,'Drinking Water Safety Plan & Source-to-Tap Risk Assessments');
Insert into Skills (DisciplineId,Id,[Name]) values (12,202,'Emergency Response Process Upset Troubleshooting');
Insert into Skills (DisciplineId,Id,[Name]) values (12,203,'HAZOP, Vulnerability & Detailed Condition Assessments');
Insert into Skills (DisciplineId,Id,[Name]) values (12,204,'Process Troubleshooting');
Insert into Skills (DisciplineId,Id,[Name]) values (12,205,'Regulatory Compliance & Needs Assessments');
Insert into Skills (DisciplineId,Id,[Name]) values (12,206,'Treatability Assessment');
Insert into Skills (DisciplineId,Id,[Name]) values (12,207,'Water Quality Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (213,10,'Agricultural Irrigation');
Insert into Skills (DisciplineId,Id,[Name]) values (213,11,'Air Photo Terrain Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (213,12,'Hydro Power');
Insert into Skills (DisciplineId,Id,[Name]) values (213,13,'Irrigation');
Insert into Skills (DisciplineId,Id,[Name]) values (213,14,'Land Use Studies');
Insert into Skills (DisciplineId,Id,[Name]) values (213,15,'Limnology');
Insert into Skills (DisciplineId,Id,[Name]) values (213,16,'Reservoir Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (213,17,'Risk Assessments');
Insert into Skills (DisciplineId,Id,[Name]) values (213,18,'Sediment Yield Analysis');
Insert into Skills (DisciplineId,Id,[Name]) values (213,19,'Source Water Assessments');
Insert into Skills (DisciplineId,Id,[Name]) values (213,20,'Water Balance Modelling and Assessments');
Insert into Skills (DisciplineId,Id,[Name]) values (213,21,'Water Licensing Support');
Insert into Skills (DisciplineId,Id,[Name]) values (213,22,'Water Supply-Demand Investigations/Mgmnt');
SET IDENTITY_INSERT [dbo].[Skills] OFF


Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 1 , 1 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 1 , 1 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 1 , 1 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 1 , 1 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 1 , 1 , 5 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 1 , 2 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 1 , 2 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 1 , 2 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 1 , 2 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 1 , 2 , 5 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 2 , 1 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 2 , 1 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 2 , 1 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 2 , 1 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 2 , 1 , 5 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 2 , 2 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 2 , 2 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 2 , 2 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 2 , 2 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 2 , 2 , 5 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 3 , 1 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 3 , 1 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 3 , 1 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 3 , 1 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 3 , 1 , 5 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 3 , 2 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 3 , 2 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 3 , 2 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 3 , 2 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 3 , 2 , 5 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 4 , 1 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 4 , 1 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 4 , 1 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 4 , 1 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 4 , 1 , 5 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 4 , 2 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 4 , 2 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 4 , 2 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 4 , 2 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 4 , 2 , 5 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 5 , 1 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 5 , 1 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 5 , 1 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 5 , 1 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 5 , 1 , 5 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 5 , 2 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 5 , 2 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 5 , 2 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 5 , 2 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 5 , 2 , 5 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 6 , 1 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 6 , 1 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 6 , 1 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 6 , 1 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 6 , 1 , 5 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 6 , 2 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 6 , 2 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 6 , 2 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 6 , 2 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 6 , 2 , 5 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 7 , 1 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 7 , 1 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 7 , 1 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 7 , 1 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 7 , 1 , 5 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 7 , 2 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 7 , 2 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 7 , 2 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 7 , 2 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 7 , 2 , 5 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 8 , 1 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 8 , 1 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 8 , 1 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 8 , 1 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 8 , 1 , 5 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 8 , 2 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 8 , 2 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 8 , 2 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 8 , 2 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 8 , 2 , 5 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 9 , 1 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 9 , 1 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 9 , 1 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 9 , 1 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 9 , 1 , 5 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 9 , 2 , 1 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 9 , 2 , 2 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 9 , 2 , 3 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 9 , 2 , 4 )
Insert into UserHasSkills (UserId, DisciplineId, SkillId) values ( 9 , 2 , 5 )
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 1 , 23 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 1 , 16 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 1 , 16 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 1 , 23 , ' 10+ years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 1 , 12 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 2 , 20 , ' 1-3 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 2 , 9 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 2 , 5 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 2 , 18 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 2 , 12 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 3 , 15 , ' 10+ years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 3 , 1 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 3 , 3 , ' 1-3 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 3 , 12 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 3 , 2 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 4 , 11 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 4 , 1 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 4 , 24 , ' 10+ years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 4 , 3 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 4 , 25 , ' 1-3 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 5 , 4 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 5 , 16 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 5 , 19 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 5 , 3 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 5 , 20 , ' 10+ years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 6 , 21 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 6 , 13 , ' 1-3 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 6 , 12 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 6 , 18 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 6 , 15 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 7 , 21 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 7 , 8 , ' 10+ years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 7 , 3 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 7 , 15 , ' 1-3 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 7 , 8 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 8 , 10 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 8 , 3 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 8 , 3 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 8 , 10 , ' 10+ years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 8 , 25 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 9 , 7 , ' 1-3 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 9 , 22 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 9 , 18 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 9 , 5 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 9 , 25 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 10 , 2 , ' 10+ years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 10 , 13 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 10 , 15 , ' 1-3 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 10 , 24 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 10 , 14 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 11 , 23 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 11 , 13 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 11 , 10 , ' 10+ years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 11 , 15 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 11 , 11 , ' 1-3 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 12 , 16 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 12 , 2 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 12 , 5 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 12 , 15 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 12 , 6 , ' 10+ years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 13 , 7 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 13 , 25 , ' 1-3 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 13 , 24 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 13 , 4 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 13 , 1 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 14 , 7 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 14 , 20 , ' 10+ years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 14 , 15 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 14 , 1 , ' 1-3 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 14 , 20 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 15 , 22 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 15 , 15 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 15 , 15 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 15 , 22 , ' 10+ years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 15 , 11 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 16 , 19 , ' 1-3 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 16 , 8 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 16 , 4 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 16 , 17 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 16 , 11 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 17 , 14 , ' 10+ years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 17 , 25 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 17 , 1 , ' 1-3 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 17 , 10 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 17 , 1 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 18 , 10 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 18 , 1 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 18 , 24 , ' 10+ years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 18 , 3 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 18 , 25 , ' 1-3 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 19 , 4 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 19 , 16 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 19 , 19 , ' 3-5 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 19 , 3 , ' 5-10 years ')
Insert into UserWorksDiscipline (UserId, DisciplineId, [Year]) values ( 19 , 20 , ' 10+ years ')

INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2018, 10, 63)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2018, 11, 20)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2018, 12, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2019, 1, 44)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2019, 2, 10)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2019, 3, 35)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2019, 4, 56)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2019, 5, 20)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2019, 6, 63)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2019, 7, 11)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2019, 8, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2019, 9, 46)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2019, 10, 66)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2019, 11, 22)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2019, 12, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2020, 1, 55)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2020, 2, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2020, 3, 36)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2020, 4, 22)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2020, 5, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2020, 6, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2020, 7, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2020, 8, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2020, 9, 45)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2018, 6, 44)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2018, 7, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2018, 8, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2018, 9, 25)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2018, 10, 9)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2018, 11, 42)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2018, 12, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2019, 1, 23)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2019, 2, 26)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2019, 3, 0)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2019, 4, 6)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2019, 5, 41)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2019, 6, 19)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2019, 7, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2019, 8, 52)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2019, 9, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2019, 10, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2019, 11, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2019, 12, 56)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2020, 1, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2020, 2, 56)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2020, 3, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2020, 4, 27)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 4, 2020, 5, 2)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2016, 12, 25)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2017, 1, 29)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2017, 2, 44)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2017, 3, 27)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2017, 4, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2017, 5, 26)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2017, 6, 14)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2017, 7, 57)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2017, 8, 17)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2017, 9, 34)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2017, 10, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2017, 11, 33)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2017, 12, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2018, 1, 57)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2018, 2, 65)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2018, 3, 62)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2018, 4, 61)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2018, 5, 41)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2018, 6, 24)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2018, 7, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2018, 8, 62)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2018, 9, 30)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2018, 10, 16)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 16, 2018, 11, 39)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2020, 6, 21)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2020, 7, 30)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2020, 8, 54)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2020, 9, 29)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2020, 10, 35)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2020, 11, 25)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2020, 12, 56)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2021, 1, 41)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2021, 2, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2021, 3, 0)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2021, 4, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2021, 5, 48)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2021, 6, 9)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2021, 7, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2021, 8, 65)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2021, 9, 52)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2021, 10, 34)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2021, 11, 52)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2021, 12, 29)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2022, 1, 62)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2022, 2, 14)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2022, 3, 22)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2022, 4, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (1, 9, 2022, 5, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2020, 7, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2020, 8, 33)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2020, 9, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2020, 10, 30)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2020, 11, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2020, 12, 2)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2021, 1, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2021, 2, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2021, 3, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2021, 4, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2021, 5, 54)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2021, 6, 22)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2021, 7, 55)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2021, 8, 23)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2021, 9, 35)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2021, 10, 55)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2021, 11, 39)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2021, 12, 25)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2022, 1, 33)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2022, 2, 52)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2022, 3, 55)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2022, 4, 41)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2022, 5, 9)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 7, 2022, 6, 50)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2019, 12, 23)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2020, 1, 10)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2020, 2, 62)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2020, 3, 14)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2020, 4, 13)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2020, 5, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2020, 6, 57)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2020, 7, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2020, 8, 52)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2020, 9, 52)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2020, 10, 10)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2020, 11, 33)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2020, 12, 56)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2021, 1, 29)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2021, 2, 27)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2021, 3, 46)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2021, 4, 23)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2021, 5, 4)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2021, 6, 39)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2021, 7, 62)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2021, 8, 53)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2021, 9, 28)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2021, 10, 39)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 11, 2021, 11, 48)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2019, 9, 54)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2019, 10, 52)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2019, 11, 16)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2019, 12, 36)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2020, 1, 34)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2020, 2, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2020, 3, 50)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2020, 4, 66)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2020, 5, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2020, 6, 3)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2020, 7, 30)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2020, 8, 54)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2020, 9, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2020, 10, 2)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2020, 11, 43)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2020, 12, 65)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2021, 1, 13)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2021, 2, 25)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2021, 3, 3)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2021, 4, 57)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2021, 5, 43)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2021, 6, 29)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2021, 7, 48)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 15, 2021, 8, 0)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2016, 10, 20)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2016, 11, 28)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2016, 12, 13)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2017, 1, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2017, 2, 43)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2017, 3, 3)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2017, 4, 19)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2017, 5, 39)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2017, 6, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2017, 7, 53)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2017, 8, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2017, 9, 61)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2017, 10, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2017, 11, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2017, 12, 29)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2018, 1, 30)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2018, 2, 18)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2018, 3, 22)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2018, 4, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2018, 5, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2018, 6, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2018, 7, 33)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2018, 8, 50)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (2, 19, 2018, 9, 19)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2017, 12, 6)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2018, 1, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2018, 2, 61)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2018, 3, 7)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2018, 4, 29)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2018, 5, 8)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2018, 6, 66)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2018, 7, 57)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2018, 8, 50)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2018, 9, 33)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2018, 10, 10)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2018, 11, 20)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2018, 12, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2019, 1, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2019, 2, 3)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2019, 3, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2019, 4, 10)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2019, 5, 55)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2019, 6, 29)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2019, 7, 11)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2019, 8, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2019, 9, 0)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2019, 10, 31)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 16, 2019, 11, 18)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2018, 11, 39)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2018, 12, 3)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2019, 1, 65)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2019, 2, 57)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2019, 3, 24)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2019, 4, 45)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2019, 5, 42)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2019, 6, 22)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2019, 7, 37)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2019, 8, 10)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2019, 9, 57)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2019, 10, 62)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2019, 11, 23)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2019, 12, 19)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2020, 1, 55)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2020, 2, 52)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2020, 3, 10)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2020, 4, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2020, 5, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2020, 6, 63)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2020, 7, 56)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2020, 8, 10)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2020, 9, 16)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 13, 2020, 10, 25)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2017, 7, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2017, 8, 43)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2017, 9, 63)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2017, 10, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2017, 11, 46)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2017, 12, 53)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2018, 1, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2018, 2, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2018, 3, 28)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2018, 4, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2018, 5, 20)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2018, 6, 9)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2018, 7, 44)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2018, 8, 48)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2018, 9, 43)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2018, 10, 56)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2018, 11, 44)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2018, 12, 62)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2019, 1, 2)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2019, 2, 43)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2019, 3, 4)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2019, 4, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2019, 5, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 7, 2019, 6, 41)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2018, 10, 62)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2018, 11, 12)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2018, 12, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2019, 1, 33)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2019, 2, 61)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2019, 3, 12)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2019, 4, 30)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2019, 5, 19)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2019, 6, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2019, 7, 10)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2019, 8, 8)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2019, 9, 23)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2019, 10, 42)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2019, 11, 31)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2019, 12, 22)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2020, 1, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2020, 2, 17)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2020, 3, 13)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2020, 4, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2020, 5, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2020, 6, 53)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2020, 7, 9)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2020, 8, 0)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (3, 2, 2020, 9, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2018, 8, 45)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2018, 9, 29)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2018, 10, 11)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2018, 11, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2018, 12, 11)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2019, 1, 24)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2019, 2, 51)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2019, 3, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2019, 4, 63)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2019, 5, 33)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2019, 6, 25)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2019, 7, 35)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2019, 8, 27)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2019, 9, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2019, 10, 50)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2019, 11, 42)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2019, 12, 61)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2020, 1, 39)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2020, 2, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2020, 3, 53)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2020, 4, 12)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2020, 5, 51)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2020, 6, 27)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 1, 2020, 7, 4)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2017, 1, 11)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2017, 2, 48)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2017, 3, 61)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2017, 4, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2017, 5, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2017, 6, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2017, 7, 24)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2017, 8, 54)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2017, 9, 39)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2017, 10, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2017, 11, 50)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2017, 12, 31)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2018, 1, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2018, 2, 0)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2018, 3, 22)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2018, 4, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2018, 5, 37)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2018, 6, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2018, 7, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2018, 8, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2018, 9, 61)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2018, 10, 36)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2018, 11, 57)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 18, 2018, 12, 27)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2020, 2, 41)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2020, 3, 9)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2020, 4, 37)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2020, 5, 63)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2020, 6, 28)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2020, 7, 50)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2020, 8, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2020, 9, 34)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2020, 10, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2020, 11, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2020, 12, 55)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2021, 1, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2021, 2, 7)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2021, 3, 25)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2021, 4, 26)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2021, 5, 19)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2021, 6, 2)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2021, 7, 18)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2021, 8, 18)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2021, 9, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2021, 10, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2021, 11, 6)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2021, 12, 46)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 9, 2022, 1, 28)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2020, 4, 52)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2020, 5, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2020, 6, 10)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2020, 7, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2020, 8, 8)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2020, 9, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2020, 10, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2020, 11, 11)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2020, 12, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2021, 1, 63)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2021, 2, 20)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2021, 3, 33)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2021, 4, 53)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2021, 5, 53)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2021, 6, 11)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2021, 7, 54)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2021, 8, 27)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2021, 9, 30)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2021, 10, 22)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2021, 11, 53)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2021, 12, 29)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2022, 1, 45)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2022, 2, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (4, 15, 2022, 3, 65)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2017, 2, 56)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2017, 3, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2017, 4, 46)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2017, 5, 14)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2017, 6, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2017, 7, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2017, 8, 0)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2017, 9, 54)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2017, 10, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2017, 11, 52)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2017, 12, 57)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2018, 1, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2018, 2, 6)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2018, 3, 8)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2018, 4, 2)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2018, 5, 3)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2018, 6, 21)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2018, 7, 34)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2018, 8, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2018, 9, 46)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2018, 10, 14)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2018, 11, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2018, 12, 63)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 15, 2019, 1, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2020, 5, 55)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2020, 6, 50)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2020, 7, 22)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2020, 8, 16)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2020, 9, 16)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2020, 10, 12)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2020, 11, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2020, 12, 28)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2021, 1, 10)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2021, 2, 28)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2021, 3, 30)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2021, 4, 2)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2021, 5, 7)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2021, 6, 50)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2021, 7, 0)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2021, 8, 51)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2021, 9, 51)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2021, 10, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2021, 11, 24)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2021, 12, 56)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2022, 1, 25)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2022, 2, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2022, 3, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 12, 2022, 4, 41)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2017, 6, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2017, 7, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2017, 8, 0)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2017, 9, 39)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2017, 10, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2017, 11, 48)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2017, 12, 20)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2018, 1, 18)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2018, 2, 48)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2018, 3, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2018, 4, 16)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2018, 5, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2018, 6, 62)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2018, 7, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2018, 8, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2018, 9, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2018, 10, 17)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2018, 11, 56)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2018, 12, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2019, 1, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2019, 2, 28)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2019, 3, 37)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2019, 4, 19)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 9, 2019, 5, 44)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2018, 3, 8)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2018, 4, 8)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2018, 5, 53)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2018, 6, 54)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2018, 7, 34)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2018, 8, 4)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2018, 9, 44)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2018, 10, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2018, 11, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2018, 12, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2019, 1, 8)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2019, 2, 43)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2019, 3, 16)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2019, 4, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2019, 5, 37)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2019, 6, 61)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2019, 7, 4)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2019, 8, 62)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2019, 9, 7)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2019, 10, 24)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2019, 11, 44)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2019, 12, 17)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2020, 1, 8)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (5, 11, 2020, 2, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2017, 1, 63)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2017, 2, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2017, 3, 65)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2017, 4, 31)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2017, 5, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2017, 6, 56)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2017, 7, 53)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2017, 8, 65)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2017, 9, 14)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2017, 10, 57)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2017, 11, 7)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2017, 12, 29)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2018, 1, 18)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2018, 2, 41)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2018, 3, 50)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2018, 4, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2018, 5, 41)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2018, 6, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2018, 7, 66)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2018, 8, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2018, 9, 16)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2018, 10, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2018, 11, 17)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 11, 2018, 12, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2020, 11, 31)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2020, 12, 29)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2021, 1, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2021, 2, 14)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2021, 3, 4)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2021, 4, 25)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2021, 5, 29)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2021, 6, 10)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2021, 7, 37)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2021, 8, 65)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2021, 9, 22)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2021, 10, 48)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2021, 11, 46)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2021, 12, 57)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2022, 1, 61)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2022, 2, 21)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2022, 3, 26)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2022, 4, 39)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2022, 5, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2022, 6, 42)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2022, 7, 53)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2022, 8, 66)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2022, 9, 57)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 16, 2022, 10, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 1, 7)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 2, 22)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 3, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 4, 2)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 5, 62)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 6, 12)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 7, 44)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 8, 36)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 9, 16)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 10, 55)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 11, 23)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 12, 55)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2020, 1, 35)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2020, 2, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2020, 3, 61)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2020, 4, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2020, 5, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2020, 6, 17)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2020, 7, 43)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2020, 8, 30)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2020, 9, 11)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2020, 10, 44)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2020, 11, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2020, 12, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2018, 4, 30)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2018, 5, 20)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2018, 6, 16)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2018, 7, 39)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2018, 8, 42)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2018, 9, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2018, 10, 17)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2018, 11, 30)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2018, 12, 16)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 1, 24)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 2, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 3, 8)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 4, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 5, 21)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 6, 10)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 7, 7)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 8, 2)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 9, 9)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 10, 0)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 11, 21)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2019, 12, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2020, 1, 18)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2020, 2, 12)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (6, 12, 2020, 3, 23)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2020, 1, 37)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2020, 2, 48)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2020, 3, 2)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2020, 4, 42)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2020, 5, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2020, 6, 17)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2020, 7, 37)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2020, 8, 24)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2020, 9, 54)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2020, 10, 36)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2020, 11, 25)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2020, 12, 13)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2021, 1, 9)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2021, 2, 36)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2021, 3, 50)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2021, 4, 8)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2021, 5, 65)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2021, 6, 33)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2021, 7, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2021, 8, 12)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2021, 9, 36)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2021, 10, 54)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2021, 11, 39)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 15, 2021, 12, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2017, 9, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2017, 10, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2017, 11, 8)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2017, 12, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2018, 1, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2018, 2, 9)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2018, 3, 12)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2018, 4, 0)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2018, 5, 12)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2018, 6, 50)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2018, 7, 51)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2018, 8, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2018, 9, 0)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2018, 10, 4)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2018, 11, 55)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2018, 12, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2019, 1, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2019, 2, 36)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2019, 3, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2019, 4, 17)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2019, 5, 8)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2019, 6, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2019, 7, 31)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 13, 2019, 8, 30)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2019, 3, 65)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2019, 4, 56)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2019, 5, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2019, 6, 45)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2019, 7, 31)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2019, 8, 4)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2019, 9, 25)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2019, 10, 14)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2019, 11, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2019, 12, 46)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2020, 1, 61)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2020, 2, 2)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2020, 3, 20)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2020, 4, 37)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2020, 5, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2020, 6, 21)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2020, 7, 6)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2020, 8, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2020, 9, 43)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2020, 10, 24)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2020, 11, 10)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2020, 12, 43)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2021, 1, 33)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 16, 2021, 2, 65)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2020, 5, 50)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2020, 6, 22)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2020, 7, 4)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2020, 8, 21)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2020, 9, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2020, 10, 18)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2020, 11, 33)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2020, 12, 4)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2021, 1, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2021, 2, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2021, 3, 24)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2021, 4, 4)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2021, 5, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2021, 6, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2021, 7, 30)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2021, 8, 14)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2021, 9, 61)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2021, 10, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2021, 11, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2021, 12, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2022, 1, 18)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2022, 2, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2022, 3, 33)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (7, 2, 2022, 4, 4)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2017, 8, 16)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2017, 9, 18)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2017, 10, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2017, 11, 61)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2017, 12, 54)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2018, 1, 28)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2018, 2, 50)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2018, 3, 14)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2018, 4, 23)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2018, 5, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2018, 6, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2018, 7, 12)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2018, 8, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2018, 9, 11)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2018, 10, 20)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2018, 11, 41)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2018, 12, 2)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2019, 1, 16)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2019, 2, 14)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2019, 3, 44)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2019, 4, 6)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2019, 5, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2019, 6, 10)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 18, 2019, 7, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2016, 3, 19)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2016, 4, 28)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2016, 5, 18)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2016, 6, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2016, 7, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2016, 8, 23)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2016, 9, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2016, 10, 62)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2016, 11, 53)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2016, 12, 42)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2017, 1, 26)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2017, 2, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2017, 3, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2017, 4, 7)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2017, 5, 43)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2017, 6, 31)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2017, 7, 66)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2017, 8, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2017, 9, 31)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2017, 10, 7)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2017, 11, 24)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2017, 12, 21)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2018, 1, 31)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2018, 2, 34)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2017, 9, 24)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2017, 10, 21)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2017, 11, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2017, 12, 18)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2018, 1, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2018, 2, 65)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2018, 3, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2018, 4, 7)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2018, 5, 35)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2018, 6, 56)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2018, 7, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2018, 8, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2018, 9, 45)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2018, 10, 19)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2018, 11, 11)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2018, 12, 66)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2019, 1, 35)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2019, 2, 39)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2019, 3, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2019, 4, 13)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2019, 5, 35)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2019, 6, 61)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2019, 7, 18)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 13, 2019, 8, 19)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2019, 2, 34)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2019, 3, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2019, 4, 35)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2019, 5, 34)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2019, 6, 26)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2019, 7, 24)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2019, 8, 63)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2019, 9, 9)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2019, 10, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2019, 11, 62)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2019, 12, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2020, 1, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2020, 2, 2)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2020, 3, 51)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2020, 4, 8)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2020, 5, 16)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2020, 6, 14)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2020, 7, 62)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2020, 8, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2020, 9, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2020, 10, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2020, 11, 34)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2020, 12, 17)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (8, 6, 2021, 1, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2017, 9, 10)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2017, 10, 61)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2017, 11, 2)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2017, 12, 13)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2018, 1, 3)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2018, 2, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2018, 3, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2018, 4, 34)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2018, 5, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2018, 6, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2018, 7, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2018, 8, 42)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2018, 9, 44)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2018, 10, 52)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2018, 11, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2018, 12, 9)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2019, 1, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2019, 2, 57)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2019, 3, 42)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2019, 4, 16)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2019, 5, 19)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2019, 6, 50)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2019, 7, 7)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 10, 2019, 8, 26)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2018, 9, 35)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2018, 10, 11)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2018, 11, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2018, 12, 35)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2019, 1, 20)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2019, 2, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2019, 3, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2019, 4, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2019, 5, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2019, 6, 46)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2019, 7, 4)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2019, 8, 6)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2019, 9, 55)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2019, 10, 35)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2019, 11, 18)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2019, 12, 65)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2020, 1, 39)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2020, 2, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2020, 3, 42)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2020, 4, 51)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2020, 5, 6)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2020, 6, 56)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2020, 7, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 4, 2020, 8, 17)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2016, 12, 11)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2017, 1, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2017, 2, 56)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2017, 3, 2)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2017, 4, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2017, 5, 35)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2017, 6, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2017, 7, 62)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2017, 8, 42)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2017, 9, 3)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2017, 10, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2017, 11, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2017, 12, 9)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2018, 1, 19)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2018, 2, 7)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2018, 3, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2018, 4, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2018, 5, 3)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2018, 6, 52)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2018, 7, 23)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2018, 8, 24)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2018, 9, 47)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2018, 10, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 20, 2018, 11, 43)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2019, 7, 43)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2019, 8, 36)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2019, 9, 24)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2019, 10, 43)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2019, 11, 27)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2019, 12, 7)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2020, 1, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2020, 2, 45)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2020, 3, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2020, 4, 6)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2020, 5, 42)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2020, 6, 44)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2020, 7, 27)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2020, 8, 53)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2020, 9, 11)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2020, 10, 20)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2020, 11, 26)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2020, 12, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2021, 1, 61)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2021, 2, 48)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2021, 3, 65)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2021, 4, 14)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2021, 5, 11)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (9, 6, 2021, 6, 0)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2016, 5, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2016, 6, 34)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2016, 7, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2016, 8, 54)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2016, 9, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2016, 10, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2016, 11, 53)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2016, 12, 35)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2017, 1, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2017, 2, 29)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2017, 3, 17)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2017, 4, 27)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2017, 5, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2017, 6, 11)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2017, 7, 30)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2017, 8, 52)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2017, 9, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2017, 10, 44)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2017, 11, 58)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2017, 12, 22)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2018, 1, 30)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2018, 2, 43)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2018, 3, 46)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2018, 4, 57)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2018, 6, 19)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2018, 7, 63)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2018, 8, 12)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2018, 9, 14)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2018, 10, 18)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2018, 11, 15)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2018, 12, 60)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2019, 1, 7)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2019, 2, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2019, 3, 64)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2019, 4, 48)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2019, 5, 26)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2019, 6, 37)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2019, 7, 44)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2019, 8, 29)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2019, 9, 14)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2019, 10, 30)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2019, 11, 23)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2019, 12, 4)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2020, 1, 66)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2020, 2, 29)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2020, 3, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2020, 4, 63)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 6, 2020, 5, 9)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2016, 9, 21)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2016, 10, 39)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2016, 11, 26)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2016, 12, 22)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2017, 1, 54)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2017, 2, 66)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2017, 3, 35)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2017, 4, 23)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2017, 5, 5)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2017, 6, 23)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2017, 7, 52)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2017, 8, 49)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2017, 9, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2017, 10, 48)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2017, 11, 4)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2017, 12, 32)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2018, 1, 8)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2018, 2, 35)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2018, 3, 21)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2018, 4, 21)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2018, 5, 41)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2018, 6, 53)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2018, 7, 29)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 11, 2018, 8, 28)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2020, 8, 22)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2020, 9, 7)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2020, 10, 42)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2020, 11, 12)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2020, 12, 17)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2021, 1, 9)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2021, 2, 59)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2021, 3, 25)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2021, 4, 12)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2021, 5, 40)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2021, 6, 4)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2021, 7, 14)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2021, 8, 42)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2021, 9, 42)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2021, 10, 38)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2021, 11, 48)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2021, 12, 45)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2022, 1, 50)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2022, 2, 1)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2022, 3, 6)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2022, 4, 10)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2022, 5, 14)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2022, 6, 20)
INSERT INTO UserHours (UserId, ProjectId, [Year], [Month], [Hours]) VALUES (10, 18, 2022, 7, 30)

INSERT INTO Admin (Username, Password) VALUES ('turtle', '319')