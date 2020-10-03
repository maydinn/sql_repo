SELECT * FROM Track;
SELECT DISTINCT UnitPrice FROM Track;
SELECT * FROM Track
WHERE UnitPrice > 1;
SELECT Name FROM Track 
WHERE UnitPrice <> 1.99;
SELECT Name FROM Track
WHERE UnitPrice BETWEEN 1 AND 2;
SELECT Name FROM Track
WHERE Composer = 'AC/DC'
SELECT * FROM Invoice
WHERE  total >10 
LIMIT 4;
SELECT * FROM Invoice
WHERE  total >10 
ORDER BY total DESC
LIMIT 4;
SELECT * FROM Invoice
WHERE  total >10 
ORDER BY total DESC, invoiceDate ASC
LIMIT 4;
SELECT * FROM Invoice
WHERE  total >10 AND BillingCountry = 'Ireland'
ORDER BY total DESC, invoiceDate ASC
SELECT * FROM Invoice
WHERE  total >10 OR BillingCountry = 'Ireland'
ORDER BY total DESC, invoiceDate ASC
SELECT * FROM Invoice
WHERE NOT total >10 AND BillingCountry = 'Ireland'
ORDER BY total DESC, invoiceDate ASC

SELECT InvoiceId, CustomerId, total FROM Invoice 
ORDER BY CustomerId ASC ,total DESC;
SELECT InvoiceId, CustomerId, total FROM Invoice
ORDER BY total DESC, CustomerId ASC 
SELECT  * FROM Invoice 
WHERE total >= 10;
SELECT  * FROM Invoice 
WHERE total  < 10
LIMIT 5;
SELECT Name FROM Track
WHERE Name like 'B%s'
SELECT * FROM Invoice
WHERE BillingCountry in ('USA', 'Germany', 'Norway', 'Canada') and InvoiceDate BETWEEN '2010-01-01' and '2011-01-01'
ORDER BY InvoiceDate DESC;
SELECT * FROM Invoice


SELECT * FROM Track

SELECT Name, Composer, UnitPrice FROM Track

SELECT count(*) as number_of_row FROM Track;

SELECT count(*) as number_of_row FROM Artist;

SELECT count(DISTINCT UnitPrice) as number_of_distinct_price FROM Track;

SELECT Title FROM Album WHERE AlbumId = '3'

SELECT ArtistId FROM Artist  WHERE Name like 'Metal%'

SELECT Title FROM Album WHERE ArtistId = '50'

SELECT count(*) FROM Track WHERE AlbumId = '152'

SELECT Name, TrackId FROM Track WHERE AlbumId = 152 AND TrackId BETWEEN 1854 and 1858;

SELECT Name, TrackId, min(Bytes) FROM Track WHERE AlbumId = 152

SELECT Name, TrackId, max(Bytes) FROM Track WHERE AlbumId = 152

SELECT *, max(Bytes) FROM Track GROUP BY AlbumId;

SELECT sum(UnitPrice) FROM Track

SELECT AlbumId, sum(UnitPrice) FROM Track GROUP BY AlbumId

SELECT * , round(avg(Milliseconds), 2 )FROM Track GROUP BY AlbumId;

SELECT Name, count(Name) FROM Track GROUP BY AlbumId

SELECT Composer, count(TrackId) FROM Track GROUP BY Composer

SELECT Country,  count(Country) FROM Customer 
GROUP BY Country ORDER BY count(Country) DESC ;

SELECT Country, City , count(Country) FROM Customer 
GROUP BY Country, City ORDER BY count(Country);

SELECT Country,  count(Country) as no_country FROM Customer 
GROUP BY Country 
HAVING no_country > 5
ORDER BY no_country DESC ;


SELECT Name, AlbumId,  min(Milliseconds) as min_dur FROM Track 
GROUP BY AlbumId 
ORDER BY min_dur DESC ;

SELECT * from Invoice
SELECT BillingCountry, sum(total) from Invoice GROUP BY BillingCountry









