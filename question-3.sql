-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT II.*, T.Name, A.Name 
FROM invoice_items AS II 
JOIN tracks T ON II.TrackId=T.TrackId 
JOIN albums AL ON T.AlbumId=AL.AlbumId 
JOIN artists A ON AL.ArtistId=A.ArtistId;