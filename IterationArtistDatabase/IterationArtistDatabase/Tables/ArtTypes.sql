CREATE TABLE [dbo].[ArtTypes]
(
	[TypeId] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [TypeName] VARCHAR(50) NOT NULL, 
    [UnitImage] VARBINARY(8000) NOT NULL, 
    CONSTRAINT [UK_ArtTypes_Name] UNIQUE ([TypeName])
)
