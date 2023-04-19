-- Which sales agent made the most in sales in 2010?
SELECT E.firstname, E.lastname, SUM(II.Quantity * II.UnitPrice) AS totalsale
FROM employees E
JOIN customers C ON E.EmployeeId = C.SupportRepId
JOIN invoices I ON C.CustomerId = I.CustomerId
JOIN invoice_items II ON I.InvoiceId = II.InvoiceId
WHERE I.InvoiceDate BETWEEN '2010-01-01' AND '2010-12-31'
GROUP BY E.EmployeeId
ORDER BY totalsale DESC;