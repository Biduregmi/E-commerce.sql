--Reducing stock after a purchase
CREATE OR REPLACE PROCEDURE Sell_product(
    p_productID VARCHAR2,
    P_quantity NUMBER
)
IS 
BEGIN
    UPDATE products
    SET stock_quantity = stock_quantity - p_quantity
    WHERE product_id = p_productID
    AND stock_quantity >= p_quantity;
    
    COMMIT;
END;
/

--Adding product
CREATE OR REPLACE PROCEDURE Add_product(
    p_productID VARCHAR2,
    p_SellerID VARCHAR2,
    p_categoryID VARCHAR2,
    p_productNAME VARCHAR2,
    p_description VARCHAR2,
    p_price NUMBER,
    p_stock NUMBER,
    p_createdAT DATE
)
IS 
BEGIN
INSERT INTO Products(
        product_id,
        product_name,
        category_id,
        seller_id,
        price,
        stock_quantity,
        created_at
)
    VALUES(
        p_productid,
        p_description,
        p_categoryid,
        p_sellerid,
        p_price,
        p_stock,
        SYSDATE 
);

    COMMIT;
END;
/

--update product price
CREATE OR REPLACE PROCEDURE Update_Product_Price
(
    p_product_id VARCHAR2,
    p_new_price NUMBER
)
IS
BEGIN
    UPDATE Products
    SET price = p_new_price
    WHERE product_id = p_product_id;

    COMMIT;
END;
/

--update order status(ongoing to delivered etc)
CREATE OR REPLACE PROCEDURE Update_Order_Status
(
    p_order_id VARCHAR2,
    p_status VARCHAR2
)
IS
BEGIN
    UPDATE Orders
    SET order_status = p_status
    WHERE order_id = p_order_id;

    COMMIT;
END;
/

--restock product
CREATE OR REPLACE PROCEDURE Restock_Product
(
    p_product_id VARCHAR2,
    p_quantity NUMBER
)
IS
BEGIN
    UPDATE Products
    SET stock_quantity = stock_quantity + p_quantity
    WHERE product_id = p_product_id;

    COMMIT;
END;
/

--total orders
CREATE OR REPLACE PROCEDURE Get_Order_Total
(
    p_order_id IN VARCHAR2,
    p_total OUT NUMBER
)
IS
BEGIN
    SELECT total_amount
    INTO p_total
    FROM Orders
    WHERE order_id = p_order_id;
END;
/
