SET IDENTITY_INSERT [dbo].[Verzehr] ON
INSERT INTO [dbo].[Verzehr] ([VerzehrId], [PersonId], [EssenId], [Anzahl]) VALUES (1, 1, 1, 2)
INSERT INTO [dbo].[Verzehr] ([VerzehrId], [PersonId], [EssenId], [Anzahl]) VALUES (2, 1, 3, 1)
INSERT INTO [dbo].[Verzehr] ([VerzehrId], [PersonId], [EssenId], [Anzahl]) VALUES (3, 2, 1, 1)
INSERT INTO [dbo].[Verzehr] ([VerzehrId], [PersonId], [EssenId], [Anzahl]) VALUES (4, 2, 4, 1)
SET IDENTITY_INSERT [dbo].[Verzehr] OFF
