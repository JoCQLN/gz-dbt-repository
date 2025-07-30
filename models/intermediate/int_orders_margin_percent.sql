 SELECT
 *,
{{margin_percent(revenue,margin)}} as margin_percent
 FROM {{ ref("int_sales_margin") }}