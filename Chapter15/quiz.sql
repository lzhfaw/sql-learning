/*
1. 使用INSERT 和指定的列，将你自己添加到Customers 表中。明确列
出要添加哪几列，且仅需列出你需要的列。
*/
INSERT INTO customers(cust_name,
	cust_id)
VALUES ('lzh',
	00001);

/*
2. 备份Orders 表和OrderItems 表。
*/
SELECT * INTO orderscopy FROM orders;
SELECT * INTO orderitemscopy FROM orderitems;