
    
    

with child as (
    select manager_staff_id as from_field
    from "pagila"."public"."store"
    where manager_staff_id is not null
),

parent as (
    select staff_id as to_field
    from "pagila"."public"."staff"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


