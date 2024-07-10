select
    c.customer_id,
    c.first_name,
    c.last_name,
    min(o.order_date) as first_order,
    max(o.order_date) as most_recent_order,
    count(distinct o.order_id) as number_of_orders,
    sum(p.amount) as customer_lifetime_value
from {{ ref("tbl_cl_customers") }} c
left join {{ ref("tbl_cl_orders") }} o on c.customer_id = o.customer_id
left join {{ ref("tbl_cl_payments") }} p on o.order_id = p.order_id
group by c.customer_id, c.first_name, c.last_name
