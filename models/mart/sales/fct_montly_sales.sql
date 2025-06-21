{{ config(tags = ['dash_sales_bi'])}}

SELECT 
DDATE,
id_salesPerson,
id_CARMAKE,
TOTAL_SALE,
TOTAL_COMISION
FROM {{ref("psg_montly_sales_make") }} as psg_m 
left join {{ref("dim_carMake")}} as dim_cm on psg_m.CARMAKE = dim_cm.CARMAKE
left join {{ref("dim_salesperson")}} as dim_sp on psg_m.CARMAKE = dim_sp.CARMAKE