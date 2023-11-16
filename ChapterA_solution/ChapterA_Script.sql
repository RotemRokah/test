SELECT P.ProductID, P.ProductDesc, ISNULL(SUM(OD.Quantity), 0) AS Quantity
FROM Products P
LEFT JOIN [Order Details] OD ON P.ProductID = OD.ProductID
GROUP BY P.ProductID, P.ProductDesc

