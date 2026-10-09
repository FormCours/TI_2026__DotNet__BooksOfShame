DELETE FROM [dbo].[Book];
DELETE FROM [dbo].[Book_Status];

-- Book_Status
SET IDENTITY_INSERT [dbo].[Book_Status] ON;

INSERT INTO [dbo].[Book_Status] ([Id], [Name])
VALUES
	(1, 'Unread'),
	(2, 'In Progress'),
	(3, 'Completed'),
	(4, 'Abandoned'),
	(5, 'Paused');

SET IDENTITY_INSERT [dbo].[Book_Status] OFF;

-- Book
INSERT INTO [dbo].[Book] ([Title], [Desc], [StatusId])
VALUES
	(N'Guerre et Paix', N'La société russe face aux guerres napoléoniennes.', 1),
	(N'1984', N'Winston Smith vit sous la surveillance permanente de Big Brother.', 2),
	(N'Moby Dick', N'Le capitaine Achab traque obsessionnellement la baleine blanche.', 1),
	(N'Le Petit Prince', N'Un aviateur échoué dans le désert rencontre un petit garçon venu d''une autre planète.', 3),
	(N'Crime et Châtiment', N'Raskolnikov, étudiant pauvre, commet un meurtre et sombre dans la culpabilité.', 1),
	(N'Dune', N'Paul Atréides et sa famille prennent le contrôle de la planète désertique Arrakis.', 5),
	(N'Don Quichotte', N'Un hidalgo se prend pour un chevalier errant et part à l''aventure.', 1),
	(N'Le Seigneur des Anneaux', N'Frodon doit détruire l''Anneau unique pour vaincre Sauron.', 2),
	(N'Madame Bovary', N'Emma Bovary fuit l''ennui de sa vie provinciale dans ses rêves romanesques.', 1),
	(N'Ulysse', N'Une journée dans la vie de Leopold Bloom à Dublin, le 16 juin 1904.', 4),
	(N'À la recherche du temps perdu', N'Le narrateur revisite sa vie à travers la mémoire involontaire.', 1),
	(N'Germinal', N'La grève des mineurs du Nord sous le Second Empire.', 1),
	(N'L''Étranger', N'Meursault, employé de bureau à Alger, commet un meurtre absurde sous le soleil.', 3),
	(N'Les Frères Karamazov', N'Le parricide de Fiodor Karamazov et le drame de ses fils.', 1),
	(N'Cent ans de solitude', N'L''histoire de la famille Buendía dans le village de Macondo.', 1),
	(N'Les Misérables', N'Le destin de Jean Valjean, ancien forçat en quête de rédemption.', 2),
	(N'Le Comte de Monte-Cristo', N'Edmond Dantès, emprisonné à tort, prépare sa vengeance.', 1),
	(N'Orgueil et Préjugés', N'Elizabeth Bennet et Mr Darcy surmontent leurs préjugés.', 1),
	(N'Fondation', N'Hari Seldon prédit la chute de l''Empire galactique grâce à la psychohistoire.', 1),
	(N'Le Nom de la rose', N'Une série de meurtres dans une abbaye bénédictine en 1327.', 1);
