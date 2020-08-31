#for All sites

select
# Echo cols

	pfdb.prod_name as 'Product Name',
	pfdb.sku as 'SKU',
	pfdb.uri as 'Landing Page',
	pfdb.brand as 'Site',
	be.month_year as 'Month of the Year',
	gae.Impressions,
	gae.Clicks,
	gae.CTR as 'CTR %',
	gae.Average_Position as 'Avg Position',
	gae.Sessions,
	gae.Bounce_Rate*100 as 'Bounce Rate %',
	gae.Pages_per_Session as 'Pages/Sessions',
	be.Visits,
	be.Orders,
	be.Revenue,
	be.orders/be.visits*100 as 'Conversion Rate %'

#Echo JOIN
from
	pm_fmps_db pfdb
		JOIN bc_echo be ON pfdb.sku = be.sku
		and pfdb.brand = be.brand
		JOIN ga_echo gae ON pfdb.uri = gae.uri
		AND gae.month_year = be.month_year

#Shind cols
union select

	pfdb.prod_name as 'Product Name',
	pfdb.sku as 'SKU',
	pfdb.uri as 'Landing Page',
	pfdb.brand as 'Site',
	bs.month_year as 'Month of the Year',
	gas.Impressions,
	gas.Clicks,
	gas.CTR as 'CTR %',
	gas.Average_Position as 'Avg Position',
	gas.Sessions,
	gas.Bounce_Rate*100 as 'Bounce Rate %',
	gas.Pages_per_Session as 'Pages/Sessions',
	bs.Visits,
	bs.Orders,
	bs.Revenue,
	bs.orders/bs.visits*100 as 'Conversion Rate %'

#Shin JOIN
from
	pm_fmps_db pfdb
		JOIN bc_shi bs ON pfdb.sku = bs.sku
		and pfdb.brand = bs.brand
		JOIN ga_shi gas ON pfdb.uri = gas.uri
		AND gas.month_year = bs.month_year

#Husq cols
union select

	pfdb.prod_name as 'Product Name',
	pfdb.sku as 'SKU',
	pfdb.uri as 'Landing Page',
	pfdb.brand as 'Site',
	bh.month_year as 'Month of the Year',
	gah.Impressions,
	gah.Clicks,
	gah.CTR as 'CTR %',
	gah.Average_Position as 'Avg Position',
	gah.Sessions,
	gah.Bounce_Rate*100 as 'Bounce Rate %',
	gah.Pages_per_Session as 'Pages/Sessions',
	bh.Visits,
	bh.Orders,
	bh.Revenue,
	bh.orders/bh.visits*100 as 'Conversion Rate %'

#Husq JOIN
from
	pm_fmps_db pfdb
		JOIN bc_husq bh ON pfdb.sku = bh.sku
		and pfdb.brand = bh.brand
		JOIN ga_husq gah ON pfdb.uri = gah.uri
		AND gah.month_year = bh.month_year

#BSS cols
union select

	pfdb.prod_name as 'Product Name',
	pfdb.sku as 'SKU',
	pfdb.uri as 'Landing Page',
	pfdb.brand as 'Site',
	bbs.month_year as 'Month of the Year',
	gab.Impressions,
	gab.Clicks,
	gab.CTR as 'CTR %',
	gab.Average_Position as 'Avg Position',
	gab.Sessions,
	gab.Bounce_Rate*100 as 'Bounce Rate %',
	gab.Pages_per_Session as 'Pages/Sessions',
	bbs.Visits,
	bbs.Orders,
	bbs.Revenue,
	bbs.orders/bbs.visits*100 as 'Conversion Rate %'

#BSS JOIN
from
	pm_fmps_db pfdb
		JOIN bc_bss bbs ON pfdb.sku = bbs.sku
		and pfdb.brand = bbs.brand
		JOIN ga_bss gab ON pfdb.uri = gab.uri
		AND gab.month_year = bbs.month_year

#Kohler cols
union select

	pfdb.prod_name as 'Product Name',
	pfdb.sku as 'SKU',
	pfdb.uri as 'Landing Page',
	pfdb.brand as 'Site',
	bk.month_year as 'Month of the Year',
	gak.Impressions,
	gak.Clicks,
	gak.CTR as 'CTR %',
	gak.Average_Position as 'Avg Position',
	gak.Sessions,
	gak.Bounce_Rate*100 as 'Bounce Rate %',
	gak.Pages_per_Session as 'Pages/Sessions',
	bk.Visits,
	bk.Orders,
	bk.Revenue,
	bk.orders/bk.visits*100 as 'Conversion Rate %'

#Kohler JOIN
from
	pm_fmps_db pfdb
		JOIN bc_kohler bk ON pfdb.sku = bk.sku
		and pfdb.brand = bk.brand
		JOIN ga_kohler gak ON pfdb.uri = gak.uri
		AND gak.month_year = bk.month_year

#ORG cols
union select

	pfdb.prod_name as 'Product Name',
	pfdb.sku as 'SKU',
	pfdb.uri as 'Landing Page',
	pfdb.brand as 'Site',
	bo.month_year as 'Month of the Year',
	gao.Impressions,
	gao.Clicks,
	gao.CTR as 'CTR %',
	gao.Average_Position as 'Avg Position',
	gao.Sessions,
	gao.Bounce_Rate*100 as 'Bounce Rate %',
	gao.Pages_per_Session as 'Pages/Sessions',
	bo.Visits,
	bo.Orders,
	bo.Revenue,
	bo.orders/bo.visits*100 as 'Conversion Rate %'

##ORG JOIN
from
	pm_fmps_db pfdb
		JOIN bc_org bo ON pfdb.sku = bo.sku
		and pfdb.brand = bo.brand
		JOIN ga_org gao ON pfdb.uri = gao.uri
		AND gao.month_year = bo.month_year

#Graco cols
union select

	pfdb.prod_name as 'Product Name',
	pfdb.sku as 'SKU',
	pfdb.uri as 'Landing Page',
	pfdb.brand as 'Site',
	bg.month_year as 'Month of the Year',
	gag.Impressions,
	gag.Clicks,
	gag.CTR as 'CTR %',
	gag.Average_Position as 'Avg Position',
	gag.Sessions,
	gag.Bounce_Rate*100 as 'Bounce Rate %',
	gag.Pages_per_Session as 'Pages/Sessions',
	bg.Visits,
	bg.Orders,
	bg.Revenue,
	bg.orders/bg.visits*100 as 'Conversion Rate %'

#Graco JOIN
from
	pm_fmps_db pfdb
		JOIN bc_graco bg ON pfdb.sku = bg.sku
		and pfdb.brand = bg.brand
		JOIN ga_graco gag ON pfdb.uri = gag.uri
		AND gag.month_year = bg.month_year
;

###########################################
####### END OF ALL SITES QUERY ############
###########################################
