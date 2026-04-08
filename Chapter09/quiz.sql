/*
1. 编写SQL 语句，确定已售出产品的总数（使用OrderItems 中的
quantity 列）。
*/
SELECT SUM(quantity) AS total_sale
FROM orderitems;

/*
2. 修改刚刚创建的语句，确定已售出产品项（prod_id）BR01 的
总数。
*/
SELECT SUM(quantity) AS total_sale
FROM orderitems
WHERE prod_id = 'BR01';

/*
3. 编写SQL 语句，确定Products 表中价格不超过10 美元的最贵产品
的价格（prod_price）。将计算所得的字段命名为max_price。
*/
SELECT MAX(prod_price) AS max_price
FROM products
WHERE prod_price <= 10;