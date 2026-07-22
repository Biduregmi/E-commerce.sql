----------------Adding constraints (Foreign keys)
ALTER TABLE Sellers
ADD(
    CONSTRAINT fk_users
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

ALTER TABLE Customers 
ADD(
    CONSTRAINT fk_Customers_users   --All constraints must be unique else error occures  
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

ALTER TABLE Products
ADD(
    CONSTRAINT fk_Products_sellers
    FOREIGN KEY (seller_id) REFERENCES sellers(seller_id),
    
    CONSTRAINT fk_Products_Categories
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

ALTER TABLE Orders 
ADD(
    CONSTRAINT fk_Orders_Customers
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

ALTER TABLE Order_items
ADD(
    CONSTRAINT fk_Order_items_order
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    
    CONSTRAINT fk_order_items_Products
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

ALTER TABLE Payments
ADD(
    CONSTRAINT fk_Payments_Orders
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

ALTER TABLE Deliveries
ADD(
    CONSTRAINT fk_Deliveries_Orders
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
