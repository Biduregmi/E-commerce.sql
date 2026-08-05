# E-Commerce Database Management System

A relational database project built using Oracle SQL that simulates the backend of an e-commerce platform.

## Features

* Relational database design
* 9 normalized tables
* Primary and Foreign Key constraints
* Sample data
* SQL queries
* Views
* Stored Procedures
* Triggers
* Indexes

## Database Tables

* Users
* Sellers
* Customers
* Categories
* Products
* Orders
* Order_Items
* Payments
* Deliveries

## Views

* Total Sales
* Top Selling Categories
* Seller Sales
* Order Summary

## Stored Procedures

* Add Product
* Sell Product
* Restock Product
* Update Product Price
* Update Order Status
* Get Order Total

## Triggers

* Validate product stock before purchase
* Reduce stock after an order
* Update order total automatically
* Validate product price

## Indexes

Indexes are created on frequently joined columns to improve query performance.

## Technologies Used

* Oracle Database 11g
* Oracle SQL
* Oracle SQL Developer

## Project Structure

```text
sql/
├── 01_create_tables.sql
├── 02_foreign_keys.sql
├── 03_insert_sample_data.sql
├── 04_queries.sql
├── 05_views.sql
├── 06_procedures.sql
├── 07_triggers.sql
└── 08_indexes.sql
```
