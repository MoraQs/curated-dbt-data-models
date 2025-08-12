with film_cte as (

	select
		flm.film_id,
		flm.title,
		flm.description,
		flm.release_year,
		flm.rental_rate,
		flm.length as film_length,
		flm.replacement_cost,
		flm.rating,
		regexp_replace(array_to_string(flm.special_features, ','), E'[{}"]', '', 'g') as special_features,
		lan.name as language
	from
		"pagila"."public"."stg_film" as flm
	left join
		"pagila"."public"."stg_language" as lan on lan.language_id = flm.language_id

),

category_cte as (

	select
		fct.film_id,
		cat.name as film_category	
	from
		"pagila"."public"."stg_film_category" as fct
	left join
		"pagila"."public"."stg_category" as cat
		on fct.category_id = cat.category_id

),

join_ctes as (

	select
	a.*,
	c.film_category
	from
		film_cte as a
	left join
		category_cte as c on a.film_id = c.film_id
)

select * from join_ctes