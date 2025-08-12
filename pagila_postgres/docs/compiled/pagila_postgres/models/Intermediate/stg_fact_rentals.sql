select
	ren.rental_id,
	ren.customer_id,
	pay.payment_id,
	ren.staff_id,
	inv.film_id,
	ren.rental_date::date,
	ren.return_date::date,
	pay.payment_date::date,
	pay.amount as amount_paid,
    greatest(rental_date, payment_date, return_date) as last_activity_date
from
	"pagila"."public"."stg_rental" as ren
left join
	"pagila"."public"."stg_payment" as pay
	on ren.rental_id = pay.rental_id and ren.customer_id = pay.customer_id
left join
	"pagila"."public"."stg_inventory" as inv
		on ren.inventory_id = inv.inventory_id