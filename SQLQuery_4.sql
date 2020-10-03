SELECT 'total' = SUM([list_price]), 'avg' = AVG([list_price]), 'count'=count([list_price]),[model_year]
    FROM [production].[products]
    GROUP BY [model_year]

SELECT [product_id],[product_name],[brand_id],[category_id],'2016',[list_price]
    FROM [production].[products]

SELECT [list_price], ([list_price]*10) as 'new price'
    FROM [production].[products]