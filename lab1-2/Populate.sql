USE DnDPartyManager
-- Populating the Class table
DELETE FROM Class;
INSERT INTO Class (className,classDescription,classHitPoints,classEquipment,classProficiency)
	VALUES ('Druid',
			'A priest of the Old Faith, wielding the powers of nature and adopting animal forms',
			'Hit Dice: 1d8 per druid level
			 Hit Points at 1st Level: 8 + your Constitution modifier
			 Hit Points at Higher Levels: 1d8 (or 5) + your Constitution modifier per druid level after 1st',
			'You start with the following equipment, in addition to the equipment granted by your background:
			-(a) a wooden shield or (b) any simple weapon
			-(a) a scimitar or (b) any simple melee weapon
			-Leather armor, an explorer’s pack, and a druidic focus',
			'Armor: Light armor, medium armor, shields (druids will not wear armor or use shields made of metal);
			 Weapons: Clubs, daggers, darts, javelins, maces, quarterstaffs, scimitars, sickles, slings, spears;
			 Tools: Herbalism kit; Saving Throws: Intelligence,Wisdom
			 Skills: Choose two from Arcana, Animal Handling, Insight, Medicine, Nature, Perception, Religion, and Survival'),
			('Barbarian',
			'A fierce warrior of primitive background who can enter a battle rage',
			'Hit Dice: 1d12 per barbarian level; Hit Points at 1st Level: 12 + your Constitution modifier;Hit Points at Higher Levels: 1d12 (or 7) + your Constitution modifier per barbarian level after 1st',
			'You start with the following equipment, in addition to the equipment granted by your background:
			-(a) a greataxe or (b) any martial melee weapon
			-(a) two handaxes or (b) any simple weapon
			-An explorer’s pack and four javelins',
			'Armor: Light armor, medium armor, shields
			 Weapons: Simple weapons, martial weapons;
			 Tools: None; Saving Throws: Strength, Constitution;
			 Skills: Choose two from Animal Handling, Athletics, Intimidation, Nature, Perception, and Survival'
			),
			('Bard',
			'An inspiring magician whose power echoes the music of creation',
			'Hit Dice: 1d8 per bard level
		     Hit Points at 1st Level: 8 + your Constitution modifier
			 Hit Points at Higher Levels: 1d8 (or 5) + your Constitution modifier per bard level after 1st',
			'You start with the following equipment, in addition to the equipment granted by your background:
			-(a) a rapier, (b) a longsword, or (c) any simple weapon
			-(a) a diplomat’s pack or (b) an entertainer’s pack
			-(a) a lute or (b) any other musical instrument
			-Leather armor and a dagger',
			'Armor: Light armor
			 Weapons: Simple weapons, hand crossbows, longswords, rapiers, shortswords
			 Tools: Three musical instruments of your choice
			 Saving Throws: Dexterity, Charisma
			 Skills: Choose any three'),
			 ('Cleric',
			 'A priestly champion who wields divine magic in service of a higher power',
			 'Hit Dice: 1d8 per cleric level
			  Hit Points at 1st Level: 8 + your Constitution modifier
			  Hit Points at Higher Levels: 1d8 (or 5) + your Constitution modifier per cleric level after 1st',
			 'You start with the following equipment, in addition to the equipment granted by your background:
			 -(a) a mace or (b) a warhammer (if proficient)
			 -(a) scale mail, (b) leather armor, or (c) chain mail (if proficient)
			 -(a) a light crossbow and 20 bolts or (b) any simple weapon
			 -(a) a priest’s pack or (b) an explorer’s pack
			 -A shield and a holy symbol',
			 'Armor: Light armor, medium armor, shields
			  Weapons: Simple weapons
			  Tools: None
			  Saving Throws: Wisdom, Charisma
			  Skills: Choose two from History, Insight, Medicine, Persuasion, and Religion'),
			  ('Fighter',
			  'A master of martial combat, skilled with a variety of weapons and armor',
			  'Hit Dice: 1d10 per fighter level
			   Hit Points at 1st Level: 10 + your Constitution modifier
			   Hit Points at Higher Levels: 1d10 (or 6) + your Constitution modifier per fighter level after 1st',
			   'You start with the following equipment, in addition to the equipment granted by your background:
			   -(a) chain mail or (b) leather armor, longbow, and 20 arrows
			   -(a) a martial weapon and a shield or (b) two martial weapons
			   -(a) a light crossbow and 20 bolts or (b) two handaxes
			   -(a) a dungeoneer’s pack or (b) an explorer’s pack',
			   'Armor: All armor, shields
				Weapons: Simple weapons, martial weapons
				Tools: None
				Saving Throws: Strength, Constitution
				Skills: Choose two skills from Acrobatics, Animal Handling, Athletics, History, Insight, Intimidation, Perception, and Survival'),
				('Monk',
				'A master of martial arts, harnessing the power of the body in pursuit of physical and spiritual perfection',
				'Hit Dice: 1d8 per monk level
				Hit Points at 1st Level: 8 + your Constitution modifier
				Hit Points at Higher Levels: 1d8 (or 5) + your Constitution modifier per monk level after 1st',
				'You start with the following equipment, in addition to the equipment granted by your background:
				(a) a shortsword or (b) any simple weapon
				(a) a dungeoneer’s pack or (b) an explorer’s pack
				10 darts',
				'Armor: None
				Weapons: Simple weapons, shortswords
				Tools: Choose one type of artisan’s tools or one musical instrument
				Saving Throws: Strength, Dexterity
				Skills: Choose two from Acrobatics, Athletics, History, Insight, Religion, and Stealth'),
				('Paladin',
				'A holy warrior bound to a sacred oath',
				'Hit Dice: 1d10 per paladin level
				Hit Points at 1st Level: 10 + your Constitution modifier
				Hit Points at Higher Levels: 1d10 (or 6) + your Constitution modifier per paladin level after 1st',
				'You start with the following equipment, in addition to the equipment granted by your background:
				(a) a martial weapon and a shield or (b) two martial weapons
				(a) five javelins or (b) any simple melee weapon
				(a) a priest’s pack or (b) an explorer’s pack
				Chain mail and a holy symbol',
				'Armor: All armor, shields
				Weapons: Simple weapons, martial weapons
				Tools: None
				Saving Throws: Wisdom, Charisma
				Skills: Choose two from Athletics, Insight, Intimidation, Medicine, Persuasion, and Religion'),
				('Ranger',
				'A warrior who combats threats on the edges of civilization',
				'Hit Dice: 1d10 per ranger level
				Hit Points at 1st Level: 10 + your Constitution modifier
				Hit Points at Higher Levels: 1d10 (or 6) + your Constitution modifier per ranger level after 1st',
				'You start with the following equipment, in addition to the equipment granted by your background:
				(a) scale mail or (b) leather armor
				(a) two shortswords or (b) two simple melee weapons
				(a) a dungeoneer’s pack or (b) an explorer’s pack
				A longbow and a quiver of 20 arrows',
				'Armor: Light armor, medium armor, shields
				Weapons: Simple weapons, martial weapons
				Tools: None
				Saving Throws: Strength, Dexterity
				Skills: Choose three from Animal Handling, Athletics, Insight, Investigation, Nature, Perception, Stealth, and Survival'),
				('Rogue',
				'A scoundrel who uses stealth and trickery to overcome obstacles and enemies',
				'Hit Dice: 1d8 per rogue level
				Hit Points at 1st Level: 8 + your Constitution modifier
				Hit Points at Higher Levels: 1d8 (or 5) + your Constitution modifier per rogue level after 1st',
				'You start with the following equipment, in addition to the equipment granted by your background:
				(a) a rapier or (b) a shortsword
				(a) a shortbow and quiver of 20 arrows or (b) a shortsword
				(a) a burglar’s pack, (b) a dungeoneer’s pack, or (c) an explorer’s pack
				Leather armor, two daggers, and thieves’ tools',
				'Armor: Light armor
				Weapons: Simple weapons, hand crossbows, longswords, rapiers, shortswords
				Tools: Thieves’ tools
				Saving Throws: Dexterity, Intelligence
				Skills: Choose four from Acrobatics, Athletics, Deception, Insight, Intimidation, Investigation, Perception, Performance, Persuasion, Sleight of Hand, and Stealth'),
				('Sorcerer',
				'A spellcaster who draws on inherent magic from a gift or bloodline',
				'Hit Points
				Hit Dice: 1d6 per sorcerer level
				Hit Points at 1st Level: 6 + your Constitution modifier
				Hit Points at Higher Levels: 1d6 (or 4) + your Constitution modifier per sorcerer level after 1st',
				'You start with the following equipment, in addition to the equipment granted by your background:
				(a) a light crossbow and 20 bolts or (b) any simple weapon
				(a) a component pouch or (b) an arcane focus
				(a) a dungeoneer’s pack or (b) an explorer’s pack
				Two daggers',
				'Armor: None
				Weapons: Daggers, darts, slings, quarterstaffs, light crossbows
				Tools: None
				Saving Throws: Constitution, Charisma
				Skills: Choose two from Arcana, Deception, Insight, Intimidation, Persuasion, and Religion'),
				('Warlock',
				'A wielder of magic that is derived from a bargain with an extraplanar entity',
				'Hit Dice: 1d8 per warlock level
				Hit Points at 1st Level: 8 + your Constitution modifier
				Hit Points at Higher Levels: 1d8 (or 5) + your Constitution modifier per warlock level after 1st',
				'You start with the following equipment, in addition to the equipment granted by your background:
				(a) a light crossbow and 20 bolts or (b) any simple weapon
				(a) a component pouch or (b) an arcane focus
				(a) a scholar’s pack or (b) a dungeoneer’s pack
				Leather armor, any simple weapon, and two daggers',
				'Armor: Light armor
				Weapons: Simple weapons
				Tools: None
				Saving Throws: Wisdom, Charisma
				Skills: Choose two skills from Arcana, Deception, History, Intimidation, Investigation, Nature, and Religion'),
				('Wizzard',
				'A scholarly magic-user capable of manipulating the structures of reality',
				'Hit Dice: 1d6 per wizard level
				Hit Points at 1st Level: 6 + your Constitution modifier
				Hit Points at Higher Levels: 1d6 (or 4) + your Constitution modifier per wizard level after 1st',
				'You start with the following equipment, in addition to the equipment granted by your background:
				(a) a quarterstaff or (b) a dagger
				(a) a component pouch or (b) an arcane focus
				(a) a scholar’s pack or (b) an explorer’s pack
				A spellbook',
				'Armor: None
				Weapons: Daggers, darts, slings, quarterstaffs, light crossbows
				Tools: None
				Saving Throws: Intelligence, Wisdom
				Skills: Choose two from Arcana, History, Insight, Investigation, Medicine, and Religion');

DELETE FROM Race;
INSERT INTO Race(raceName,raceDescription,raceAlignment,raceAbilityScoreIncrease,raceSize,raceAge,raceSpeed)
	VALUES ('Dragonborn',
			'Dragonborn look very much like dragons standing erect in humanoid form, though they lack wings or a tail.',
			'Dragonborn tend to extremes, making a conscious choice for one side or the other in the cosmic war between good and evil (represented by Bahamut and Tiamat, respectively). Most dragonborn are good, but those who side with Tiamat can be terrible villains.',
			'Your Strength score increases by 2, and your Charisma score increases by 1.',
			'Medium',
			'Young dragonborn grow quickly. They walk hours after hatching, attain the size and development of a 10-year-old human child by the age of 3, and reach adulthood by 15. They live to be around 80.',
			30),
			('Dwarf',
			'Bold and hardy, dwarves are known as skilled warriors, miners, and workers of stone and metal.',
			'Most dwarves are lawful, believing firmly in the benefits of a well-ordered society. They tend toward good as well, with a strong sense of fair play and a belief that everyone deserves to share in the benefits of a just order.',
			'Your Constitution score increases by 2.',
			'Medium',
			'Dwarves mature at the same rate as humans, but they’re considered young until they reach the age of 50. On average, they live about 350 years.',
			25),
			('Elf',
			'Elves are a magical people of otherworldly grace, living in the world but not entirely part of it.',
			'Elves love freedom, variety, and self-expression, so they lean strongly toward the gentler aspects of chaos. They value and protect others’ freedom as well as their own, and they are more often good than not. The drow are an exception; their exile into the Underdark has made them vicious and dangerous. Drow are more often evil than not',
			'Your Dexterity score increases by 2.',
			'Medium',
			'Although elves reach physical maturity at about the same age as humans, the elven understanding of adulthood goes beyond physical growth to encompass worldly experience. An elf typically claims adulthood and an adult name around the age of 100 and can live to be 750 years old.',
			30),
			('Gnome',
			'A gnome’s energy and enthusiasm for living shines through every inch of his or her tiny body.',
			'Gnomes are most often good. Those who tend toward law are sages, engineers, researchers, scholars, investigators, or inventors. Those who tend toward chaos are minstrels, tricksters, wanderers, or fanciful jewelers. Gnomes are good-hearted, and even the tricksters among them are more playful than vicious.',
			'Your Intelligence score increases by 2.',
			'Small',
			'Gnomes mature at the same rate humans do, and most are expected to settle down into an adult life by around age 40. They can live 350 to almost 500 years.',
			30),
			('Half-elf',
			'Half-elves combine what some say are the best qualities of their elf and human parents.',
			'Half-elves share the chaotic bent of their elven heritage. They value both personal freedom and creative expression, demonstrating neither love of leaders nor desire for followers. They chafe at rules, resent others’ demands, and sometimes prove unreliable, or at least unpredictable.',
			'Your Charisma score increases by 2, and two other ability scores of your choice increase by 1.',
			'Medium',
			'Half-elves mature at the same rate humans do and reach adulthood around the age of 20. They live much longer than humans, however, often exceeding 180 years.',
			30),
			('Halfling',
			'The diminutive halflings survive in a world full of larger creatures by avoiding notice or, barring that, avoiding offense.',
			'Most halflings are lawful good. As a rule, they are good-hearted and kind, hate to see others in pain, and have no tolerance for oppression. They are also very orderly and traditional, leaning heavily on the support of their community and the comfort of their old ways.',
			'Your Dexterity score increases by 2.',
			'Small',
			'A halfling reaches adulthood at the age of 20 and generally lives into the middle of his or her second century',
			25),
			('Half-Orc',
			'Half-orcs’ grayish pigmentation, sloping foreheads, jutting jaws, prominent teeth, and towering builds make their orcish heritage plain for all to see.',
			'Half-orcs inherit a tendency toward chaos from their orc parents and are not strongly inclined toward good. Half-orcs raised among orcs and willing to live out their lives among them are usually evil.',
			'Your Strength score increases by 2, and your Constitution score increases by 1.',
			'Medium',
			'Half-orcs mature a little faster than humans, reaching adulthood around age 14. They age noticeably faster and rarely live longer than 75 years.',
			35),
			('Human',
			'Humans are the most adaptable and ambitious people among the common races. Whatever drives them, humans are the innovators, the achievers, and the pioneers of the worlds.',
			'Humans tend toward no particular alignment. The best and the worst are found among them.',
			' Your ability scores each increase by 1.',
			'Medium',
			'Humans reach adulthood in their late teens and live less than a century.',
			30),
			('Tiefling',
			'To be greeted with stares and whispers, to suffer violence and insult on the street, to see mistrust and fear in every eye: this is the lot of the tiefling.',
			'Tieflings might not have an innate tendency toward evil, but many of them end up there. Evil or not, an independent nature inclines many tieflings toward a chaotic alignment.',
			'Your Intelligence score increases by 1, and your Charisma score increases by 2.',
			'Medium',
			'Tieflings mature at the same rate as humans but live a few years longer.',
			30)

DELETE FROM Party;
INSERT INTO Party
	VALUES ('Best party ever'),
		   ('The Ravens Claw'),
		   ('The Iron Daggers'),
		   ('The company of the Dancing Dragon'),
		   ('River Gang'),
		   ('Ooze Patrol'),
		   ('De sters')
DELETE FROM Player
INSERT INTO Player
	VALUES ('Nae'),
		   ('Luţă'),
		   ('Johnny'),
		   ('Bibu'),
		   ('Ancuţa'),
		   ('Irinel'),
		   ('Tibi'),
		   ('Niţu'),
		   ('De Sters')
DELETE FROM Story
INSERT INTO Story(storyName, storyShortDescription)
	VALUES ('TOMB OF ANNIHILATION','The talk of the streets and taverns has all been about the so-called death curse: a wasting disease afflicting everyone who’s ever been raised from the dead. Victims grow thinner and weaker each day, slowly but steadily sliding toward the death they once denied. When they finally succumb, they can’t be raised—and neither can anyone else, regardless of whether they’ve ever received that miracle in the past. Temples and scholars of divine magic are at a loss to explain a curse that has affected the entire region, and possibly the entire world. The cause is a necromantic artifact called the Soulmonger, which is located somewhere in Chult, a mysterious peninsula far to the south, ringed with mountains and choked with rainforests.'),
		   ('CURSE OF STRAHD', 'Under raging storm clouds, a lone figure stands silhouetted against the ancient walls of Castle Ravenloft. The vampire Count Strahd von Zarovich stares down a sheer cliff at the village below. A cold, bitter wind spins dead leaves about him, billowing his cape in the darkness. Lightning splits the clouds overhead, casting stark white light across him. Strahd turns to the sky, revealing the angular muscles of his face and hands. He has a look of power—and of madness. His once handsome face is contorted by a tragedy darker than the night itself. Rumbling thunder pounds the castle spires. The winds howling increases as Strahd turns his gaze back to the village. Far below, yet not beyond his ken, a party of adventurers has just entered his domain. Strahd’s face forms a twisted smile as his dark plan unfolds. He knew they were coming, and he knows why they have come all according to his plan. He, the master of Ravenloft, will attend to them. Another lightning flash rips through the darkness, its thunder echoing through the castle is towers. But Strahd is gone. Only the howling of the wind—or perhaps a lone wolf—fills the midnight air. The master of Ravenloft is having guests for dinner. And you are invited'),
		   ('STORM KINGS THUNDER', 'Hill giants are stealing all the grain and livestock they can while stone giants have been scouring settlements that have been around forever. Fire giants are press-ganging the smallfolk into the desert, while frost giant longships have been pillaging along the Sword Coast. Even the elusive cloud giants have been witnessed, their wondrous floating cities appearing above Waterdeep and Baldur’s Gate. Where is the storm giant King Hekaton, who is tasked with keeping order among the giants? The humans, dwarves, elves, and other small folk of the Sword Coast will be crushed underfoot from the onslaught of these giant foes. The only chance at survival is for the small folk to work together to investigate this invasion and harness the power of rune magic, the giants’ weapon against their ancient enemy the dragons. The only way the people of Faerun can restore order is to use the giants’ own power against them.'),
		   ('RAGE OF DEMONS', 'Rumors of demonic activity in the Underdark have reached the surface through whispers and hushed tales of violence. King Bruenor sends his friend Drizzt Do’Urden to find out what’s happening beneath the surface but it becomes all too clear when the demon lord Demogorgon ravages the drow city of Menzobarranzan. The Horned Lord Baphomet toys with victims in the vast maze of the Underdark and the Demon Queen of Fungi Zuggtmoy plans to join with a massive city-sized fungus in an insane marriage ceremony. Yeenoghu, the Demon Lord of Gnolls, wanders the dark, spawning new gnoll servants from his kills to continue the destruction, while the demon lords of lust and deception prey on the weak-willed peoples of the Underdark. In the madness of the dark, who will be the light to shine against the demons? The races of the deep vie against the demons but there are few allies in the Underdark among drow, mindflayers, duergar and deep gnomes. Drizzt Do’Urden and the magical panther Guenhwyvar are dedicated to tracking Demogorgon and putting a stop to his reign of madness but it’s even more crucial to find out why the demon lords came out of the Abyss at all. Who is responsible for the chaos that’s been unleashed? Solve the mystery before the demons reach the surface. Dare to descend!'),
		   ('ELEMENTAL EVIL', 'Four apocalyptic cults of Elemental Evil are building secret sanctuaries and outposts throughout the North, bringing terror and destruction to the Forgotten Realms. Each cult is devoted to one of the Princes of Elemental Evil (godlike entities embodying air, earth, fire, and water) and is led by a nihilistic prophet, corrupted by power. The cruel elf princess Aerisi Kalinoth speaks for the air Cult of the Howling Hatred, while Marlos Urnrayle, a fierce male medusa, leads the Cult of the Black Earth. The Cult of the Eternal Flame scars its followers at the behest of the beautiful and deadly tiefling Vanifer, and the mutilated sailor Gar Shatterkeel plots to drown the world with his Cult of the Crushing Wave. The cults use devastation orbs, forged of raw elemental power, to ravage Faerûn with horrifying earthquakes, typhoons, tornados, and other disasters. Independently, the cults are terrible adversaries, but now they have secretly begun transforming a long-lost dungeon into a huge subterranean temple dedicated to an alien entity known as the Elder Elemental Eye. To prevent this union of the Elemental Evils into one catastrophic force, heroes must expose the prophets’ true agenda. The cults’ agents are everywhere and their power is immense. When you don’t know whom to trust, knowledge is your only weapon. Unearth the Deception.')
DELETE FROM Spell;
INSERT INTO Spell(spellName,spellLevel,spellCastingTime,spellComponents,spellDescription,spellDuration,spellEffectDamage,spellRangeArea,spellSchool,spellType)
	VALUES ('Acid Arrow', 2, 1,'V,S,M *','A shimmering green arrow streaks toward a target within range and bursts in a spray of acid. Make a ranged spell attack against the target. On a hit, the target takes 4d4 acid damage immediately and 2d4 acid damage at the end of its next turn. On a miss, the arrow splashes the target with acid for half as much of the initial damage and no damage at the end of its next turn.', 'Instantaneous', 'Acid',90, 'Evocation','Ranged'),
		   ('Absorb Elements', 1, 1, 'S', 'The spell captures some of the incoming energy, lessening its effect on you and storing it for your next melee attack. You have resistance to the triggering damage type until the start of your next turn. Also, the first time you hit with a melee attack on your next turn, the target takes an extra 1d6 damage of the triggering type, and the spell ends.', '1 Round','Acid', 0,'Abjuration','Self'),
		   ('Thunderclap', 0,1,'S','You create a burst of thunderous sound that can be heard up to 100 feet away. Each creature within range, other than you, must succeed on a Constitution saving throw or take 1d6 thunder damage.','Instantaneous','Thunder',5,'Evocation','CON Save'),
		   ('Mage Hand', 0,1,'V,S','A spectral, floating hand appears at a point you choose within range. The hand lasts for the duration or until you dismiss it as an action. The hand vanishes if it is ever more than 30 feet away from you or if you cast this spell again.You can use your action to control the hand. You can use the hand to manipulate an object, open an unlocked door or container, stow or retrieve an item from an open container, or pour the contents out of a vial. You can move the hand up to 30 feet each time you use it. The hand cannot attack, activate magic items, or carry more than 10 pounds.', '1 minute','Utility',30,'Conjuration','Ranged--None'),
		   ('Aid', 2, 1,'V,S,M*','Your spell bolsters your allies with toughness and resolve. Choose up to three creatures within range. Each target`s hit point maximum and current hit points increase by 5 for the duration.','8 hours','Buff (...)',30,'Abjuration','None'),
		   ('Death Ward',4,1,'V, S','You touch a creature and grant it a measure of protection from death.The first time the target would drop to 0 hit points as a result of taking damage, the target instead drops to 1 hit point, and the spell ends.If the spell is still in effect when the target is subjected to an effect that would kill it instantaneously without dealing damage, that effect is instead negated against the target, and the spell ends.','8 hours','Buff (...)',0,'Abjuration','None'),
		   ('Zone of Truth',2,1,'V,S','You create a magical zone that guards against deception in a 15-foot-radius sphere centered on a point of your choice within range. Until the spell ends, a creature that enters the spell`s area for the first time on a turn or starts its turn there must make a Charisma saving throw. On a failed save, a creature can`t speak a deliberate lie while in the radius. You know whether each creature succeeds or fails on its saving throw.An affected creature is aware of the spell and can thus avoid answering questions to which it would normally respond with a lie. Such a creature can be evasive in its answers as long as it remains within the boundaries of the truth.','10 minutes','Control',60,'Enchantment','CHA Save'),
		   ('Beast Bond',1,1,'V,S,M*','You establish a telepathic link with one beast you touch that is friendly to you or charmed by you. The spell fails if the beast’s Intelligence is 4 or higher. Until the spell ends, the link is active while you and the beast are within line of sight of each other. Through the link, the beast can understand your telepathic messages to it, and it can telepathically communicate simple emotions and concepts back to you. While the link is active, the beast gains advantage on attack rolls against any creature within 5 feet of you that you can see.','8 minutes','Buff (...)',0,'Divination','None'),
		   ('Bones of the Earth',6,1,'V,S,M*','You cause up to six pillars of stone to burst from places on the ground that you can see within range. Each pillar is a cylinder that has a diameter of 5 feet and a height of up to 30 feet. The ground where a pillar appears must be wide enough for its diameter, and you can target the ground under a creature if that creature is Medium or smaller. Each pillar has AC 5 and 30 hit points. When reduced to 0 hit points, a pillar crumbles into rubble, which creates an area of difficult terrain with a 10-foot radius that lasts until the rubble is cleared. Each 5-foot-diameter portion of the area requires at least 1 minute to clear by hand. If a pillar is created under a creature, that creature must succeed on a Dexterity saving throw or be lifted by the pillar. A creature can choose to fail the save. If a pillar is prevented from reaching its full height because of a ceiling or other obstacle, a creature on the pillar takes 6d6 bludgeoning damage and is restrained, pinched between the pillar and the obstacle. The restrained creature can use an action to make a Strength or Dexterity check (the creature’s choice) against the spell’s save DC. On a success, the creature is no longer restrained and must either move off the pillar or fall off it.','Instanteneous','Bludgeoning',120,'Transmutation','DEX Save'),
		   ('Circle of Power',5,1,'V','You radiate a sphere of energy with a 30-foot radius. The sphere moves with you, centered on you. For the duration, each ally in the area, yourself included, has advantage on saves against spells and magical effects. Additionally, when a creature succeeds on a save that causes half damage, it takes no damage.','10 minutes','Buff(...)',30,	'Abjuration','Self'),
		   ('Acid Splash',0,1,'V,S','You hurl a bubble of acid. Choose one creature within range, or choose two creatures within range that are within 5 feet of each other. A target must succeed on a Dexterity saving throw or take 1d6 acid damage.','Instantenous','Acid',60,'Conjuration','DEX Save'),
		   ('1',1,1,'1','1','1','1',10,'1',null),
		   ('lapte',1,1,'1','1','1','1',10,'1',null),
		   ('branza',1,1,'1','1','1','1',10,'1',null)

		   
INSERT INTO Class_X_Spell(classId,spellId)
	VALUES (1,2),
		   (1,3),
		   (1,8),
		   (1,9),
		   (8,1),
		   (8,2),
		   (8,9),
		   (7,5),
		   (7,6),
		   (7,7),
		   (3,3),
		   (3,4),
		   (3,7)

INSERT INTO Party_X_Player(partyID,playerID)
	VALUES (1,1),
		   (1,2),
		   (1,3),
		   (1,4),
		   (2,5),
		   (2,6),
		   (2,7),
		   (2,8),
		   (3,1),
		   (3,2),
		   (3,3),
		   (3,4),
		   (3,5),
		   (4,1),
		   (4,3),
		   (4,5),
		   (4,7),
		   (5,2),
		   (5,4),
		   (5,6),
		   (5,8),
		   (6,1),
		   (6,2),
		   (6,7),
		   (6,8)

INSERT INTO Party_X_Story(storyID,partyID)
	VALUES (1,1),
		   (1,2),
		   (1,3),
		   (1,4),
		   (1,5),
		   (1,6),
		   (2,1),
		   (2,2),
		   (2,3),
		   (2,4),
		   (2,5),
		   (3,1),
		   (3,3),
		   (3,4),
		   (3,6),
		   (4,1),
		   (4,2),
		   (4,6),
		   (4,3),
		   (4,4),
		   (5,2),
		   (5,3)


DELETE FROM CharacterSheet
INSERT INTO CharacterSheet(
				partyId,
				characterName,
				raceId,
				classId,
				characterLevel,
				characterCharisma,
				characterConstitution,
				characterDexterity,
				characterIntelligence,
				characterStrength,
				characterWisdom,
				characterHitPoints
				)
		VALUES (1,'Igâl ai',8,1,20,2,3,1,2,-1,2,16),
			   (2,'Faerlias',9,7,5,2,0,3,1,2,0,10),
			   (3,'Legolas',3,8,16,3,2,3,1,2,-1,30),
			   (4,'Singfried',2,3,6,2,1,3,2,1,0,10),
			   (5,'Lululi',5,3,2,1,3,2,1,2,0,0),
			   (6,'Sauron',9,10,18,2,3,2,3,2,2,0),
			   (7,'Mario',8,7,13,0,3,2,-1,3,0,1),
			   (2,'Artas',6,7,7,1,2,1,2,1,2,12),
			   (3,'Birhan',6,3,0,1,2,3,1,2,3,20),
			   (4,'Oof',9,6,20,5,5,5,5,5,5,40),
			   (5,'Kelu',8,2,1,-3,-3,-3,-3,-3,5,0),
			   (6,'Boi',4,2,12,2,1,2,1,2,2,10),
			   (7,'O zi an Continuare',5,6,20,3,4,4,4,4,4,10)

DELETE FROM Player_X_Character
INSERT INTO Player_X_Character(playerId,characterId)
	VALUES (1,1),
		   (1,2),
		   (1,3),
		   (2,4),
		   (2,5),
		   (2,6),
		   (3,7),
		   (3,8),
		   (4,9),
		   (5,10),	
		   (6,11),
		   (7,12),
		   (7,13)

DELETE FROM CurrentVersion
INSERT INTO CurrentVersion
	VALUES(0)

INSERT INTO Player_X_Character(playerId,characterId)
	VALUES (1,1),
		   (10,120)



UPDATE CharacterSheet
SET characterHitPoints = 19
WHERE characterID=1 OR characterLevel BETWEEN 19 AND 20

UPDATE Player
SET playerName = 'Updatat'
WHERE playerId = 9 and playerName LIKE 'De%'

UPDATE Party
SET partyName = 'Beeest party ever'
WHERE partyId = 1

DELETE FROM Player
WHERE playerId = 9;

DELETE FROM Party
WHERE partyId = 8;

DELETE FROM Spell
WHERE spellType IS null OR spellName IN ('lapte','branza')
