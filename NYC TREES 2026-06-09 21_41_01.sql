SELECT avg(tree_dbh)
FROM `bigquery-public-data.new_york_trees.tree_census_2015` LIMIT 1000

SELECT COUNT(tree_id)
FROM `bigquery-public-data.new_york_trees.tree_census_2015`

SELECT Count(tree_id) as totaltrees,boroname 
FROM `bigquery-public-data.new_york_trees.tree_census_2015`
GROUP BY boroname
ORDER BY totaltrees DESC;

SELECT avg(tree_dbh) as averagedia,spc_common,boroname
FROM `bigquery-public-data.new_york_trees.tree_census_2015`
GROUP BY spc_common,boroname
ORDER BY averagedia DESC;

SELECT health, AVG(tree_dbh), boroname
FROM `bigquery-public-data.new_york_trees.tree_census_2015`
GROUP BY boroname, health
ORDER BY AVG(tree_dbh) DESC;

SELECT COUNT(tree_id), boroname
FROM `bigquery-public-data.new_york_trees.tree_census_2015`
WHERE health = 'Poor'
Group BY boroname
ORDER BY Count(tree_id) DESC;



