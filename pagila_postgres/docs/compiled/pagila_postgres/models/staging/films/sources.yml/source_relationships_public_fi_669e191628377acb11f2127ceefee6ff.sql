
    
    

with child as (
    select actor_id as from_field
    from "pagila"."public"."film_actor"
    where actor_id is not null
),

parent as (
    select actor_id as to_field
    from "pagila"."public"."actor"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


