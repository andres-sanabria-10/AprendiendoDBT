select *
from {{ ref("stg_sales_data_2020P") }}
{% if target.name == "Prod_cataboosters" %} limit 10 {% endif %}
