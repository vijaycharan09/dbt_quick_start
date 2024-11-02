select
  B.customer_id
from {{ ref('stg_jaffle_shop_orders') }} A
left join {{ ref('stg_jaffle_shop_customers') }} B
using (customer_id)
having b.customer_id is null