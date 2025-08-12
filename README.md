# Source-to-Curated Data Transformation & Documentation for Downstream Analytics with DBT

## 📌 Overview

This dbt project models data from the **Pagila Postgres** sample database.  
It includes both **source-level documentation** (capturing field definitions from upstream systems) and **curated model documentation** (describing derived datasets after transformation).

## 🏗 Documentation Approach

- **Sources**: Documented in `sources.yml` per domain, with detailed descriptions for every column.
- **Curated Models**: Documented in `schema.yml` within each model folder, capturing transformations, joins, and business logic.
- **Cascade Principle**: Every derived field is linked back to its origin in the source, ensuring full lineage traceability.
- **Testing & Quality**: Documentation works alongside dbt tests (`not_null`, `unique`, `accepted_values`) to maintain data reliability.

## 🎯 Purpose

The documentation ensures that both technical and business users:

- Understand the origin and meaning of each dataset.
- Can trace transformations from raw ingestion to curated analytics.
- Have a consistent reference for maintenance, migration, and onboarding.

## 📖 How to View

Browse the documentation here:  
[**View dbt Docs**](https://moraqs.github.io/curated-dbt-data-models/)

Or jump directly to the **Lineage Graph**:
[**Lineage View**](https://moraqs.github.io/curated-dbt-data-models/#!/overview/pagila_postgres?g_v=1)
