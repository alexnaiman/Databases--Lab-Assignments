USE DndPartyManager
GO

CREATE OR ALTER PROC insertParty
@noRows INT
AS
BEGIN
	SET IDENTITY_INSERT Party ON
	DECLARE @i INT
	DECLARE @name VARCHAR(50)
	SET @i=1
	WHILE @i<=@noRows
	BEGIN
		SET @name = 'Party' + CONVERT(varchar(5), @i)
		INSERT INTO Party(partyId,partyName)
		VALUES(@i,@name)
		SET @i=@i+1
	END
END

GO
DELETE FROM Party_X_Player
EXECUTE insertParty 10
SELECT * FROM Party
