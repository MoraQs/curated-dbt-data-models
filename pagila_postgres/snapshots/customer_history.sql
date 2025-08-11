{% snapshot customer_history %}

{{
    config(
        target_schema='dbt',
        unique_key='customer_id',
        strategy='timestamp',
        updated_at='last_update'
    )
}}

select
    customer_id,
    store_id,
    first_name,
    last_name,
    email,
    address_id,
    activebool,
    create_date,
    last_update
from 
    {{ source('public', 'customer') }}


{% endsnapshot %}