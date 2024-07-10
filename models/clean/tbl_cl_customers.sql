select
    id as customer_id,
    trim(first_name) as first_name,
    trim(last_name) as last_name,
    trim(last_name) || ' ' || trim(first_name) as full_name
from {{ source("raw", "raw_customer") }}
where lower(__hevo__marked_deleted) = 'false'
