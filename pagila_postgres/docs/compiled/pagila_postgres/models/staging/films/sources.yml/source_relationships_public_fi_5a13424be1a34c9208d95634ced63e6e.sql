
    
    

with child as (
    select category_id as from_field
    from "pagila"."public"."film_category"
    where category_id is not null
),

parent as (
    select category_id as to_field
    from "pagila"."public"."category"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


