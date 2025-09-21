# Retail Sales SQL Project

## Introduction

This project contains a clear and friendly SQL script (`new1.sql`) designed for practicing common retail-data tasks. It is aimed at students, data-analysts-in-training, or developers who want a small playground to learn SQL operations such as table creation, data cleaning, aggregations, and basic business analysis — all using a simple retail sales dataset.

The goal is to provide a ready-to-run example that you can open in **MySQL Workbench** (or any GUI-based MySQL client) without needing to use the command prompt. The SQL contains common patterns you will see in real-world projects: creating tables, checking data quality, joining, grouping, and computing revenue metrics.

---

## Project Description (Long)

This repository centers on a single SQL script named `new1.sql`. The script includes everything you need to get started: a corrected `CREATE TABLE` statement, sample queries that help you explore and understand the data, and practical business-analysis examples. The dataset represents a set of retail transactions, where each row corresponds to a sale event. Columns store the sale date/time, product category, customer details, and monetary values like unit price and total sale.

This repository is deliberately small and focused so you can learn SQL fundamentals quickly. You will practice:

* Creating a table with appropriate types for dates, times and monetary values.
* Finding and handling missing values (NULLs).
* Running aggregate queries — totals, averages, counts.
* Using `GROUP BY`, `ORDER BY`, `LIMIT` to find top categories and top customers.
* Bucketing time of day (shift analysis) using `CASE` expressions.
* Writing simple but useful business queries that answer common questions (e.g., which category earns the most revenue?).

This setup is ideal for classroom exercises, interview prep, or a personal learning repository to show on GitHub.

---

## Why this is useful

A retail dataset contains several analysis patterns that are useful across domains: date/time handling, numeric aggregations, categorical grouping, and ranking. Learning these SQL patterns here prepares you to work on sales reports, dashboards, or data pipelines later. The script is small enough to run quickly, and the queries can be extended easily to join with product or store tables when you have bigger datasets.

---

## What’s inside `new1.sql`

* **Table creation**: A clean `CREATE TABLE` statement with clear column names and types. Monetary fields use `DECIMAL` for accuracy.
* **Data-check queries**: Find NULL or inconsistent rows, check row counts, and sample the dataset.
* **EDA queries**: Distinct counts, unique customers, list of categories, daily and monthly summaries.
* **Business queries**: Category revenue, top customers, transactions above thresholds, and shift-based sales.
* **Examples**: Each query appears with a short comment so you can understand the purpose and reuse the pattern.

---

## How to run (GUI-only steps — no CMD)

1. **Start MySQL server** (Windows Services or XAMPP Control Panel): open Services (`Windows+R`, type `services.msc`) and start the `MySQL80` service; or open XAMPP and start MySQL.
2. **Open MySQL Workbench**.
3. **File → Open SQL Script...** and choose `new1.sql`.
4. Choose the connection for your local server (e.g., "Local instance MySQL80"), and click the lightning bolt (execute) to run selected statements or the whole script.

If any `CREATE TABLE` query errors, check the SQL editor for typos and adjust types (for example change `FLOAT_` to `DECIMAL`).

---

## Schema Notes & Data Assumptions

* `transactions_id` is assumed to be unique — used as the primary key.
* Dates and times are stored in `DATE` and `TIME` types for easy grouping.
* Monetary values use `DECIMAL(12,2)` to avoid floating point rounding issues.
* Column name corrections: `quantity` is used instead of the misspelled `quantiy` found in the original file.

---

## Suggestions for improvement

* Add a sample CSV and an import example so beginners can practice `LOAD DATA` in Workbench.
* Add constraints like `NOT NULL` where appropriate.
* Add indexes on `sale_date` and `customer_id` for faster queries as data grows.
* Provide a small Jupyter notebook (or Markdown) that visualizes results after export.




If you want me to expand specific sections — for example, add a sample CSV, write import instructions for Workbench’s data import tool, or include a polished `CREATE TABLE` that matches exactly the fields in your `new1.sql` file — tell me which one and I will update the README and the script accordingly.
