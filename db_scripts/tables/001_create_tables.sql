CREATE DATABASE db_tcgpokemon_cards
COLLATE Latin1_General_100_CI_AS_SC_UTF8;
GO

USE db_tcgpokemon_cards;
GO

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'dbo')
    EXEC('CREATE SCHEMA dbo');
GO

IF OBJECT_ID(N'dbo.tbl_cards', N'U') IS NOT NULL
    DROP TABLE dbo.tbl_cards;
IF OBJECT_ID(N'dbo.tbl_types', N'U') IS NOT NULL
    DROP TABLE dbo.tbl_types;
IF OBJECT_ID(N'dbo.tbl_stages', N'U') IS NOT NULL
    DROP TABLE dbo.tbl_stages;
IF OBJECT_ID(N'dbo.tbl_collections', N'U') IS NOT NULL
    DROP TABLE dbo.tbl_collections;
GO

CREATE TABLE dbo.tbl_types
(
    typeId INT IDENTITY(1,1) PRIMARY KEY,
    typeName NVARCHAR(20) NOT NULL UNIQUE
);
GO

CREATE TABLE dbo.tbl_stages
(
    stageId INT IDENTITY(1,1) PRIMARY KEY,
    stageName NVARCHAR(16) NOT NULL UNIQUE
);
GO

CREATE TABLE dbo.tbl_collections
(
    collectionId INT IDENTITY(1,1) PRIMARY KEY,
    collectionsSetName NVARCHAR(120) NOT NULL,
    releaseDate DATE NULL,
    totalCardsInCollection INT NULL,
    CONSTRAINT CK_tbl_collections_totalCards_nonneg CHECK (totalCardsInCollection IS NULL OR totalCardsInCollection >= 0),
    CONSTRAINT UQ_tbl_collections_setName UNIQUE (collectionsSetName)
);
GO

CREATE TABLE dbo.tbl_cards
(
    cardId INT IDENTITY(1,1) PRIMARY KEY,
    hp INT NULL,
    name NVARCHAR(120) NOT NULL,
    info NVARCHAR(1500) NULL,
    attack NVARCHAR(300) NULL,
    damage NVARCHAR(12) NULL,
    weak NVARCHAR(24) NULL,
    resist NVARCHAR(24) NULL,
    retreat INT NULL,
    cardNumberInCollection NVARCHAR(20) NULL,
    collectionId INT NOT NULL,
    typeId INT NULL,
    stageId INT NULL,
    CONSTRAINT CK_tbl_cards_hp_nonneg CHECK (hp IS NULL OR hp >= 0),
    CONSTRAINT CK_tbl_cards_retreat_range CHECK (retreat IS NULL OR (retreat >= 0 AND retreat <= 10)),
    CONSTRAINT UQ_tbl_cards_collection_cardNo UNIQUE (collectionId, cardNumberInCollection),
    CONSTRAINT FK_tbl_cards_collections FOREIGN KEY (collectionId) REFERENCES dbo.tbl_collections(collectionId) ON UPDATE CASCADE ON DELETE NO ACTION,
    CONSTRAINT FK_tbl_cards_types FOREIGN KEY (typeId) REFERENCES dbo.tbl_types(typeId) ON UPDATE CASCADE ON DELETE NO ACTION,
    CONSTRAINT FK_tbl_cards_stages FOREIGN KEY (stageId) REFERENCES dbo.tbl_stages(stageId) ON UPDATE CASCADE ON DELETE NO ACTION
);
GO

CREATE INDEX IX_tbl_cards_name ON dbo.tbl_cards(name);
CREATE INDEX IX_tbl_cards_collection ON dbo.tbl_cards(collectionId);
CREATE INDEX IX_tbl_cards_typeId ON dbo.tbl_cards(typeId);
CREATE INDEX IX_tbl_cards_stageId ON dbo.tbl_cards(stageId);
GO