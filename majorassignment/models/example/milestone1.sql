select month(nav_date) as date, code, avg(nav) as nav_avg, 
avg(repurchase_price) as average_repurchase_price, avg(sale_price) as average_sale_price 
from "MAJORASSIGNMENT"."PUBLIC"."NAV" 
group by code, month(nav_date)
