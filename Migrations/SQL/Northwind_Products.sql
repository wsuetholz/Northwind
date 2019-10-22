-- Products
DELETE FROM [dbo].[Products]
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (1, N'Chai', 1, N'10 boxes x 20 bags', CAST(18.0000 AS Money), 39, 0, 10, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (2, N'Chang', 1, N'24 - 12 oz bottles', CAST(19.0000 AS Money), 17, 40, 25, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (3, N'Aniseed Syrup', 2, N'12 - 550 ml bottles', CAST(10.0000 AS Money), 13, 70, 25, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (4, N'Chef Anton''s Cajun Seasoning', 2, N'48 - 6 oz jars', CAST(22.0000 AS Money), 53, 0, 0, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (5, N'Chef Anton''s Gumbo Mix', 2, N'36 boxes', CAST(21.3500 AS Money), 0, 0, 0, 1)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (6, N'Grandma''s Boysenberry Spread', 2, N'12 - 8 oz jars', CAST(25.0000 AS Money), 120, 0, 25, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (7, N'Uncle Bob''s Organic Dried Pears', 7, N'12 - 1 lb pkgs.', CAST(30.0000 AS Money), 15, 0, 10, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (8, N'Northwoods Cranberry Sauce', 2, N'12 - 12 oz jars', CAST(40.0000 AS Money), 6, 0, 0, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (9, N'Mishi Kobe Niku', 6, N'18 - 500 g pkgs.', CAST(97.0000 AS Money), 29, 0, 0, 1)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (10, N'Ikura', 8, N'12 - 200 ml jars', CAST(31.0000 AS Money), 31, 0, 0, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (11, N'Queso Cabrales', 4, N'1 kg pkg.', CAST(21.0000 AS Money), 22, 30, 30, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (12, N'Queso Manchego La Pastora', 4, N'10 - 500 g pkgs.', CAST(38.0000 AS Money), 86, 0, 0, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (13, N'Konbu', 8, N'2 kg box', CAST(6.0000 AS Money), 24, 0, 5, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (14, N'Tofu', 7, N'40 - 100 g pkgs.', CAST(23.2500 AS Money), 35, 0, 0, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (15, N'Genen Shouyu', 2, N'24 - 250 ml bottles', CAST(15.5000 AS Money), 39, 0, 5, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (16, N'Pavlova', 3, N'32 - 500 g boxes', CAST(17.4500 AS Money), 29, 0, 10, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (17, N'Alice Mutton', 6, N'20 - 1 kg tins', CAST(39.0000 AS Money), 0, 0, 0, 1)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (18, N'Carnarvon Tigers', 8, N'16 kg pkg.', CAST(62.5000 AS Money), 42, 0, 0, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (19, N'Teatime Chocolate Biscuits', 3, N'10 boxes x 12 pieces', CAST(9.2000 AS Money), 25, 0, 5, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (20, N'Sir Rodney''s Marmalade', 3, N'30 gift boxes', CAST(81.0000 AS Money), 40, 0, 0, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (21, N'Sir Rodney''s Scones', 3, N'24 pkgs. x 4 pieces', CAST(10.0000 AS Money), 3, 40, 5, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (22, N'Gustaf''s Kn�ckebr�d', 5, N'24 - 500 g pkgs.', CAST(21.0000 AS Money), 104, 0, 25, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (23, N'Tunnbr�d', 5, N'12 - 250 g pkgs.', CAST(9.0000 AS Money), 61, 0, 25, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (24, N'Guaran� Fant�stica', 1, N'12 - 355 ml cans', CAST(4.5000 AS Money), 20, 0, 0, 1)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (25, N'NuNuCa Nu�-Nougat-Creme', 3, N'20 - 450 g glasses', CAST(14.0000 AS Money), 76, 0, 30, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (26, N'Gumb�r Gummib�rchen', 3, N'100 - 250 g bags', CAST(31.2300 AS Money), 15, 0, 0, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (27, N'Schoggi Schokolade', 3, N'100 - 100 g pieces', CAST(43.9000 AS Money), 49, 0, 30, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (28, N'R�ssle Sauerkraut', 7, N'25 - 825 g cans', CAST(45.6000 AS Money), 26, 0, 0, 1)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (29, N'Th�ringer Rostbratwurst', 6, N'50 bags x 30 sausgs.', CAST(123.7900 AS Money), 0, 0, 0, 1)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (30, N'Nord-Ost Matjeshering', 8, N'10 - 200 g glasses', CAST(25.8900 AS Money), 10, 0, 15, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (31, N'Gorgonzola Telino', 4, N'12 - 100 g pkgs', CAST(12.5000 AS Money), 0, 70, 20, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (32, N'Mascarpone Fabioli', 4, N'24 - 200 g pkgs.', CAST(32.0000 AS Money), 9, 40, 25, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (33, N'Geitost', 4, N'500 g', CAST(2.5000 AS Money), 112, 0, 20, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (34, N'Sasquatch Ale', 1, N'24 - 12 oz bottles', CAST(14.0000 AS Money), 111, 0, 15, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (35, N'Steeleye Stout', 1, N'24 - 12 oz bottles', CAST(18.0000 AS Money), 20, 0, 15, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (36, N'Inlagd Sill', 8, N'24 - 250 g  jars', CAST(19.0000 AS Money), 112, 0, 20, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (37, N'Gravad lax', 8, N'12 - 500 g pkgs.', CAST(26.0000 AS Money), 11, 50, 25, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (38, N'C�te de Blaye', 1, N'12 - 75 cl bottles', CAST(263.5000 AS Money), 17, 0, 15, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (39, N'Chartreuse verte', 1, N'750 cc per bottle', CAST(18.0000 AS Money), 69, 0, 5, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (40, N'Boston Crab Meat', 8, N'24 - 4 oz tins', CAST(18.4000 AS Money), 123, 0, 30, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (41, N'Jack''s New England Clam Chowder', 8, N'12 - 12 oz cans', CAST(9.6500 AS Money), 85, 0, 10, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (42, N'Singaporean Hokkien Fried Mee', 5, N'32 - 1 kg pkgs.', CAST(14.0000 AS Money), 26, 0, 0, 1)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (43, N'Ipoh Coffee', 1, N'16 - 500 g tins', CAST(46.0000 AS Money), 17, 10, 25, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (44, N'Gula Malacca', 2, N'20 - 2 kg bags', CAST(19.4500 AS Money), 27, 0, 15, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (45, N'Rogede sild', 8, N'1k pkg.', CAST(9.5000 AS Money), 5, 70, 15, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (46, N'Spegesild', 8, N'4 - 450 g glasses', CAST(12.0000 AS Money), 95, 0, 0, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (47, N'Zaanse koeken', 3, N'10 - 4 oz boxes', CAST(9.5000 AS Money), 36, 0, 0, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (48, N'Chocolade', 3, N'10 pkgs.', CAST(12.7500 AS Money), 15, 70, 25, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (49, N'Maxilaku', 3, N'24 - 50 g pkgs.', CAST(20.0000 AS Money), 10, 60, 15, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (50, N'Valkoinen suklaa', 3, N'12 - 100 g bars', CAST(16.2500 AS Money), 65, 0, 30, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (51, N'Manjimup Dried Apples', 7, N'50 - 300 g pkgs.', CAST(53.0000 AS Money), 20, 0, 10, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (52, N'Filo Mix', 5, N'16 - 2 kg boxes', CAST(7.0000 AS Money), 38, 0, 25, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (53, N'Perth Pasties', 6, N'48 pieces', CAST(32.8000 AS Money), 0, 0, 0, 1)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (54, N'Tourti�re', 6, N'16 pies', CAST(7.4500 AS Money), 21, 0, 10, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (55, N'P�t� chinois', 6, N'24 boxes x 2 pies', CAST(24.0000 AS Money), 115, 0, 20, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (56, N'Gnocchi di nonna Alice', 5, N'24 - 250 g pkgs.', CAST(38.0000 AS Money), 21, 10, 30, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (57, N'Ravioli Angelo', 5, N'24 - 250 g pkgs.', CAST(19.5000 AS Money), 36, 0, 20, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (58, N'Escargots de Bourgogne', 8, N'24 pieces', CAST(13.2500 AS Money), 62, 0, 20, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (59, N'Raclette Courdavault', 4, N'5 kg pkg.', CAST(55.0000 AS Money), 79, 0, 0, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (60, N'Camembert Pierrot', 4, N'15 - 300 g rounds', CAST(34.0000 AS Money), 19, 0, 0, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (61, N'Sirop d''�rable', 2, N'24 - 500 ml bottles', CAST(28.5000 AS Money), 113, 0, 25, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (62, N'Tarte au sucre', 3, N'48 pies', CAST(49.3000 AS Money), 17, 0, 0, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (63, N'Vegie-spread', 2, N'15 - 625 g jars', CAST(43.9000 AS Money), 24, 0, 5, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (64, N'Wimmers gute Semmelkn�del', 5, N'20 bags x 4 pieces', CAST(33.2500 AS Money), 22, 80, 30, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (65, N'Louisiana Fiery Hot Pepper Sauce', 2, N'32 - 8 oz bottles', CAST(21.0500 AS Money), 76, 0, 0, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (66, N'Louisiana Hot Spiced Okra', 2, N'24 - 8 oz jars', CAST(17.0000 AS Money), 4, 100, 20, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (67, N'Laughing Lumberjack Lager', 1, N'24 - 12 oz bottles', CAST(14.0000 AS Money), 52, 0, 10, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (68, N'Scottish Longbreads', 3, N'10 boxes x 8 pieces', CAST(12.5000 AS Money), 6, 10, 15, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (69, N'Gudbrandsdalsost', 4, N'10 kg pkg.', CAST(36.0000 AS Money), 26, 0, 15, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (70, N'Outback Lager', 1, N'24 - 355 ml bottles', CAST(15.0000 AS Money), 15, 10, 30, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (71, N'Flotemysost', 4, N'10 - 500 g pkgs.', CAST(21.5000 AS Money), 26, 0, 0, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (72, N'Mozzarella di Giovanni', 4, N'24 - 200 g pkgs.', CAST(34.8000 AS Money), 14, 0, 0, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (73, N'R�d Kaviar', 8, N'24 - 150 g jars', CAST(15.0000 AS Money), 101, 0, 5, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (74, N'Longlife Tofu', 7, N'5 kg pkg.', CAST(10.0000 AS Money), 4, 20, 5, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (75, N'Rh�nbr�u Klosterbier', 1, N'24 - 0.5 l bottles', CAST(7.7500 AS Money), 125, 0, 25, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (76, N'Lakkalik��ri', 1, N'500 ml', CAST(18.0000 AS Money), 57, 0, 20, 0)
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (77, N'Original Frankfurter gr�ne So�e', 2, N'12 boxes', CAST(13.0000 AS Money), 32, 0, 15, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF

