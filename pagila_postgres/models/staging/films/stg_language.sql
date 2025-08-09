{{ config(materialized='view') }}

-- staging model for language
select *
from {{ source('public', 'language') }}
