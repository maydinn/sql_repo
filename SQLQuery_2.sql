SELECT *
    FROM sales.customers
    WHERE state in ('NY', 'CA')
    ORDER BY first_name

SELECT city, count(*) as numberofcustomer
    FROM sales.customers
    WHERE state='CA'
    GROUP BY city

SELECT city, count(*) as numberofcustomer
    FROM sales.customers
    WHERE state='NY'
    GROUP BY city


SELECT state, count(*) as numberofstate
    FROM sales.customers
    GROUP BY state

SELECT city, COUNT(*) as numberofcust
    FROM sales.customers
    WHERE state='NY'
    GROUP BY city
    HAVING COUNT(*) > 10
    ORDER BY 2 desc, 1 desc

SELECT city, COUNT(*) as numberofcust
    FROM sales.customers
    WHERE state='NY'
    GROUP BY city
    HAVING numberofcust > 10
    ORDER BY 2 desc, 1 desc

SELECT first_name + ' ' + last_name as [name_surname]
    FROM sales.customers
    WHERE state='NY'

SELECT city, first_name, last_name, street
    FROM sales.customers
    ORDER BY len(first_name) desc

SELECT city, first_name, last_name, street, len(first_name) as lengthofname
    FROM sales.customers
    ORDER BY len(first_name) desc 

SELECT TOP (3)city, first_name, last_name, street, len(first_name) as lengthofname
    FROM sales.customers
    ORDER BY len(first_name) desc 


SELECT TOP 2 percent first_name, len(first_name)
    FROM sales.customers
    ORDER BY len(first_name) desc 

SELECT distinct city
    FROM sales.customers
    WHERE state='NY'


