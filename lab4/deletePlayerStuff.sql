USE DnDPartyManager
GO

CREATE OR ALTER PROC deletePlayerStuff
@rows INT
AS
BEGIN
	DECLARE @i INT
	SET @i = 1
	WHILE @i <= @rows
	BEGIN
		DELETE FROM PlayerStuff
		WHERE PlayerStuff.stuffId = @i
		SET @i = @i + 1
	END
END
GO

EXEC deletePlayerStuff 10
SELECT * FROM PlayerStuff