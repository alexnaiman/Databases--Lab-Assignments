USE DndPartyManager
GO

CREATE OR ALTER PROCEDURE insertParty_X_Player
@noRows INT
AS
BEGIN
	DECLARE @i INT
	SET @i=1
	WHILE @i<=@noRows
	BEGIN	
		INSERT INTO Party_X_Player
		VALUES(@i,@i)
		SET @i = @i+1
	END
END
GO

EXECUTE insertParty_X_Player 10

SELECT * FROM Party_X_Player