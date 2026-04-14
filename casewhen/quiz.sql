/*
给每条记录新增一列 result_tag：

amount >= 200 显示 达标
否则显示 未达标
*/
SELECT
	dept,
	CASE
		WHEN amount >= 200 THEN N'达标'
		ELSE N'未达标'
	END AS result_tag
FROM dbo.sales_demo;

/*
统计每个部门中，amount >= 150 且 < 200 的订单总额。
*/
SELECT
	dept,
	SUM(CASE WHEN amount >= 150 AND amount < 200 THEN amount ELSE 0 END)AS total
FROM dbo.sales_demo
GROUP BY dept;	