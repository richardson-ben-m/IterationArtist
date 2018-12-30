CREATE VIEW [dbo].[vw_Iterations]
AS 
	SELECT i.IterationId, a.TypeName, i.Iteration, i.NewUnits, i.TotalUnits, i.IterationImage
	FROM [dbo].[ArtTypes] a
		INNER JOIN [dbo].[Iterations] i
			ON a.TypeId = i.TypeId
