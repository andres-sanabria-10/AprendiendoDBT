select 
DDATE,
id_salesPerson,
id_CARMAKE,
TOTAL_SALE,
TOTAL_COMISION

from {{ ref('fct_montly_sales') }}
where
TOTAL_SALE < 0 or TOTAL_COMISION < 0