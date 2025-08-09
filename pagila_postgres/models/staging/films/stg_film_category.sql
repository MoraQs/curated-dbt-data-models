{{ config(materialized='view') }}

-- staging model for film_category
select *
from {{ source('public', 'film_category') }}
