select id as payment_id, order_id, trim(payment_metho) as payment_method, amount
from {{ source("raw", "raw_payments") }}
where lower(__hevo__marked_deleted) = 'false'
