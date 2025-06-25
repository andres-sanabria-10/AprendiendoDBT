{{ config(tags = ['dash_sales_bi'])}}

select 
    rank() over (order by SALESPERSON) as id_salesPerson, 
    SALESPERSON
from {{ref("psg_montly_sales_make")}}
GROUP by SALESPERSON