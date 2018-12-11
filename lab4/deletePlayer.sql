USE DnDPartyManager
GO

CREATE OR ALTER PROC deletePlayer 
@rows INT
AS
BEGIN
	DECLARE @i INT
	SET @i = 0
	WHILE @i <= @rows
	BEGIN
		DELETE FROM Player
		WHERE Player.playerId = @i
		SET @i = @i + 1
	END
END
GO

EXEC deletePlayer 10
SELECT * FROM Player