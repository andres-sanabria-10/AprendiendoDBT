{% macro generate_id(column_name) %} RANK() over(order by {{column_name}}) {% endmacro %}

