USE DnDPartyManager
SET IDENTITY_INSERT PlayerStuff ON

GO

CREATE OR ALTER PROCEDURE insertPlayerStuff
@noRows INT
AS
BEGIN
	SET IDENTITY_INSERT PlayerStuff ON
	DECLARE @i INT
	DECLARE @name VARCHAR(50)
	DECLARE @fk int
	SET @i=1
	WHILE @i <= @noRows
	BEGIN
		SET @name = 'PlayerStuff' + CONVERT(varchar(5), @i)
		SELECT TOP 1 @fk=p.playerId  from Player p where p.playerName like 'Player%'
		INSERT INTO PlayerStuff(stuffId,stuffName,playerId)
		VALUES(@i,'stuff',@fk)
		SET @i=@i+1
	END
END

GO

EXECUTE insertPlayerStuff 10
SELECT * FROM PlayerStuff
