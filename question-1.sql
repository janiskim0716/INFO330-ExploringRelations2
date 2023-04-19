-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
SELECT I.InvoiceId, I.InvoiceDate, I.BillingCountry, C.FirstName, C.LastName 
FROM customers AS C 
JOIN invoices AS I ON C.CustomerId=I.CustomerId
WHERE C.Country='Brazil';