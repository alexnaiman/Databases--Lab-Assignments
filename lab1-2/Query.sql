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
FROM CharacterSheet chINNER JOIN Race r ON ch.raceId = r.raceIdORDER BY ch.characterHitPoints DESC-- LEFT JOINSELECT 
	ch.characterName,
	c.className
FROM CharacterSheet chLEFT JOIN Class c ON c.classId = ch.classIdORDER BY ch.characterCharisma DESC-- RIGHT JOINSELECT TOP 5	c.className as className,	s.spellName as spellNameFROM Class_X_Spell csRIGHT JOIN Class c ON cs.classId = c.classIdRIGHT JOIN Spell s ON s.spellId = cs.spellId-- 3 tables -- FULL OUTER JOINSELECT 	c.characterName,	cl.className,	r.raceName,	c.characterLevelFROM CharacterSheet cFULL OUTER JOIN Class cl ON cl.classId = c. classId  FULL OUTER JOIN Race r on r.raceId = c.raceIdORDER BY c.characterLevel DESC-- two many to manySELECT 	p.playerName,	par.partyName,	ch.characterNameFROM Player AS p 	INNER JOIN Player_X_Character AS pXc		ON p.playerId = pXc.playerId	INNER JOIN CharacterSheet AS ch		ON pXc.characterId = ch.characterID	INNER JOIN Party_X_Player AS paXp		ON paXp.playerID = p.playerId	INNER JOIN Party as par 		ON paXp.partyID = par.partyId		--e. 2 queries using the IN operator to introduce a subquery in the WHERE clause; in at least one query, the subquery should include a subquery in its own WHERE clause;SELECT	ch.characterName,	ch.characterHitPointsFROM CharacterSheet chWHERE ch.classID IN (SELECT cl.classId					 FROM Class cl					 WHERE cl.classId IN (SELECT cxs.classId										  FROM Class_X_Spell cXs))ORDER BY ch.characterLevel DESCSELECT DISTINCT	r.raceNameFROM Race rWHERE r.raceId NOT IN (SELECT 							ch.raceId						FROM CharacterSheet ch)--f. 2 queries using the EXISTS operator to introduce a subquery in the WHERE clause;

SELECT DISTINCT	 p.playerNameFROM Player pWHERE  NOT EXISTS (SELECT * 				FROM Player_X_Character pXc				WHERE pXc.playerId = p.playerId				)SELECT *FROM Race rWHERE NOT EXISTS(SELECT *				FROM CharacterSheet ch				WHERE r.raceId = ch.raceId)-- g. 2 queries with a subquery in the FROM clause;
SELECT *FROM 	(SELECT 		ch.characterName,		r.raceName,		ch.characterLevel	FROM CharacterSheet ch	INNER JOIN Race r on ch.raceId = r.raceId) PSELECT *FROM 	(SELECT 		ch.characterName,		c.className,		ch.characterLevel	FROM CharacterSheet ch	INNER JOIN Class c on ch.raceId = c.classId) C--h. 4 queries with the GROUP BY clause, 3 of which also contain the HAVING clause; 2 of the latter will also have a subquery in the HAVING clause; use the aggregation operators: COUNT, SUM, AVG, MIN, MAX;SELECT DISTINCT	ch.characterName,	r.raceNameFROM CharacterSheet chFULL OUTER JOIN Race r ON r.raceId = ch.raceIdGROUP BY r.raceName, characterNameSELECT	AVG(ch.characterLevel) AS averageLevelPerRace,	r.raceNameFROM CharacterSheet chINNER JOIN Race r ON r.raceId= ch.raceIdGROUP BY r.raceNameHAVING MIN(ch.characterLevel) > 10SELECT	AVG(ch.characterLevel) AS averageLevelPerRace,	r.raceNameFROM CharacterSheet chINNER JOIN Race r ON r.raceId = ch.raceIdGROUP BY r.raceNameHAVING MIN(ch.characterLevel) > (SELECT MIN(c.characterLevel)								 FROM CharacterSheet c								 WHERE characterCharisma > 0)SELECT	COUNT(ch.characterLevel) AS averageLevelPerRace,	c.classNameFROM CharacterSheet chINNER JOIN Class c ON c.classId = ch.raceIdGROUP BY c.classNameHAVING MAX(ch.characterLevel) > (SELECT MIN(c.characterLevel)								 FROM CharacterSheet c								 WHERE characterCharisma > 0)--i. 4 queries using ANY and ALL to introduce a subquery in the WHERE clause; 2 of them should be rewritten with aggregation operators, while the other 2 should also be expressed with [NOT] IN.-- query with allSELECT	raceName,	raceDescriptionFROM RaceWHERE raceSpeed > ALL(SELECT r.raceSpeed					  FROM Race r					  WHERE r.raceSize IN ('Small'))--rewritten with aggregation operatorSELECT	raceName,	raceDescriptionFROM RaceWHERE raceSpeed > (SELECT MAX(r.raceSpeed)					  FROM Race r					  WHERE r.raceSize IN ('Small'))-- query with anySELECT	characterNameFROM CharacterSheetWHERE characterHitPoints > ANY(SELECT c.characterHitPoints								FROM CharacterSheet c								WHERE c.characterDexterity >= 2)--rewritten with aggregation operatorSELECT	characterNameFROM CharacterSheetWHERE characterHitPoints > (SELECT MIN(c.characterHitPoints)								FROM CharacterSheet c								WHERE c.characterDexterity >= 2)-- query with ALL SELECT 	characterNameFROM CharacterSheetWHERE raceId <> ALL (SELECT raceId					FROM Race r					WHERE r.raceSpeed > 25)-- rewritten with INSELECT 	characterNameFROM CharacterSheetWHERE raceId NOT IN (SELECT raceId					FROM Race r					WHERE r.raceSpeed > 25)-- query with ANYSELECT	spellNameFROM SpellWHERE spellRangeArea = ANY (SELECT spellRangeArea							FROM Spell s							WHERE s.spellRangeArea < 35 )-- rewritten with INSELECT	spellNameFROM SpellWHERE spellRangeArea IN (SELECT spellRangeArea							FROM Spell s							WHERE s.spellRangeArea < 35 )-- BONUS POINT-- one Dungeon Master must know the spells of his players' character sheets for each party,-- characters that are still alive, their speed is bigger than the average of the races' speed-- and their level is bigger than the average party level,-- sorted based on their charsisma and level, for making a more enjoyable experienceSELECT 	p.playerName,	p.partyName,	p.characterName,	p.className,	p.raceName,	p.characterCharisma,	p.characterLevel,	sp.spellNameFROM(	SELECT 		p.playerName,		par.partyName,		ch.characterName,		cls.className,		rc.raceName,		ch.characterCharisma,		ch.characterLevel	FROM Player AS p 		INNER JOIN Player_X_Character AS pXc			ON p.playerId = pXc.playerId 		INNER JOIN CharacterSheet AS ch			ON pXc.characterId = ch.characterID		INNER JOIN Party_X_Player AS paXp			ON paXp.playerID = p.playerId		INNER JOIN Party as par 			ON paXp.partyID = par.partyId and par.partyId = ch.partyID		INNER JOIN Class AS cls 			ON cls.classId = ch.classId		INNER JOIN Race AS rc			ON rc.raceId = ch.raceId		WHERE ch.characterHitPoints > 0 AND rc.raceSpeed > (SELECT AVG(r.raceSpeed)															FROM Race r)) PINNER JOIN Class_X_Spell cXs ON cXs.classId IN (SELECT c.classId												FROM Class c 												WHERE c.className LIKE P.className)INNER JOIN Spell sp ON cXs.spellId = sp.spellIdGROUP BY p.playerName,	p.partyName,	p.characterName,	p.className,	p.raceName,	p.characterCharisma,	p.characterLevel,	sp.spellNameHAVING p.characterLevel >= (SELECT AVG(css.characterLevel)							FROM CharacterSheet css							WHERE css.partyID IN (SELECT ppp.partyID												  FROM Party ppp												  WHERE ppp.partyName = p.partyName))ORDER BY P.characterCharisma DESC, P.characterLevel DESC