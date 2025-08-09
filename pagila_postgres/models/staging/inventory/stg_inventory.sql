{{ config(materialized='view') }}

-- staging model for inventory
select *
from {{ source('public', 'inventory') }}
