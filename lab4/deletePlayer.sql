USE DnDPartyManager
GO

CREATE PROC deleteTable_Player
@rows INT
AS
BEGIN
	DECLARE @i INT
	SET @i = 1
	WHILE @i<=@rows
	BEGIN
		DELETE FROM Player
		WHERE Player.playerId = @i
		SET @i = @i + 1
	END
END
GO

EXEC deleteTable_Player 3
SELECT * FROM Player