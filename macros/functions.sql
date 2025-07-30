 {% macro margin_percent(revenue, margin) %}
    ROUND(SAFE_DIVIDE(margin,revenue)*100)
 {% endmacro %}