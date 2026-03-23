SELECT *
FROM shopping_trends;

SELECT 
    "Category", 
    COUNT(*) AS total_orders,                        -- how many purchases per category
    SUM("Purchase Amount (USD)") AS total_revenue,            -- total money made per category
    ROUND(AVG("Purchase Amount (USD)"), 2) AS avg_order_value -- average spend per order
FROM shopping_trends
GROUP BY "Category"
ORDER BY total_revenue DESC;                          -- highest revenue first



SELECT 
    "Season",                                         
    COUNT(*) AS total_orders,                         
    SUM("Purchase Amount (USD)") AS total_revenue,    
    ROUND(AVG("Purchase Amount (USD)"), 2) AS avg_spend 
FROM shopping_trends
GROUP by "Season"
ORDER BY total_revenue DESC;                      


	
	
SELECT 
    "Subscription Status",                               -- Yes or No subscriber
    COUNT(*) AS total_customers,                         -- how many customers
    SUM("Purchase Amount (USD)") AS total_revenue,       -- total money spent
    ROUND(AVG("Purchase Amount (USD)"), 2) AS avg_spend  -- average spend per customer
FROM shopping_trends
GROUP BY "Subscription Status"
ORDER BY total_revenue DESC;


select * from shopping_trends;

SELECT 
    "Customer ID",
    "Frequency of Purchases"                        -- how often
    "Purchase Amount (USD)" AS spend,                 -- how much they spend
    CASE                                              -- CASE WHEN = if/else in SQL
        WHEN "Purchase Amount (USD)" >= 80 THEN 'High Value'   -- if spend is high
        WHEN "Purchase Amount (USD)" >= 50 THEN 'Mid Value'    -- if spend is medium
        ELSE 'Low Value'                              -- everything else
    END AS customer_segment                           -- name the new column
FROM shopping_trends
ORDER BY spend DESC;  -- highest spenders first

create view customer_segments as
select
	"Purchase Amount (USD)" AS spend,
	"Customer ID",
	case 
	 	when "Purchase Amount (USD)" >= 80 then 'High Value'
	 	when "Purchase Amount (USD)" >= 50 Then 'Medium Value'
	 	else 'Low Value'
	end as customer_segement
	from shopping_trends;

SELECT 
    "customer_segement",
    COUNT(*) AS total_customers,
    ROUND(AVG(spend), 2) AS avg_spend
FROM customer_segments
GROUP BY customer_segement
ORDER BY avg_spend DESC;


SELECT 
   "Location",
    COUNT(*) AS total_orders,
    SUM("Purchase Amount (USD)") AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS avg_spend
FROM shopping_trends
GROUP BY "Location"
ORDER BY total_revenue DESC
LIMIT 10;

 
	
select
	"Gender",
    COUNT(*) AS total_orders,
    SUM("Purchase Amount (USD)") AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS avg_spend
FROM shopping_trends
GROUP BY "Gender"
ORDER BY total_revenue DESC;
	
	
	
	
	
	
	
