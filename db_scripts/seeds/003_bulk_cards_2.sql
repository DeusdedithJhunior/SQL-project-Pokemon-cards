INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Kadabra', 60, N'Uncommon', N'Confuse Ray', N'30', N'Psychic ×2', N'', 2, N'32/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Psychic'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'32/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Alakazam', 80, N'Holo Rare', N'Confuse Ray', N'30', N'Psychic ×2', N'', 3, N'1/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Psychic'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 2'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'1/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Geodude', 50, N'Common', N'Stone Barrage', N'10×', N'Grass ×2', N'', 1, N'35/62',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Fighting'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Fossil'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'35/62');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Graveler', 60, N'Uncommon', N'Harden; Rock Throw', N'20', N'Grass ×2', N'', 2, N'37/62',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Fighting'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Fossil'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'37/62');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Golem', 80, N'Rare', N'Selfdestruct', N'60', N'Grass ×2', N'', 4, N'36/62',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Fighting'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 2'
WHERE c.collectionsSetName=N'Fossil'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'36/62');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Cubone', 40, N'Common', N'Snivel; Rage', N'10+', N'Grass ×2', N'', 1, N'50/64',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Fighting'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Jungle'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'50/64');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Marowak', 60, N'Uncommon', N'Bonemerang', N'30×', N'Grass ×2', N'', 1, N'39/64',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Fighting'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Jungle'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'39/64');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Doduo', 50, N'Common', N'Fury Attack', N'10×', N'Lightning ×2', N'', 1, N'48/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Colorless'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'48/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Dodrio', 70, N'Uncommon', N'Rage', N'10+', N'Lightning ×2', N'', 2, N'34/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Colorless'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'34/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Ponyta', 50, N'Common', N'Smash Kick; Flametail', N'20', N'Water ×2', N'', 1, N'60/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Fire'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'60/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Rapidash', 70, N'Uncommon', N'Stomp; Agility', N'30', N'Water ×2', N'', 1, N'45/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Fire'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'45/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Seadra', 60, N'Uncommon', N'Water Gun', N'20+', N'Lightning ×2', N'', 1, N'42/62',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Water'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Fossil'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'42/62');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Horsea', 40, N'Common', N'Smokescreen', N'10', N'Lightning ×2', N'', 1, N'50/62',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Water'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Fossil'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'50/62');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Krabby', 50, N'Common', N'Call for Family; Iron Grip', N'20', N'Lightning ×2', N'', 2, N'51/62',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Water'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Fossil'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'51/62');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Kingler', 60, N'Uncommon', N'Flail; Crabhammer', N'40', N'Lightning ×2', N'', 3, N'39/62',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Water'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Fossil'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'39/62');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Meowth', 50, N'Common', N'Pay Day', N'10', N'Fighting ×2', N'', 1, N'56/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Colorless'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'56/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Persian', 70, N'Uncommon', N'Scratch; Pounce', N'20', N'Fighting ×2', N'', 1, N'42/64',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Colorless'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Jungle'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'42/64');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Cubone', 50, N'Common', N'Beat', N'20', N'Grass ×2', N'', 1, N'50/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Fighting'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'50/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Electabuzz', 70, N'Rare', N'Thunderpunch', N'30+', N'Fighting ×2', N'', 2, N'20/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Lightning'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'20/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Electrode', 80, N'Rare', N'Selfdestruct', N'100', N'Fighting ×2', N'', 1, N'21/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Lightning'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'21/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Voltorb', 40, N'Common', N'Tackle', N'10', N'Fighting ×2', N'', 1, N'58/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Lightning'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'58/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Mankey', 30, N'Common', N'Scratch; Fury Swipes', N'10×', N'Psychic ×2', N'', 1, N'55/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Fighting'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'55/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Primeape', 70, N'Uncommon', N'Rage', N'20+', N'Psychic ×2', N'', 1, N'44/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Fighting'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'44/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Pidgey', 40, N'Common', N'Whirlwind', N'10', N'Lightning ×2', N'Fighting −30', 1, N'57/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Colorless'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'57/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Pidgeotto', 60, N'Uncommon', N'Whirlwind; Mirror Move', N'20', N'Lightning ×2', N'Fighting −30', 1, N'22/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Colorless'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'22/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Farfetch’d', 50, N'Uncommon', N'Leek Slap; Pot Smash', N'30', N'Lightning ×2', N'Fighting −30', 1, N'27/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Colorless'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'27/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Ekans', 40, N'Common', N'Poison Sting', N'10', N'Psychic ×2', N'', 1, N'54/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Grass'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'54/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Arbok', 60, N'Uncommon', N'Terror Strike', N'30', N'Psychic ×2', N'', 2, N'31/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Grass'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'31/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Rhyhorn', 70, N'Common', N'Leer; Horn Attack', N'30', N'Grass ×2', N'', 3, N'48/64',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Fighting'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Jungle'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'48/64');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Rhydon', 100, N'Rare', N'Horn Attack; Ram', N'50', N'Grass ×2', N'', 4, N'45/64',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Fighting'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Jungle'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'45/64');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Tentacool', 30, N'Common', N'Cowardice', N'', N'Lightning ×2', N'', 1, N'56/62',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Water'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Fossil'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'56/62');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Tentacruel', 60, N'Uncommon', N'Supersonic; Jellyfish Sting', N'10+', N'Lightning ×2', N'', 1, N'43/62',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Water'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Fossil'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'43/62');