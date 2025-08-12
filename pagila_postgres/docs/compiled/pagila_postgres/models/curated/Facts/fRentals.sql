


select 

  rental_id,
  customer_id,
  payment_id,
  staff_id,
  film_id,
  rental_date,
  return_date,
  payment_date,
  amount_paid,
  last_activity_date

from 
  "pagila"."public"."stg_fact_rentals"



    where last_activity_date > (
        select coalesce(max(last_activity_date), '1900-01-01'::date)
        from "pagila"."dbt"."fRentals"
    )
