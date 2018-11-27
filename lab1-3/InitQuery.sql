
--Drops for resetting the tables each time we execute the script
DROP TABLE IF EXISTS Party_X_Story
DROP TABLE IF EXISTS Class_X_Spell
DROP TABLE IF EXISTS Party_X_Player
DROP TABLE IF EXISTS Player_X_Character
DROP TABLE IF EXISTS Player
DROP TABLE IF EXISTS STORY
DROP TABLE IF EXISTS CharacterSheet
DROP TABLE IF EXISTS Party
DROP TABLE IF EXISTS Race
DROP TABLE IF EXISTS Spell
DROP TABLE IF EXISTS Class
DROP TABLE IF EXISTS CurrentVersion

CREATE TABLE CurrentVersion(
	currentVers INT NOT NULL
	);


CREATE TABLE Party(
	partyId INT NOT NULL IDENTITY PRIMARY KEY,
	partyName VARCHAR(45) NOT NULL
);

CREATE TABLE Player(
	playerId INT NOT NULL IDENTITY PRIMARY KEY,
	playerName VARCHAR(100) NOT NULL
);

--Junction Table for m:n relation between Party and Player
CREATE TABLE Party_X_Player(
	partyID INT NOT NULL,
	playerID INT NOT NULL,
	CONSTRAINT PK_Party_X_Player PRIMARY KEY (partyID, playerID),
	CONSTRAINT FK_partyPlayer
		FOREIGN KEY(partyID) REFERENCES Party(partyID),
	CONSTRAINT FK_playerParty
		FOREIGN KEY(playerID) REFERENCES Player(playerID),
);

CREATE TABLE Story(
	storyID INT NOT NULL IDENTITY PRIMARY KEY,
	storyName VARCHAR(100),
	storyShortDescription VARCHAR(1500)
);

--Junction Table for m:n relation between Party and Story
CREATE TABLE Party_X_Story(
	storyID INT NOT NULL,
	partyID INT NOT NULL,
	CONSTRAINT PK_Party_X_Story PRIMARY KEY(storyID, partyID),
	CONSTRAINT FK_partyStory
		FOREIGN KEY(partyID) REFERENCES Party(partyID),
	CONSTRAINT FK_storyParty
		FOREIGN KEY(storyID) REFERENCES Story(storyID),
);

CREATE TABLE Race(
	raceId INT NOT NULL IDENTITY PRIMARY KEY,
	raceName VARCHAR(500) NOT NULL,
	raceDescription VARCHAR(500) NOT NULL,
	raceAlignment VARCHAR(500) NOT NULL,
	raceAbilityScoreIncrease VARCHAR(500) NOT NULL,
	raceAge VARCHAR(500) NOT NULL,
	raceSize VARCHAR(45) NOT NULL CHECK(raceSize IN('Large','Medium','Small','Tiny','Other')),
	raceSpeed INT NOT NULL,
);


CREATE TABLE Spell(
	spellId INT NOT NULL IDENTITY PRIMARY KEY,
	spellName VARCHAR(100),
	spellLevel INT NOT NULL,
	spellDescription VARCHAR(1500) NOT NULL,
	spellCastingTime INT NOT NULL,
	spellRangeArea INT NOT NULL,
	spellComponents VARCHAR(100) NOT NULL,
	spellDuration VARCHAR(100) NOT NULL,
	spellSchool VARCHAR(100) NOT NULL,
	spellType VARCHAR(100), --attack/save,ranged or not etc
	spellEffectDamage VARCHAR(100) NOT NULL
);


CREATE TABLE Class(
	classId INT NOT NULL IDENTITY PRIMARY KEY,
	className VARCHAR(500) NOT NULL,
	classDescription VARCHAR(500) NOT NULL,
	classHitPoints VARCHAR(500) NOT NULL,
	classProficiency VARCHAR(500) NOT NULL,
	classEquipment VARCHAR(500) NOT NULL
);

--Junction Table for m:n relation between Clas and Spell
CREATE TABLE Class_X_Spell(
	classId INT NOT NULL,
	spellId INT NOT NULL,
	CONSTRAINT PK_Race_X_Spell PRIMARY KEY(classId, spellId),
	CONSTRAINT FK_ClassSpell
		FOREIGN KEY(classId) REFERENCES Class(classId),
	CONSTRAINT FK_ClassRace
		FOREIGN KEY(spellId) REFERENCES Spell(spellId)
);


CREATE TABLE CharacterSheet(
	characterID INT NOT NULL IDENTITY PRIMARY KEY,
	characterName VARCHAR(100) NOT NULL,
	characterLevel INT NOT NULL,
	characterStrength INT NOT NULL,
	characterDexterity INT NOT NULL,
	characterConstitution INT NOT NULL,
	characterIntelligence INT NOT NULL,
	characterWisdom INT NOT NULL,
	characterCharisma INT NOT NULL,
	characterHitPoints INT NOT NULL,
	raceId INT NOT NULL,
	classId INT NOT NULL,
	partyID INT NOT NULL,
	CONSTRAINT FK_Party
		FOREIGN KEY(partyID) REFERENCES Party(partyID),
	CONSTRAINT FK_Race
		FOREIGN KEY(raceID) REFERENCES Race(raceId),
	CONSTRAINT FK_Class
		FOREIGN KEY(classId) REFERENCES Class(classId)
)

CREATE TABLE Player_X_Character(
	playerId INT NOT NULL,
	characterId INT NOT NULL,
	CONSTRAINT PK_Player_X_Character PRIMARY KEY(playerId,characterId),
	CONSTRAINT FK_PlayerCharacter
		FOREIGN KEY(playerId) REFERENCES Player(playerId),
	CONSTRAINT FK_CharacterPlayer 
		FOREIGN KEY(characterId) REFERENCES CharacterSheet(characterId)
)
