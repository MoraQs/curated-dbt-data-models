{{ config(materialized='view') }}

-- staging model for city
select *
from {{ source('public', 'city') }}
