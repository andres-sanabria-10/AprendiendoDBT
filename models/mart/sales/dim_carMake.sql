{{ config(tags = ['dash_sales_bi'])}}

select 
    {{generate_id('CARMAKE')}} as id_CARMAKE, 
    CARMAKE
from {{ref("psg_montly_sales_make")}}
GROUP by CARMAKE