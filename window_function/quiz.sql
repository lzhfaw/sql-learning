/*
使用 DENSE_RANK()，找出每个部门金额处于第 2 档的人。

提示：

不是第 2 行
是第 2 个不同的金额层级
*/
WITH T AS(
	SELECT
		emp_name,
		dept,
		amount,
		DENSE_RANK() OVER(
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
WHERE dense_rnk = 2;