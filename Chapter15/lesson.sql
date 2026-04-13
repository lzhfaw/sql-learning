-- 1、插入完整的行
INSERT INTO customers
VALUES(1000000006,
	'Toy Land',
	'123 Any Street',
	'New York',
	'NY',
	'11111',
	'USA',
	NULL,
	NULL);

-- 2、更完整的写法
INSERT INTO Customers(cust_id,
	cust_name,
	cust_address,
	cust_city,
	cust_state,
	cust_zip,
	cust_country,
	cust_contact,
	cust_email)
VALUES(1000000006,
	'Toy Land',
	'123 Any Street',
	'New York',
	'NY',
	'11111',
	'USA',
	NULL,
	NULL);

-- 2、插入不完整行：明确列名就可以

-- 3、插入检索出的数据,custnew未在本书中给出
INSERT INTO customers(cust_id,
cust_contact,
cust_email,
cust_name,
cust_address,
cust_city,
cust_state,
cust_zip,
cust_country)
SELECT cust_id,
cust_contact,
cust_email,
cust_name,
cust_address,
cust_city,
cust_state,
cust_zip,
cust_country
FROM custnew;

-- 4、复制表
SELECT * INTO custcopy FROM customers;