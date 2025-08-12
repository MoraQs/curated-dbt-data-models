with 
cust_addre_cte as (

	select
	
		cus.customer_id,
		cus.store_id,
		concat_ws(' ', cus.first_name, cus.last_name) as customer_name,
		cus.email as email_address,
		cus.create_date as created_date,
		add.address,
		add.district,
		add.phone as phone_number,
		add.postal_code,
		add.city_id
		
	from 
		"pagila"."public"."stg_customer" as cus
	left join 
		"pagila"."public"."stg_address" as add on cus.address_id = add.address_id
	
),

store_manager_cte as (

	select
	
		sto.store_id,
		concat_ws(' ', stf.first_name, stf.last_name) as store_manager_name
		
	from
		"pagila"."public"."stg_store" as sto
	left join
		"pagila"."public"."stg_staff" as stf on sto.manager_staff_id = stf.staff_id
				
),

country_cte as (

	select
	
		cty.city_id,
		cty.city,
		con.country
		
	from 
		"pagila"."public"."stg_city" as cty
	left join
		"pagila"."public"."stg_country" as con on cty.country_id = con.country_id

),

merge_data_cte as (

	select
	
		c.customer_id,
		c.customer_name,
		c.email_address,
		c.created_date,
		c.address,
		c.district,
		c.phone_number,
		b.city,
		b.country,
		m.store_manager_name
		
	from
		cust_addre_cte as c
	left join
		store_manager_cte as m on c.store_id = m.store_id
	left join
		country_cte as b on b.city_id = c.city_id
		
)

select * from merge_data_cte