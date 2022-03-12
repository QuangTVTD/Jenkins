{{config(materialized='table')}}

with order_data as (
    select 1 as order_id, 1 as customer_id, NOW() as order_date
    union
    select 2 as order_id, 1 as customer_id, NOW() as order_date
    union
    select 3 as order_id, 3 as customer_id, NOW() as order_date
    union
    select 4 as order_id, 3 as customer_id, NOW() as order_date

)

select *
from order_data