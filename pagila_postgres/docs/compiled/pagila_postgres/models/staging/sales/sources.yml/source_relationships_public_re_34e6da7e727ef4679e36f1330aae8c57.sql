
    
    

with child as (
    select inventory_id as from_field
    from "pagila"."public"."rental"
    where inventory_id is not null
),

parent as (
    select inventory_id as to_field
    from "pagila"."public"."inventory"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


