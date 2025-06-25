{{
    config (
        materialized='table',
        tags=['processing', 'sales','CarMake']
    )
}}

select 
DATE_TRUNC('MONTH', DDATE) AS DDATE,
SALESPERSON,
CARMAKE,
SUM(SALEPRICE- COMNEA) AS TOTAL_SALE,
SUM (COMNEA) AS TOTAL_COMISION
from {{ ref("stg_sales_data_2020P")  }}
GROUP BY DATE_TRUNC('MONTH', DDATE), SALESPERSON,CARMAKE