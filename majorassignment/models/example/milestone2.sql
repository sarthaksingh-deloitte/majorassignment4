with x as (
select nav.*,fund.id as fund_id, fund.category as fund_category from "MAJORASSIGNMENT"."PUBLIC"."NAV" as nav
inner join "MAJORASSIGNMENT"."PUBLIC"."MUTUALFUNDS" as mutual_funds on nav.code = mutual_funds.code
inner join "MAJORASSIGNMENT"."PUBLIC"."FUNDCATEGORY" as fund on mutual_funds.category_id = fund.id
)
 

SELECT  distinct x.fund_category, x.nav_date, MAX(x.nav) as max_nav, MIN(x.nav) as min_nav
from x
group by x.fund_category, x.nav_date