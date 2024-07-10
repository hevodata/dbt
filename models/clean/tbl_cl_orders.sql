{{
    config(
        materialized = "table",
        sort = 'order_date'
    )
}}

select id as order_id, user_id as customer_id, order_date, trim(status) as order_status
from {{ source("raw", "raw_orders") }}
where lower(__hevo__marked_deleted) = 'false'
