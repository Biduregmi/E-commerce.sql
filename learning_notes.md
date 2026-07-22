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

## 2026-07-21

### What I Learned

* Foreign keys are used to establish relationships between tables.
* A foreign key ensures that related data exists in the referenced table, helping maintain referential integrity.
* It is often easier to create all tables first and then add foreign key constraints using `ALTER TABLE`.
* An ER diagram serves as a blueprint, making it easier to identify the relationships that need to be implemented.

### Challenges

* Making sure every relationship in the ER diagram was correctly translated into SQL.
* Avoiding duplicate or incorrect foreign key constraints.

### Next Goal

Insert realistic sample data into all tables and begin writing SQL queries to test the database.
