with

staff_cte as (

	select
    
		sta.staff_id,
		concat_ws(' ', sta.first_name, sta.last_name) as staff_name,
		sta.email,
		add.address as staff_address,
		add.city_id,
		case when add.district in ('QLD') then 'Queensland' else add.district end as district,
		add.phone

	from 
		"pagila"."public"."stg_staff" as sta
	left join
		"pagila"."public"."stg_address" as add on sta.address_id = add.address_id

),

cte_country as (

	select
	
		cty.city_id,
		cty.city,
		con.country
		
	from 
		"pagila"."public"."stg_city" as cty
	left join
		"pagila"."public"."stg_country" as con on cty.country_id = con.country_id

)

select
	a.staff_id,
	a.staff_name,
	a.email,
	a.staff_address,
	a.phone,
	b.city,
	a.district,
	b.country
from
	staff_cte as a
left join
	cte_country as b on a.city_id = b.city_id