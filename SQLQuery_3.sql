SELECT [product_name], [model_year], [list_price], [category_name]
    FROM [production].[products] as p
    INNER JOIN [production].[categories] as c
    on c.category_id = p.category_id

SELECT [product_name], [model_year], [list_price], [category_name]
    FROM [production].[products] as p
    LEFT JOIN [production].[categories] as c
    on c.category_id = p.category_id

SELECT [product_name], [model_year], [list_price], [category_name], brand_name
    FROM [production].[products] as p
    INNER JOIN [production].[categories] as c
    on c.category_id = p.category_id
    INNER JOIN [production].[brands] as b 
    ON b.brand_id = p.brand_id
    WHERE c.category_id = 7
    ORDER BY brand_name

SELECT [product_name], [model_year], [list_price], [category_name], brand_name
    FROM [production].[products] as p
    INNER JOIN [production].[categories] as c
    on c.category_id = p.category_id
    INNER JOIN [production].[brands] as b 
    ON b.brand_id = p.brand_id
    WHERE p.list_price > 1500
    ORDER BY list_price