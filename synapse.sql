--找出可容納人數最多的前 10 名體育場
SELECT TOP 10 stadium, country, capacity
FROM stadiums
ORDER BY capacity DESC;


--找出在美國（United States）的體育場並依容量排序
SELECT stadium, city, capacity
FROM stadiums
WHERE country = 'United States'
ORDER BY capacity DESC;

--各個地區的體育場平均容量
SELECT region, AVG(capacity) avg_capacity
FROM stadiums
GROUP BY region
ORDER BY avg_capacity desc

--各個國家擁有的體育場數量，
SELECT country, COUNT(*) AS stadium_count
FROM stadiums
GROUP BY country
ORDER BY stadium_count DESC


--每個地區內的體育場排名（根據容量排序）
SELECT rank, region, stadium, capacity,
    RANK() OVER(PARTITION BY region ORDER BY capacity DESC) as region_rank
FROM stadiums;



--包含 "football" 關鍵字的主場隊伍及對應體育場
SELECT stadium, home_team
FROM stadiums
WHERE home_team LIKE '%football%';


--容量超過 100,000 的體育場清單
SELECT stadium, country, capacity
FROM stadiums
WHERE capacity > 100000
ORDER BY capacity DESC;



--統計每個城市擁有多少體育場
SELECT city, COUNT(*) AS stadium_count
FROM stadiums
GROUP BY city
ORDER BY stadium_count DESC;
