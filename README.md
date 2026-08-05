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
├── 01Create_tables.sql
├── 02Constraints.sql
├── 03sample_data.sql
├── 04views.sql
├── 05procedures.sql
├── 06triggers.sql
└── 07indexes.sql
```
