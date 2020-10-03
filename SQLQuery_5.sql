SELECT [product_name], [model_year], [quantity], [list_price], ([quantity]* [list_price]) 
    FROM [production].[products] as pp
    inner JOIN [production].[stocks] as ps
    on ps.[product_id] = pp.[product_id]
    GROUP BY pp.[product_name], [model_year], [quantity], [list_price], ([quantity]* [list_price]) 
    ORDER BY 5 DESC
   
SELECT pb.brand_name, avg(pp.[list_price])
    FROM [production].[products] as pp
    INNER JOIN [production].[brands] as pb 
    ON pp.[brand_id] = pb.[brand_id]
    GROUP BY pb.brand_name, pp.[list_price]

CREATE VIEW sales.product_info
AS
SELECT pb.brand_name, [product_name], [list_price]
    FROM [production].[products] as pp
    INNER JOIN [production].[brands] as pb 
    ON pp.[brand_id] = pb.[brand_id]
    
CREATE VIEW sales.daily_sales
AS
SELECT p.[product_id], [order_date] as OrderDate, [quantity], i.[list_price] as ListPrice
    FROM [sales].[orders] as o 
    INNER JOIN [sales].[order_items] as i
    ON o.[order_id] = i.[order_id]
    INNER JOIN [production].[products] as p 
    on p.[product_id] = i.[product_id]

DROP VIEW sales.daily_sales

DROP VIEW sales.product_info



