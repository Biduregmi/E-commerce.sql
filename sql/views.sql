------------------------------------------------------------Creating views
--Total_sales 
CREATE VIEW Total_sales AS
SELECT sum(P.amount) AS Total_sales
FROM payments P
WHERE payment_status = 'Paid';

--sales based on product cateroies
CREATE VIEW Top_selling_categories AS
SELECT 
c.Category_name, 
SUM(P.amount) AS sales

FROM payments P
JOIN Orders o ON o.order_id = p.order_id
JOIN order_items ot ON ot.order_id = o.order_id
JOIN Products pr ON ot.product_id = pr.product_id
JOIN categories c ON pr.category_id = c.category_id
WHERE p.payment_status = 'Paid'
GROUP BY c.category_name 
ORDER BY sales DESC;

--sales of sellers
CREATE VIEW sellers_sale AS
SELECT 
s.seller_id,
s.shop_name,
SUM(p.amount) AS total_sales
FROM payments P
JOIN order_items o ON o.order_id = p.order_id
JOIN Products pr ON o.product_id = pr.product_id
JOIN sellers s ON s.seller_id = pr.seller_id
WHERE p.payment_status = 'Paid'
GROUP BY s.seller_id,s.shop_name
ORDER BY total_sales DESC;

--summary of order
CREATE VIEW order_summary AS
SELECT
    o.order_id,
    o.order_date,
    c.customer_id,
    c.shipping_address,
    o.total_amount,
    o.order_status,
    p.payment_method,
    p.payment_status,
    d.rider_name,
    d.status AS delivery_status,
    d.delivery_date
FROM Orders o
JOIN Customers c
    ON o.customer_id = c.customer_id
JOIN Payments p
    ON o.order_id = p.order_id
JOIN Deliveries d
    ON o.order_id = d.order_id;

-------------------------------------------------------Testing views
SELECT * FROM total_sales;

SELECT * FROM order_summary;

SELECT * FROM sellers_sale ;

SELECT * FROM top_selling_categories;
