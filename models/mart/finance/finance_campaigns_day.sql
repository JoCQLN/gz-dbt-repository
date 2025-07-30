SELECT
  date_date,
  ROUND(SUM(operational_margin-ads_cost),2)  AS ads_margin,
  ROUND(SUM(average_basket),2)  AS average_basket,
  ROUND(SUM(operational_margin),2) AS operational_margin,
  --agregation des ads/imp/click
  ROUND(SUM(ads_cost),2) AS ads_cost,
  ROUND(SUM(impression),2) AS ads_impression,
  ROUND(SUM(click),2) AS ads_click,
   --fin des agregations
  ROUND(SUM(quantity),2) AS quantity,
  ROUND(SUM(revenue),2) AS revenue,
  ROUND(SUM(purchase_cost),2) AS purchase_cost,
  ROUND(SUM(margin),2) AS margin,
  ROUND(SUM(shipping_fee),2) AS shipping_fee,
  ROUND(SUM(log_cost),2) AS log_cost,
  ROUND(SUM(ship_cost),2) AS ship_cost
FROM{{ref('finance_days')}}
INNER JOIN {{ref('int_campaigns_days')}}
USING (date_date)
GROUP BY date_date