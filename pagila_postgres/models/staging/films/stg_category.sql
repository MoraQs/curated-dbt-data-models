{{ config(materialized='view') }}

-- staging model for category
select *
from {{ source('public', 'category') }}
