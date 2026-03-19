
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from ANALYTICS.dbt_mkumar.stg_jaffle_shop_orders
    group by status

)

select *
from all_values
where value_field not in (
    'completed','pending','canceled','returned','shipped','delivered','shipped','placed','return pending'
)


