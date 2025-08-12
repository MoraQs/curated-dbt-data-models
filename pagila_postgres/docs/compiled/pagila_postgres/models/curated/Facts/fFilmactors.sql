select 
	flm.film_id,
	concat_ws(' ', act.first_name, act.last_name) as actors_name
from
	"pagila"."public"."stg_film_actor" as flm
left join
	"pagila"."public"."stg_actor" as act on flm.actor_id = act.actor_id