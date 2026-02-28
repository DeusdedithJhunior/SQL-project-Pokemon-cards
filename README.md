***

```md
# SQL-Project-Pokemon-Cards

Projeto completo de modelagem e implementação de um banco de dados SQL Server para um mini e‑commerce de cartas Pokémon TCG.  
Inclui criação de banco, tabelas normalizadas, seeds idempotentes, views consolidadas e organização profissional de scripts.  
Todos os arquivos foram desenvolvidos no VS Code com apoio do Microsoft Copilot.

---

## 📚 Visão Geral

Este repositório implementa uma base de dados completa para gerenciar cartas Pokémon TCG.  
O foco é demonstrar boas práticas de SQL, incluindo:

- Modelagem relacional normalizada  
- Uso correto de chaves estrangeiras  
- Scripts de seed seguros (`WHERE NOT EXISTS`)  
- Collation UTF‑8  
- Views padronizadas  
- Migrações organizadas  

O resultado é uma estrutura robusta, ideal para estudos, portfólio e evolução futura.

---

## 📦 Estrutura do Projeto

SQL-project-Pokemon-cards/
│
├── db\_scripts/
│   ├── tables/
│   │   └── 001\_create\_tables.sql
│   ├── seeds/
│   │   ├── 001\_initial\_seeds.sql
│   │   ├── 002\_bulk\_cards\_1.sql
│   │   ├── 003\_bulk\_cards\_2.sql
│   │   ├── 004\_bulk\_cards\_3.sql
│   │   └── migration.sql
│   ├── views/
│   │   └── 001\_view\_cards.sql
│   ├── to\_migration.ps1
│
├── logs/
│
└── prompts/
└── tcg-cards.txt

---

## 🗄️ Banco de Dados

O banco criado:

db\_tcgpokemon\_cards

Com suporte a UTF‑8:

sql
CREATE DATABASE db_tcgpokemon_cards
COLLATE Latin1_General_100_CI_AS_SC_UTF8;


***

## 📊 Tabelas

### **tbl\_collections**

Armazena coleções (Base Set, Jungle, Fossil etc.).

### **tbl\_types**

Lista de tipos Pokémon normalizados (Fire, Water, Lightning etc.).

### **tbl\_stages**

Estágios das cartas (Basic, Stage 1, Stage 2, V, EX, etc.).

### **tbl\_cards**

Armazena as cartas, com FKs para:

*   collectionId
*   typeId
*   stageId

Restrição única importante:

    (collectionId, cardNumberInCollection)

***

## 🌱 Seeds

Os seeds incluem:

*   Inserção inicial de coleções, tipos e estágios
*   Seeds em massa de mais de 100 cartas Pokémon
*   Scripts idempotentes com `NOT EXISTS`
*   Corrigidos para evitar duplicatas de números por coleção

***

## 👁️ View Consolidada

A view `vw_cards_with_names` retorna informações completas substituindo IDs pelos nomes:

```sql
SELECT
  cardId,
  name,
  hp,
  info,
  attack,
  damage,
  weak,
  resist,
  retreat,
  cardNumberInCollection,
  collectionName,
  collectionReleaseDate,
  totalCardsInCollection,
  typeName,
  stageName
FROM dbo.vw_cards_with_names;
```

***

## 🔧 Tecnologias Utilizadas

*   SQL Server 2019+
*   VS Code
*   Microsoft Copilot
*   T-SQL
*   PowerShell (migração opcional)

***

## 🚀 Como Executar

1.  Criar tabelas:
    *   `001_create_tables.sql`

2.  Executar seeds:
    *   `001_initial_seeds.sql`
    *   `002_bulk_cards_1.sql`
    *   `003_bulk_cards_2.sql`
    *   `004_bulk_cards_3.sql`

3.  Criar a view:
    *   `001_view_cards.sql`

4.  Consultar:
    ```sql
    SELECT * FROM dbo.vw_cards_with_names;
    ```

***

## 🎯 Objetivo do Projeto

Este projeto demonstra como criar um banco relacional completo para um mini e‑commerce de cartas Pokémon, incluindo:

*   Normalização
*   Relacionamentos com FKs
*   Seeds massivos organizados
*   Views de leitura simples
*   Scripts modulares e versionados

É ideal para quem deseja praticar SQL Server, modelagem de dados e boas práticas de engenharia.

***

## 📄 Licença

Projeto aberto para estudo, melhoria e expansão.  
Contribuições são bem‑vindas!
