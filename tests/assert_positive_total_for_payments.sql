with 
payments as (

    select * from {{ref('stg_payments')}}
)
select 
    order_id, 
    sum(amount) as t_amt 
from payments 
group by order_id
having t_amt < 0