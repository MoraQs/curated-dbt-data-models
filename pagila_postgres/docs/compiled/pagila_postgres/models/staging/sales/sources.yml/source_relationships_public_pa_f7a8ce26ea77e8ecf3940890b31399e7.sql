
    
    

with child as (
    select rental_id as from_field
    from "pagila"."public"."payment"
    where rental_id is not null
),

parent as (
    select rental_id as to_field
    from "pagila"."public"."rental"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


