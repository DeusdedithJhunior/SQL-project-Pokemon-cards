INSERT INTO dbo.tbl_types (typeName) VALUES
(N'Colorless'),
(N'Grass'),
(N'Fire'),
(N'Water'),
(N'Lightning'),
(N'Psychic'),
(N'Fighting'),
(N'Darkness'),
(N'Metal'),
(N'Dragon'),
(N'Fairy');

INSERT INTO dbo.tbl_stages (stageName) VALUES
(N'Basic'),
(N'Stage 1'),
(N'Stage 2'),
(N'V'),
(N'VMAX'),
(N'VSTAR'),
(N'EX'),
(N'GX'),
(N'BREAK'),
(N'LV.X'),
(N'Baby'),
(N'Item'),
(N'Supporter'),
(N'Stadium');

INSERT INTO dbo.tbl_collections (collectionsSetName, releaseDate, totalCardsInCollection) VALUES
(N'Base Set', '1999-01-09', 102),
(N'Jungle', '1999-06-16', 64),
(N'Fossil', '1999-10-10', 62);

INSERT INTO dbo.tbl_cards
(name, hp, info, attack, damage, weak, resist, retreat, cardNumberInCollection, collectionId, typeId, stageId)
VALUES
(
    N'Pikachu',
    40,
    N'Common variant',
    N'Thunder Jolt; Growl',
    N'20',
    N'Fighting ×2',
    N'Metal −20',
    1,
    N'58/102',
    (SELECT collectionId FROM dbo.tbl_collections WHERE collectionsSetName = N'Base Set'),
    (SELECT typeId FROM dbo.tbl_types WHERE typeName = N'Lightning'),
    (SELECT stageId FROM dbo.tbl_stages WHERE stageName = N'Basic')
),
(
    N'Charizard',
    120,
    N'Holo Rare',
    N'Fire Spin',
    N'100',
    N'Water ×2',
    N'',
    3,
    N'4/102',
    (SELECT collectionId FROM dbo.tbl_collections WHERE collectionsSetName = N'Base Set'),
    (SELECT typeId FROM dbo.tbl_types WHERE typeName = N'Fire'),
    (SELECT stageId FROM dbo.tbl_stages WHERE stageName = N'Stage 2')
),
(
    N'Bulbasaur',
    40,
    N'Common',
    N'Leech Seed',
    N'20',
    N'Fire ×2',
    N'',
    1,
    N'44/102',
    (SELECT collectionId FROM dbo.tbl_collections WHERE collectionsSetName = N'Base Set'),
    (SELECT typeId FROM dbo.tbl_types WHERE typeName = N'Grass'),
    (SELECT stageId FROM dbo.tbl_stages WHERE stageName = N'Basic')
),
(
    N'Eevee',
    50,
    N'Common',
    N'Tackle; Sand-attack',
    N'10',
    N'Fighting ×2',
    N'',
    1,
    N'51/64',
    (SELECT collectionId FROM dbo.tbl_collections WHERE collectionsSetName = N'Jungle'),
    (SELECT typeId FROM dbo.tbl_types WHERE typeName = N'Colorless'),
    (SELECT stageId FROM dbo.tbl_stages WHERE stageName = N'Basic')
),
(
    N'Hitmonchan',
    70,
    N'Holo Rare',
    N'Jab; Special Punch',
    N'20; 40',
    N'Psychic ×2',
    N'',
    2,
    N'7/102',
    (SELECT collectionId FROM dbo.tbl_collections WHERE collectionsSetName = N'Base Set'),
    (SELECT typeId FROM dbo.tbl_types WHERE typeName = N'Fighting'),
    (SELECT stageId FROM dbo.tbl_stages WHERE stageName = N'Basic')
),
(
    N'Gengar',
    80,
    N'Holo Rare',
    N'Dark Mind',
    N'30',
    N'Darkness ×2',
    N'Fighting −30',
    1,
    N'5/62',
    (SELECT collectionId FROM dbo.tbl_collections WHERE collectionsSetName = N'Fossil'),
    (SELECT typeId FROM dbo.tbl_types WHERE typeName = N'Psychic'),
    (SELECT stageId FROM dbo.tbl_stages WHERE stageName = N'Stage 2')
);
