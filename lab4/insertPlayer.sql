USE DnDPartyManager
GO

CREATE OR ALTER PROCEDURE insertPlayer
@noRows INT
AS
BEGIN
	SET IDENTITY_INSERT Player ON
	DECLARE @i INT
	DECLARE @name VARCHAR(50)
	SET @i=1
	WHILE @i <= @noRows
	BEGIN
		SET @name = 'Player' + CONVERT(varchar(5), @i)
		INSERT INTO Player(playerId,playerName,playerAge)
		VALUES(@i,@name,5)
		SET @i=@i+1
	END
END

GO

EXECUTE insertlayer 10
SELECT * FROM Player
