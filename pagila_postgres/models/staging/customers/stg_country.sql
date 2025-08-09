{{ config(materialized='view') }}

-- staging model for country
select *
from {{ source('public', 'country') }}
