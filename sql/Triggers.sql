--Prevent ordering more than available stock
CREATE OR REPLACE TRIGGER trg_check_stock
BEFORE INSERT ON Order_Items
FOR EACH ROW

DECLARE
    v_stock NUMBER;
BEGIN
    SELECT stock_quantity
    INTO v_stock
    FROM Products
    WHERE product_id = :NEW.product_id;

    IF :NEW.quantity > v_stock THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Insufficient stock available.'
        );
    END IF;
END;
/

--Reduce stock after an order is placed
CREATE OR REPLACE TRIGGER trg_reduce_stock
AFTER INSERT ON Order_Items
FOR EACH ROW

BEGIN
    UPDATE Products
    SET stock_quantity = stock_quantity - :NEW.quantity
    WHERE product_id = :NEW.product_id;
END;
/

--Automatically update order total
CREATE OR REPLACE TRIGGER trg_update_order_total
AFTER INSERT OR UPDATE OR DELETE ON Order_Items
FOR EACH ROW

BEGIN
    IF INSERTING OR UPDATING THEN

        UPDATE Orders
        SET total_amount =
        (
            SELECT NVL(SUM(quantity * unit_price),0)
            FROM Order_Items
            WHERE order_id = :NEW.order_id
        )
        WHERE order_id = :NEW.order_id;

    ELSIF DELETING THEN

        UPDATE Orders
        SET total_amount =
        (
            SELECT NVL(SUM(quantity * unit_price),0)
            FROM Order_Items
            WHERE order_id = :OLD.order_id
        )
        WHERE order_id = :OLD.order_id;

    END IF;
END;
/

--Prevent product price from being zero or negative
CREATE OR REPLACE TRIGGER trg_validate_price
BEFORE INSERT OR UPDATE OF price
ON Products
FOR EACH ROW

BEGIN
    IF :NEW.price <= 0 THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'Product price must be greater than zero.'
        );
    END IF;
END;
/
