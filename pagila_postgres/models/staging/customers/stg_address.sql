{{ config(materialized='view') }}

-- staging model for address
select *
from {{ source('public', 'address') }}
