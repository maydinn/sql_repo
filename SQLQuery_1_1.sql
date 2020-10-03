CREATE TABLE sales.promotions
(
    promotion_id int primary key identity (1,1),
    promotion_name varchar (30) not null,
    discount decimal(3,2) DEFAULT 0, 
    [start_date] date not null,
    expired_date date not null
)

INSERT INTO sales.promotions (
    [promotion_name],
    [discount],
    [start_date],
    [expired_date]
)

VALUES(
    '2020 summer promotion',
    0.35,
    '20201210',
    '20201212'
)


INSERT INTO sales.promotions (
    [promotion_name],
    [start_date],
    [expired_date]
)

VALUES(
    '2020 summer promotion',
    '20201210',
    '20201212'
)

--UPDATE stament
SELECT * FROM sales.promotions
UPDATE sales.promotions 
    SET discount = 0.10
    WHERE promotion_name='2020 summer promotion'

UPDATE sales.promotions 
    SET discount = 0.12
    WHERE promotion_id=2

UPDATE sales.promotions 
    SET discount = 0.22,
        promotion_name = '2020 new promotion'
    WHERE promotion_id=2

DELETE from sales.promotions
    WHERE promotion_name = '2020 new promotion'



DROP TABLE sales.promotions