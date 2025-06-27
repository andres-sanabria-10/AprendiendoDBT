{% set target_makes = ['Nissan', 'Honda','Chevrolet','Ford','Toyota']%}

select 
DDATE, 
SALESPERSON,
{% for make in target_makes %}
SUM(CASE WHEN CARMAKE = '{{ make }}' THEN TOTAL_SALE ELSE 0 END ) AS Sales_{{ make | lower }} {% if not loop.last %} , {%endif%}
{% endfor %}
from {{ref("psg_montly_sales_make")}}
group by DDATE,SALESPERSON
