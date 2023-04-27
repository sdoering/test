select 
    ID as payment_id,
    ORDERID as order_id,
    PAYMENTMETHOD as payment_method,
    STATUS as status,
    -- AMOUNT is stored in cents, convert it to dollars
    AMOUNT /100 as amount,
    CREATED as created_at
from {{ source('stripe', 'payment') }} 