INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Gastly', 30, N'Common', N'Lick; Energy Conversion', N'10', N'Psychic ×2', N'Fighting −30', 1, N'33/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Psychic'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'33/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Drowzee', 50, N'Common', N'Hypnosis', N'', N'Psychic ×2', N'', 1, N'49/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Psychic'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'49/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Hypno', 90, N'Rare', N'Prophecy; Dark Mind', N'30', N'Psychic ×2', N'', 2, N'8/62',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Psychic'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Fossil'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'8/62');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Venonat', 40, N'Common', N'Leech Life', N'10', N'Fire ×2', N'', 1, N'63/64',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Grass'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Jungle'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'63/64');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Venomoth', 70, N'Rare', N'Shock; Venom Powder', N'10', N'Fire ×2', N'', 1, N'13/64',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Grass'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Jungle'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'13/64');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Butterfree', 70, N'Uncommon', N'Whirlwind', N'20', N'Fire ×2', N'Fighting −30', 1, N'33/64',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Grass'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 2'
WHERE c.collectionsSetName=N'Jungle'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'33/64');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Beedrill', 80, N'Rare', N'Twinedle; Poison Sting', N'30', N'Fire ×2', N'', 1, N'17/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Grass'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 2'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'17/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Pidgeot', 80, N'Rare', N'Hurricane', N'30', N'Lightning ×2', N'Fighting −30', 2, N'8/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Colorless'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 2'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'8/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Nidoran♀', 40, N'Common', N'Scratch', N'10', N'Psychic ×2', N'', 1, N'55/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Grass'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'55/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Nidorina', 70, N'Uncommon', N'Double Kick', N'30×', N'Psychic ×2', N'', 2, N'36/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Grass'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'36/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Nidoqueen', 90, N'Rare', N'Boyfriends', N'20+', N'Psychic ×2', N'', 2, N'7/64',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Grass'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 2'
WHERE c.collectionsSetName=N'Jungle'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'7/64');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Nidoran♂', 40, N'Common', N'Horn Hazard', N'30', N'Psychic ×2', N'', 1, N'56/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Grass'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'56/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Nidorino', 60, N'Uncommon', N'Horn Drill', N'50', N'Psychic ×2', N'', 2, N'37/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Grass'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'37/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Nidoking', 90, N'Holo Rare', N'Horn Attack; Thrash', N'30+', N'Psychic ×2', N'', 3, N'11/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Grass'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 2'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'11/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Koffing', 50, N'Common', N'Foul Gas', N'10', N'Psychic ×2', N'', 2, N'51/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Grass'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'51/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Weezing', 60, N'Uncommon', N'Smokescreen', N'20', N'Psychic ×2', N'', 3, N'36/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Grass'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'36/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Paras', 40, N'Common', N'Scratch; Leech Life', N'10', N'Fire ×2', N'', 1, N'47/64',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Grass'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Jungle'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'47/64');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Parasect', 60, N'Uncommon', N'Spore; Slash', N'30', N'Fire ×2', N'', 1, N'28/64',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Grass'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Jungle'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'28/64');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Pinsir', 60, N'Rare', N'Iron Grip; Guillotine', N'50', N'Fire ×2', N'', 2, N'25/64',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Grass'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Jungle'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'25/64');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Goldeen', 40, N'Common', N'Horn Attack', N'10', N'Lightning ×2', N'', 1, N'53/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Water'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'53/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Seaking', 70, N'Uncommon', N'Waterfall', N'30', N'Lightning ×2', N'', 1, N'47/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Water'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'47/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Slowpoke', 50, N'Common', N'Spacing Out; Scavenge', N'', N'Psychic ×2', N'', 1, N'54/62',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Psychic'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Fossil'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'54/62');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Slowbro', 60, N'Uncommon', N'Thick Skinned; Psychic', N'20', N'Psychic ×2', N'', 2, N'40/62',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Psychic'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Fossil'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'40/62');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Shellder', 30, N'Common', N'Supersonic; Clamp', N'30', N'Lightning ×2', N'', 1, N'54/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Water'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'54/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Cloyster', 50, N'Uncommon', N'Clamp; Spike Cannon', N'30×', N'Lightning ×2', N'', 2, N'33/62',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Water'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Fossil'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'33/62');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Onix', 90, N'Common', N'Rock Throw; Harden', N'10', N'Grass ×2', N'', 3, N'56/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Fighting'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'56/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Starmie', 60, N'Uncommon', N'Slap; Star Freeze', N'20', N'Lightning ×2', N'', 1, N'64/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Water'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'64/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Psyduck', 50, N'Common', N'Headache; Fury Swipes', N'10×', N'Lightning ×2', N'', 1, N'53/62',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Water'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Fossil'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'53/62');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Golduck', 70, N'Uncommon', N'Super Psy', N'50', N'Lightning ×2', N'', 1, N'37/62',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Water'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Fossil'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'37/62');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Jigglypuff', 60, N'Common', N'Lullaby; Pound', N'20', N'Fighting ×2', N'', 1, N'54/102',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Colorless'
JOIN dbo.tbl_stages s ON s.stageName=N'Basic'
WHERE c.collectionsSetName=N'Base Set'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'54/102');

INSERT INTO dbo.tbl_cards (name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
SELECT N'Wigglytuff', 80, N'Rare', N'Do the Wave', N'10+', N'Fighting ×2', N'', 2, N'19/64',
       c.collectionId, t.typeId, s.stageId
FROM dbo.tbl_collections c
JOIN dbo.tbl_types t ON t.typeName=N'Colorless'
JOIN dbo.tbl_stages s ON s.stageName=N'Stage 1'
WHERE c.collectionsSetName=N'Jungle'
  AND NOT EXISTS (SELECT 1 FROM dbo.tbl_cards x WHERE x.collectionId=c.collectionId AND x.cardNumberInCollection=N'19/64');