-- 1、row number 函数和over函数
SELECT
	emp_name,
	dept,
	amount,
	ROW_NUMBER() OVER (
		PARTITION BY dept
		ORDER BY amount DESC,id
	) AS rn
FROM dbo.sales_demo;

-- 2、先编号再筛选
WITH t AS (
	SELECT
		emp_name,
		dept,
		amount,
		ROW_NUMBER() OVER (
			PARTITION BY dept
			ORDER BY amount DESC,id
		) AS rn
	FROM dbo.sales_demo
)
SELECT 
	emp_name,
	dept, 
	amount
FROM t
WHERE rn <= 2;

-- 3、当你要表示并列的时候，用rank函数
WITH t AS (
    SELECT
        emp_name,
        dept,
        amount,
        RANK() OVER (
            PARTITION BY dept
            ORDER BY amount DESC
        ) AS rnk
    FROM dbo.sales_demo
)
SELECT
    emp_name,
    dept,
    amount,
    rnk
FROM t
WHERE rnk <= 2;

-- 4、如果并列不想跳号，用dense_rank
WITH t AS (
	SELECT 
		emp_name,
		dept,
		amount,
		DENSE_RANK() OVER (
			PARTITION BY dept
			ORDER BY amount DESC
		) AS dense_rnk
	FROM dbo.sales_demo)
SELECT 
	emp_name,
	dept,
	amount,
	dense_rnk
FROM t
WHERE dense_rnk <= 2;

-- 5、经典组合sum（）over（）
SELECT
	emp_name,
	dept,
	amount,
	SUM(amount) OVER (
		PARTITION BY dept
	) AS dept_total
FROM dbo.sales_demo;

-- 6、经典组合avg()over()
SELECT
	emp_name,
	dept,
	amount,
	AVG(amount) OVER (
		PARTITION BY dept
	) AS dept_avg
FROM dbo.sales_demo;

-- 7、累计和
SELECT
	emp_name,
	dept,
	order_date,
	amount,
	SUM(amount) OVER (
		PARTITION BY dept
		ORDER BY order_date,id
		ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
	) AS running_total
FROM dbo.sales_demo
ORDER BY dept,order_date,id;

-- 8、上一行数据
SELECT
	emp_name,
	dept,
	order_date,
	amount,
	LAG(amount) OVER(
		PARTITION BY dept
		ORDER BY order_date,id
	) AS prev_amount
FROM dbo.sales_demo
ORDER BY dept,order_date,id;