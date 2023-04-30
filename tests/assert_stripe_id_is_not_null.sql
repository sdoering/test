-- validate (just to see if this is doable for me) that the id column of the 
-- stripe data table IS NOT NULL

select 
    SUM(CASE when id IS NOT NULL THEN 0 ELSE 1 END) as null_counter
from 
    {{ source('stripe', 'payment') }}
having 
    not(null_counter > 0)