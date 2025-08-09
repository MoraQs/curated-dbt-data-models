{{ config(materialized='view') }}

-- staging model for rental
select *
from {{ source('public', 'rental') }}
