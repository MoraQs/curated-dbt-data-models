{{ config(materialized='view') }}

-- staging model for store
select *
from {{ source('public', 'store') }}
