# PostgreSQL Q&A

## Table of Contents
1. [What is PostgreSQL?](#1-what-is-postgresql)
2. [Database Schema In PostgreSQL](#2-database-schema)
3. [Primary and Foreign Keys](#3-primary-and-foreign-keys)
4. [VARCHAR vs CHAR](#4-varchar-vs-char)
5. [WHERE Clause in SELECT](#5-where-clause)
6. [LIMIT and OFFSET and it's usage](#6-limit-and-offset)
7. [UPDATE Statements](#7-update-statements)
8. [JOIN Operations ](#8-join-operations)
9. [GROUP BY Clause](#9-group-by-clause)
10. [Aggregate Functions](#10-aggregate-functions)

---

### 1. What is PostgreSQL?

PostgreSQL is a free and open-source relational database management system (RDBMS) that compliance with SQL standards.

---

### 2. Database Schema

A database schema of postgresql simply serves as a logical container for organizing database objects such as `TABLE`, `VIEW`, `FUNCTIONS`

---

### 3. Primary and Foreign Keys

- A primary key is a column or a set of columns that uniquely identifies each row in a table and can not be null.
- A foreign key is a column in one table that refers to the primary key in another table. By using foreign key we can retrieve other tables data.

---

### 4. VARCHAR vs CHAR

Difference between the VARCHAR and CHAR is CHAR stores fixed length strings, padding with spaces if necessary but the length of CHAR should be filled and on the other hand VARCHAR stores variable length strings without padding.

---

### 5. WHERE Clause

By Using `WHERE` clause in `SELECT` statement we can retrieve row/data by conditionally.

---

### 6. LIMIT and OFFSET

By using `LIMIT` and `OFFSET` we can do pagination.

```sql
SELECT * FROM products LIMIT 10 OFFSET (10 * (page_number - 1));