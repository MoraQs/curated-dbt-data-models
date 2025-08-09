{{ config(materialized='view') }}

-- staging model for staff
select *
from {{ source('public', 'staff') }}
