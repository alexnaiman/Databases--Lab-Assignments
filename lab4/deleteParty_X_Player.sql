USE DnDPartyManager
GO

CREATE OR ALTER PROC deleteParty_X_Player
@rows INT
AS
BEGIN
	DECLARE @i INT
	SET @i = 0
	WHILE @i <= @rows
	BEGIN
		DELETE FROM Party_X_Player
		WHERE Party_X_Player.playerId = @i AND Party_X_Player.partyID = @i
		SET @i = @i + 1
	END
END
GO

EXEC deleteParty_X_Player 10
SELECT * FROM Party_X_Player