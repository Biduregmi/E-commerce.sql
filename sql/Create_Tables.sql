-- USERS
CREATE TABLE Users (
    user_id       VARCHAR2(10) PRIMARY KEY,
    full_name     VARCHAR2(100) NOT NULL,
    email         VARCHAR2(100) NOT NULL UNIQUE,
    phone         VARCHAR2(15) NOT NULL UNIQUE,
    password      VARCHAR2(100) NOT NULL,
    role          VARCHAR2(20) NOT NULL,
    created_at    DATE DEFAULT SYSDATE NOT NULL
);

-- SELLERS
CREATE TABLE Sellers (
    seller_id      VARCHAR2(10) PRIMARY KEY,
    user_id        VARCHAR2(10) NOT NULL,
    shop_name      VARCHAR2(100) NOT NULL,
    pan_number     VARCHAR2(20) NOT NULL UNIQUE,
    bank_account   VARCHAR2(30),
    created_at     DATE DEFAULT SYSDATE NOT NULL
);

-- CUSTOMERS
CREATE TABLE Customers (
    customer_id         VARCHAR2(10) PRIMARY KEY,
    user_id             VARCHAR2(10) NOT NULL,
    shipping_address    VARCHAR2(200) NOT NULL,
    loyalty_points      NUMBER(5) DEFAULT 0 NOT NULL,
    created_at          DATE DEFAULT SYSDATE NOT NULL
);

-- CATEGORIES
CREATE TABLE Categories (
    category_id      VARCHAR2(10) PRIMARY KEY,
    category_name    VARCHAR2(100) NOT NULL UNIQUE,
    description      VARCHAR2(300)
);

-- PRODUCTS
CREATE TABLE Products (
    product_id        VARCHAR2(10) PRIMARY KEY,
    seller_id         VARCHAR2(10) NOT NULL,
    category_id       VARCHAR2(10) NOT NULL,
    product_name      VARCHAR2(150) NOT NULL,
    description       VARCHAR2(500),
    price             NUMBER(10,2) NOT NULL,
    stock_quantity    NUMBER(6) DEFAULT 0 NOT NULL,
    created_at        DATE DEFAULT SYSDATE NOT NULL
);

-- ORDERS
CREATE TABLE Orders (
    order_id          VARCHAR2(10) PRIMARY KEY,
    customer_id       VARCHAR2(10) NOT NULL,
    order_date        DATE DEFAULT SYSDATE NOT NULL,
    total_amount      NUMBER(10,2) NOT NULL,
    order_status      VARCHAR2(30) NOT NULL,
    created_at        DATE DEFAULT SYSDATE NOT NULL
);

-- ORDER_ITEMS
CREATE TABLE Order_Items (
    order_item_id     VARCHAR2(10) PRIMARY KEY,
    order_id          VARCHAR2(10) NOT NULL,
    product_id        VARCHAR2(10) NOT NULL,
    quantity          NUMBER(4) NOT NULL,
    unit_price        NUMBER(10,2) NOT NULL
);

-- PAYMENTS
CREATE TABLE Payments (
    payment_id        VARCHAR2(10) PRIMARY KEY,
    order_id          VARCHAR2(10) NOT NULL,
    payment_method    VARCHAR2(30) NOT NULL,
    payment_status    VARCHAR2(30) NOT NULL,
    amount            NUMBER(10,2) NOT NULL,
    paid_at           DATE
);

-- DELIVERIES
CREATE TABLE Deliveries (
    delivery_id       VARCHAR2(10) PRIMARY KEY,
    order_id          VARCHAR2(10) NOT NULL,
    rider_name        VARCHAR2(100) NOT NULL,
    rider_phone       VARCHAR2(15) NOT NULL,
    status            VARCHAR2(30) NOT NULL,
    delivery_date     DATE,
    created_at        DATE DEFAULT SYSDATE NOT NULL
);

SELECT * FROM TAB;
