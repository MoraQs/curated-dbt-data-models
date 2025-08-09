{{ config(materialized='view') }}

-- staging model for payment
select *
from {{ source('public', 'payment') }}
