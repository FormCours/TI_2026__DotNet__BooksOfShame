CREATE TABLE [dbo].[Book_Status]
(
	[Id] INT IDENTITY,
	[Name] VARCHAR(50) NOT NULL,
	
	CONSTRAINT PK_Book_Status PRIMARY KEY([Id]),
	CONSTRAINT UK_Book_Status UNIQUE([Name]),
)
