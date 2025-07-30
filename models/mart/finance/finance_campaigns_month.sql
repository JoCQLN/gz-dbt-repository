SELECT
  extract(month from date_date) as date_month,
  ROUND(SUM(ads_margin),2) as ads_margin,
  ROUND(SUM(average_basket),2)as average_basket,
  ROUND(SUM(operational_margin),2)as operational_margin,
  ROUND(SUM(ads_cost),2)as ads_cost,
  ROUND(SUM(ads_impression),2)as ads_impression,
  ROUND(SUM(ads_click),2)as ads_click,
  ROUND(SUM(quantity),2)as quantity,
  ROUND(SUM(revenue),2)as revenue,
  ROUND(SUM(purchase_cost),2)as purchase_cost,
  ROUND(SUM(margin),2)as margin,
  ROUND(SUM(shipping_fee),2)as shipping_fee,
  ROUND(SUM(log_cost),2)as log_cost,
  ROUND(SUM(ship_cost),2)as ship_cost,
FROM{{ref('finance_campaigns_day')}}
GROUP BY extract(month from date_date)