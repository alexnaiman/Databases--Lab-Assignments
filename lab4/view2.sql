 USE DnDPartyManager
 GO

CREATE OR ALTER VIEW  twoTables
as
select *
from Player b, Party a
where B.playerAge >= 5 and a.partyName like 'P%'

GO
select *
from twoTables