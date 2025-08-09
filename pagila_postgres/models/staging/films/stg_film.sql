{{ config(materialized='view') }}

-- staging model for film
select *
from {{ source('public', 'film') }}
