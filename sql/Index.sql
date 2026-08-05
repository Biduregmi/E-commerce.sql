-- Products
CREATE INDEX idx_products_seller
ON Products(seller_id);

CREATE INDEX idx_products_category
ON Products(category_id);

-- Orders
CREATE INDEX idx_orders_customer
ON Orders(customer_id);

-- Order Items
CREATE INDEX idx_orderitems_order
ON Order_Items(order_id);

CREATE INDEX idx_orderitems_product
ON Order_Items(product_id);

-- Payments
CREATE INDEX idx_payments_order
ON Payments(order_id);

-- Deliveries
CREATE INDEX idx_deliveries_order
ON Deliveries(order_id);
