# Learning Notes

This document records what I learn while building this project. Each entry summarizes the key concepts I understood, challenges I faced, and what I plan to learn next.

---

## 2026-07-21

### What I Learned

* Database design starts with identifying real-world entities and their relationships.
* An ER diagram acts as the blueprint for the database before writing SQL.
* Each table should represent a single entity with a clear purpose.
* Constraints such as `PRIMARY KEY`, `NOT NULL`, `UNIQUE`, and `DEFAULT` help maintain data integrity.
* Choosing appropriate data types is an important part of schema design.

### Challenges

* Deciding how entities should be separated into different tables.
* Understanding which constraints should be applied to each column.

---

## 2026-07-22

### What I Learned

* Foreign keys are used to establish relationships between tables.
* A foreign key ensures that related data exists in the referenced table, helping maintain referential integrity.
* It is often easier to create all tables first and then add foreign key constraints using `ALTER TABLE`.
* An ER diagram serves as a blueprint, making it easier to identify the relationships that need to be implemented.

### Challenges

* Making sure every relationship in the ER diagram was correctly translated into SQL.

# Learning Notes

This document records what I learn while building this project.

---

## 2026-07-24

### What I Learned

* Sample data should follow the relationships defined by foreign keys to avoid referential integrity errors.
* Parent tables (such as Users and Categories) should be populated before child tables that reference them.
* Realistic sample data makes it easier to test queries and verify that the database behaves as expected.
* Order totals should match the combined values of their corresponding order items to maintain data consistency.
* Updating incorrect values after insertion is sometimes necessary to keep related data accurate.

### Challenges

* Keeping IDs consistent across multiple related tables.
* Ensuring that inserted records matched the relationships defined in the database schema.

### Next Goal

Write SQL queries to retrieve, filter, join, and summarize data from the database.

* Avoiding duplicate or incorrect foreign key constraints.

### Next Goal

Insert realistic sample data into all tables and begin writing SQL queries to test the database.
