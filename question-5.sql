-- What was the most purchased track of 2013?
SELECT T.Name, COUNT(II.TrackId) AS counts
FROM tracks T
JOIN invoice_items II ON T.TrackId = II.TrackId
JOIN invoices I ON II.InvoiceId = I.InvoiceId
WHERE I.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY T.TrackId
ORDER BY counts DESC;