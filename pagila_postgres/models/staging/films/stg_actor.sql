{{ config(materialized='view') }}

-- staging model for actor
select *
from {{ source('public', 'actor') }}
