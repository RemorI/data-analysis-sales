-- Little comparasion to guaranteed that no values are missing
SELECT count(*)
FROM customer_dim; -- 793 -- c

SELECT count(*)
FROM delivery_dim; -- 4906 -- d

SELECT count(*)
FROM destination_dim; -- 628 -- n

SELECT count(*)
FROM order_dim; -- 9800 -- o

SELECT count(*)
FROM product_dim; -- 1894 -- p


-- Creation of a special dataset for the identification of:

SELECT
    d.Order_Date, -- Sales Revenue over Time
    p.Category, -- Sales by Category
    n.Region, -- Sales by Region
    c.Segment, -- Salves by Customer Segments
	o.Sales
FROM order_dim o
	LEFT JOIN delivery_dim d ON o.Delivery_ID = d.Delivery_ID
    LEFT JOIN product_dim p ON o.Product_ID = p.Product_ID
    LEFT JOIN customer_dim c ON o.Customer_ID = c.Customer_ID
    LEFT JOIN destination_dim n ON d.Destination_ID = n.Destination_ID
