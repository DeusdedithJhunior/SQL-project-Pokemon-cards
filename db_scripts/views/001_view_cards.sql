CREATE OR ALTER VIEW dbo.vw_cards_with_names
AS
SELECT
    c.cardId,
    c.name,
    c.hp,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.resist,
    c.retreat,
    c.cardNumberInCollection,
    col.collectionsSetName AS collectionName,
    col.releaseDate       AS collectionReleaseDate,
    col.totalCardsInCollection,
    ty.typeName           AS typeName,
    st.stageName          AS stageName
FROM dbo.tbl_cards AS c
LEFT JOIN dbo.tbl_collections AS col ON col.collectionId = c.collectionId
LEFT JOIN dbo.tbl_types       AS ty  ON ty.typeId       = c.typeId
LEFT JOIN dbo.tbl_stages      AS st  ON st.stageId      = c.stageId;