-- Question 1) Find all the tracks that have a length of 5,000,000 milliseconds or more:

SELECT Name, Milliseconds 
FROM Tracks
WHERE Milliseconds >= 5000000;

--Question 2) Find all the invoices whose total is between $5 and $15 dollars:

SELECT COUNT(*)
FROM Invoices
WHERE Total BETWEEN 5 AND 15;

-- Question 3) Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY:

SELECT FirstName, LastName, Company
FROM Customers
WHERE State IN ('RJ', 'DF', 'AB', 'BC', 'CA', 'WA', 'NY');

-- Question 4) Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00:

SELECT InvoiceId, CustomerId, Total, InvoiceDate
FROM Invoices
WHERE Total BETWEEN 1 AND 5
AND CustomerId IN ('56', '58');

-- Question 5) Find all the tracks whose name starts with 'All':

SELECT COUNT(*)
FROM Tracks
WHERE Name LIKE 'All%';

-- Question 6) Find all the customer emails that start with "J" and are from gmail.com:

SELECT Email
FROM Customers
WHERE Email LIKE 'J%@gmail.com';

-- Question 7) Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID:

SELECT InvoiceId, Total, BillingCity
FROM Invoices
WHERE BillingCity IN ('Brasília', 'Edmonton', 'Vancouver')
ORDER BY InvoiceId DESC; 

-- Question 8) Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order:

SELECT CustomerId, COUNT(*)
FROM Invoices
GROUP BY CustomerId
ORDER BY COUNT(*) DESC;

-- Question 9) Find the albums with 12 or more tracks:

SELECT Title, COUNT(TrackId) AS TrackNumb
FROM Albums AS a
LEFT JOIN Tracks AS t
ON a.AlbumId = t.AlbumId
GROUP BY Title
HAVING TrackNumb >= 12;
