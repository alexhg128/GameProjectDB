SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE PositionSP
	@X float,
	@Y float,
	@timestamp datetime
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRANSACTION
	INSERT INTO Position(X,Y,timeststamp) VALUES (@X, @Y, @timestamp)
	IF @@ERROR = 0
		COMMIT
	ELSE
		ROLLBACK
END
GO