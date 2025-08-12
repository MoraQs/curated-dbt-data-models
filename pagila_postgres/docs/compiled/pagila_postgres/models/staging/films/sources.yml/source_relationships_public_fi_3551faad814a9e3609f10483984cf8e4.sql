
    
    

with child as (
    select language_id as from_field
    from "pagila"."public"."film"
    where language_id is not null
),

parent as (
    select language_id as to_field
    from "pagila"."public"."language"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


