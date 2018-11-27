USE DnDPartyManager
GO

--a. 2 queries with the union operation; use UNION [ALL] and OR;
SELECT spellName FROM Spell
WHERE spellRangeArea >= 10
UNION
SELECT characterName FROM CharacterSheet

SELECT spellName AS 'Name'
FROM Spell
WHERE spellComponents LIKE '%V' OR spellLevel < 2

--b. 2 queries with the intersection operation; use INTERSECT and IN;
SELECT characterName  AS 'Name'
FROM CharacterSheet
WHERE characterConstitution >= 2 AND characterCharisma IN (0,1,-1)


SELECT characterName AS 'Name'
FROM CharacterSheet
WHERE characterCharisma < 2
INTERSECT
SELECT characterName AS 'Name'
FROM CharacterSheet
WHERE characterIntelligence < 2 

--c. 2 queries with the difference operation; use EXCEPT and NOT IN;

SELECT 
	raceName AS 'Name',
	raceDescription AS 'Description'
FROM Race
WHERE raceSpeed > 25
EXCEPT
SELECT 
	raceName,
	raceDescription
FROM Race
WHERE raceSize NOT IN ('Medium')

SELECT
	characterName as 'Name',
	characterConstitution as 'Constitution'
FROM CharacterSheet
WHERE characterLevel > 10 
EXCEPT
SELECT
	characterName,
	characterConstitution
FROM CharacterSheet
WHERE characterHitPoints < 20

--d. 4 queries with INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN; one query will join at least 3 tables, while another one will join at least two many-to-many relationships;

-- INNER JOIN
SELECT 
	ch.characterName,
	r.raceName
FROM CharacterSheet ch
	ch.characterName,
	c.className
FROM CharacterSheet ch

SELECT DISTINCT
