{{ config(materialized='view') }}

-- staging model for film_actor
select *
from {{ source('public', 'film_actor') }}
