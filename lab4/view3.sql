USE DnDPartyManager
GO

CREATE OR ALTER VIEW view3
AS
SELECT b.partyName,a.playerName
FROM Player a,Party b
GROUP BY b.partyName,
		 a.playerName
GO
SELECT * FROM view3