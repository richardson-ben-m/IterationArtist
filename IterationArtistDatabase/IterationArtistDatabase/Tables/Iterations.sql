CREATE TABLE [dbo].[Iterations]
(
	[IterationId] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [TypeId] INT NOT NULL, 
    [Iteration] INT NOT NULL, 
    [TotalUnits] INT NOT NULL, 
    [NewUnits] INT NOT NULL, 
    [IterationImage] VARBINARY(MAX) NOT NULL, 
    CONSTRAINT [UK_Iterations_Iteration] UNIQUE ([TypeId], [Iteration]), 
    CONSTRAINT [FK_Iterations_ArtTypes] FOREIGN KEY ([TypeId]) REFERENCES [dbo].[ArtTypes]([TypeId])
)

GO

CREATE INDEX [IX_Iterations_Iteration] ON [dbo].[Iterations] ([TypeId], [Iteration])
