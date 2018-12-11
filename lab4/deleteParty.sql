USE DnDPartyManager
GO

CREATE OR ALTER PROC deleteParty
@rows INT
AS
BEGIN
	DECLARE @i INT
	SET @i = 1
	WHILE @i <= @rows
	BEGIN
		DELETE FROM Party
		WHERE Party.partyId = @i
		SET @i = @i + 1
	END
END
GO

EXEC deleteParty 10
SELECT * FROM Party