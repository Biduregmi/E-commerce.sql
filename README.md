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
├── 01 Create_tables.sql
├── 02 Constraints.sql
├── 03 sample_data.sql
├── 04 views.sql
├── 05 procedures.sql
├── 06 triggers.sql
└── 07 indexes.sql
```
