SELECT 
	ROUND(MIN(table1.plan_value), 2) AS "faturamento_minimo", 
    ROUND(MAX(table1.plan_value), 2) AS "faturamento_maximo", 
    ROUND(AVG(table1.plan_value), 2) AS "faturamento_medio", 
    ROUND(SUM(table1.plan_value), 2) AS "faturamento_total" 
FROM SpotifyClone.Plans AS table1
INNER JOIN SpotifyClone.Users AS table2
ON table1.plan_id = table2.plan_id;