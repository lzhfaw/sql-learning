-- 1. 编写SQL 语句，从Customers 表中检索所有的ID（cust_id）。
SELECT DISTINCT cust_id
FROM customers;

/* 2. OrderItems 表包含了所有已订购的产品（有些已被订购多次）。编写
SQL 语句，检索并列出已订购产品（prod_id）的清单（不用列每个
订单，只列出不同产品的清单）。提示：最终应该显示7 行。*/
SELECT DISTINCT prod_id
FROM orderitems;

/* 3. 编写SQL 语句，检索Customers 表中所有的列，再编写另外的SELECT
语句，仅检索顾客的ID。使用注释，注释掉一条SELECT 语句，以便
运行另一条SELECT 语句。（当然，要测试这两个语句。）*/
/* SELECT *
FROM customers; */
SELECT cust_id
FROM customers;