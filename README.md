<div align="center">

# 🗄️ MySQL Programs

### A Comprehensive Collection of MySQL Queries & Database Operations

[![MySQL](https://img.shields.io/badge/MySQL-8.0+-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![SQL](https://img.shields.io/badge/SQL-Structured_Query_Language-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)](https://en.wikipedia.org/wiki/SQL)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-brightgreen?style=for-the-badge)](https://github.com/jayakrishna9655/MySql-Programs/pulls)

<br/>

> *A structured repository of MySQL scripts covering database creation, CRUD operations, joins, subqueries, filtering, and real-world use cases — built for learning, reference, and professional development.*

---

</div>

## 📋 Table of Contents

- [About the Project](#-about-the-project)
- [Tech Stack](#-tech-stack)
- [Repository Structure](#-repository-structure)
- [SQL Scripts Overview](#-sql-scripts-overview)
- [Topics Covered](#-topics-covered)
- [Getting Started](#-getting-started)
- [Usage](#-usage)
- [Contributing](#-contributing)
- [Author](#-author)

---

## 🎯 About the Project

This repository is a **hands-on collection of MySQL programs** designed to help developers, students, and database enthusiasts master SQL from the ground up. Each `.sql` file focuses on specific MySQL concepts — from basic table creation to advanced joins and subqueries.

Whether you're **preparing for technical interviews**, **learning database fundamentals**, or **building real-world applications**, this repository serves as a practical reference guide.

### 🌟 Key Highlights

| Feature | Description |
|---|---|
| 📦 **Database Design** | Scripts for creating and managing multiple databases |
| 📝 **CRUD Operations** | Complete Create, Read, Update, Delete examples |
| 🔗 **Table Relationships** | Primary keys, foreign keys, and referential integrity |
| 🔍 **Advanced Filtering** | WHERE, LIKE, REGEXP, IN, BETWEEN, and more |
| 🤝 **Joins & Subqueries** | LEFT JOIN, RIGHT JOIN, and nested subqueries |
| 📊 **Aggregations** | SUM, AVG, MAX, COUNT with GROUP BY & HAVING |

---

## 🛠️ Tech Stack

<div align="center">

| Technology | Version | Purpose |
|---|---|---|
| **MySQL** | 8.0+ | Relational Database Management System |
| **SQL** | Standard | Query Language |
| **MySQL Workbench** | Latest | IDE / GUI Client |

</div>

---

## 📁 Repository Structure

```
MySql-Programs/
│
├── 📄 customer-table-creation.sql    # Customer database with CRUD & SELECT operations
├── 📄 new-table-creation.sql         # Extended customer table with NULL handling
├── 📄 new-table-creation1.sql        # Multi-database programs (E-commerce, Joins, Subqueries)
├── 📄 order-table-creation.sql       # Orders table with foreign key & JOIN queries
├── 📄 task-one.sql                   # Practice task — computed columns & aliases
├── 📄 where.sql                      # Comprehensive WHERE clause & REGEXP patterns
└── 📄 README.md                      # You are here! 👈
```

---

## 📜 SQL Scripts Overview

### 1️⃣ `customer-table-creation.sql`
> **Database:** `mySqlLearning` &nbsp; | &nbsp; **Lines:** 29

Creates the foundational `customers` table and demonstrates:
- `CREATE DATABASE` & `CREATE TABLE` statements
- `INSERT`, `DELETE` operations
- `ALTER TABLE` to add `PRIMARY KEY`
- `SELECT` with aliases, expressions, and `DISTINCT`

```sql
-- Example: Removing duplicates with DISTINCT
SELECT DISTINCT address FROM customers;
```

---

### 2️⃣ `new-table-creation.sql`
> **Database:** `mySqlLearning` &nbsp; | &nbsp; **Lines:** 38

Extends the customer table with:
- Inserting `NULL` values
- Handling nullable fields
- Building on top of CRUD operations

---

### 3️⃣ `new-table-creation1.sql`
> **Database:** Multiple (`mydb`, `todo`, `Ecommerce`, `programs`, `world`, etc.) &nbsp; | &nbsp; **Lines:** 246

The **most comprehensive script** in the repository, covering:

| Concept | Description |
|---|---|
| **Table Design** | `person`, `employee_details`, `users`, `product`, `question` tables |
| **ALTER TABLE** | Adding columns, modifying AUTO_INCREMENT |
| **JOINs** | LEFT JOIN, RIGHT JOIN on `city` ↔ `country` tables |
| **Subqueries** | Filtering with `AVG()`, `MAX()` nested queries |
| **Pattern Matching** | `LIKE` for prefix/suffix filtering |
| **Aggregation** | `SUM()`, `GROUP BY`, `HAVING` clauses |
| **Real-world Data** | E-commerce products, employee salaries, quiz questions |

```sql
-- Example: Subquery — employees earning above average salary
SELECT * FROM employee_details
WHERE salary > (SELECT AVG(salary) FROM employee_details);
```

---

### 4️⃣ `order-table-creation.sql`
> **Database:** `mySqlLearning` &nbsp; | &nbsp; **Lines:** 14

Demonstrates **table relationships** with:
- `FOREIGN KEY` referencing `customers(customer_id)`
- `JOIN` query linking customers with their orders

```sql
-- Example: JOIN — customer names with their orders
SELECT c.name, o.order_no, o.order_dec
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;
```

---

### 5️⃣ `task-one.sql`
> **Database:** `mySqlLearning` &nbsp; | &nbsp; **Lines:** 5

A practice task demonstrating:
- **Computed columns** using arithmetic expressions
- **Column aliasing** with `AS`

```sql
-- Computed column: customer_id multiplied by 1.5
SELECT name, address, customer_id, customer_id * 1.5 AS "task"
FROM customers;
```

---

### 6️⃣ `where.sql`
> **Database:** `mySqlLearning` &nbsp; | &nbsp; **Lines:** 35

A complete reference for **data filtering** techniques:

| Operator | Example | Description |
|---|---|---|
| `>` | `WHERE customer_id > 1` | Comparison operators |
| `AND` / `OR` | `WHERE address="madipakkam" AND name="ram"` | Logical operators |
| `NOT` | `WHERE NOT (address="madipakkam")` | Negation |
| `IN` | `WHERE address IN ("madipakkam")` | Set membership |
| `BETWEEN` | `WHERE customer_id BETWEEN 2 AND 4` | Range filtering |
| `LIKE` | `WHERE name LIKE "%a%"` | Pattern matching |
| `REGEXP` | `WHERE name REGEXP "^j"` | Regular expressions |
| `IS NULL` | `WHERE name IS NULL` | NULL checking |

```sql
-- REGEXP: Names starting with 'j' OR 'r'
SELECT * FROM customers WHERE name REGEXP "^j|^r";

-- REGEXP: Character class matching
SELECT * FROM customers WHERE name REGEXP "j[a]";
```

---

## 📚 Topics Covered

<div align="center">

```
┌─────────────────────────────────────────────────────────────────┐
│                    MySQL LEARNING ROADMAP                        │
├─────────────────┬───────────────────┬───────────────────────────┤
│   🟢 Basics     │   🟡 Intermediate │   🔴 Advanced             │
├─────────────────┼───────────────────┼───────────────────────────┤
│ CREATE DATABASE │ ALTER TABLE       │ LEFT / RIGHT JOINs        │
│ CREATE TABLE    │ PRIMARY KEY       │ Subqueries (Nested)       │
│ INSERT INTO     │ FOREIGN KEY       │ REGEXP Patterns           │
│ SELECT          │ JOIN              │ GROUP BY + HAVING         │
│ UPDATE          │ LIKE              │ Aggregate Functions       │
│ DELETE          │ IN / BETWEEN      │ AUTO_INCREMENT Management │
│ WHERE Clause    │ DISTINCT          │ Computed Columns          │
│ AND / OR / NOT  │ NULL Handling     │ Multi-table Relationships │
└─────────────────┴───────────────────┴───────────────────────────┘
```

</div>

---

## 🚀 Getting Started

### Prerequisites

- **MySQL Server** 8.0+ installed → [Download MySQL](https://dev.mysql.com/downloads/)
- **MySQL Workbench** or any SQL client (DBeaver, DataGrip, HeidiSQL)

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/jayakrishna9655/MySql-Programs.git

# 2. Navigate into the project directory
cd MySql-Programs

# 3. Open any .sql file in your MySQL client and execute
```

---

## 💡 Usage

### Option 1: MySQL Workbench
1. Open MySQL Workbench
2. Connect to your local MySQL server
3. Go to **File → Open SQL Script**
4. Select any `.sql` file from this repository
5. Click the ⚡ **Execute** button

### Option 2: MySQL CLI
```bash
# Login to MySQL
mysql -u root -p

# Run a specific script
source /path/to/MySql-Programs/customer-table-creation.sql;
```

### Option 3: Import via Terminal
```bash
mysql -u root -p < customer-table-creation.sql
```

---

## 🤝 Contributing

Contributions are what make the open-source community such an amazing place to learn and grow. Any contributions you make are **greatly appreciated**.

1. **Fork** the repository
2. **Create** your feature branch (`git checkout -b feature/new-query`)
3. **Commit** your changes (`git commit -m 'Add new SQL query'`)
4. **Push** to the branch (`git push origin feature/new-query`)
5. **Open** a Pull Request

---

## 👨‍💻 Author

<div align="center">

| | |
|---|---|
| **Name** | **Jayakrishna** |
| **GitHub** | [@jayakrishna9655](https://github.com/jayakrishna9655) |
| **Repository** | [MySql-Programs](https://github.com/jayakrishna9655/MySql-Programs) |

</div>

---

<div align="center">

### ⭐ If you found this helpful, give it a star!

Made with ❤️ by [Jayakrishna](https://github.com/jayakrishna9655)

</div>
