-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT E.FirstName || ' ' || E.LastName AS fullname, I.InvoiceId
FROM employees E
JOIN customers C ON E.EmployeeId = C.SupportRepId
JOIN invoices I ON C.CustomerId = I.CustomerId
ORDER BY fullname;