-- Preview the top 10 records from the stock dataset
SELECT TOP 10 *
FROM Infosys_stock;


-- Calculate daily percentage change in closing price
WITH PriceChange AS (
    SELECT 
        date,
        close_price,
        LAG(close_price) OVER (ORDER BY date) AS prev_price
    FROM Infosys_stock
)
SELECT 
    date,
    close_price,
    prev_price,
    ROUND(((close_price - prev_price) / prev_price) * 100.0, 2) AS percent_change
FROM PriceChange
WHERE prev_price IS NOT NULL;


-- Calculate average monthly closing price
SELECT 
    FORMAT(date, 'yyyy-MM') AS month,
    ROUND(AVG(close_price), 2) AS avg_monthly_price
FROM Infosys_stock
GROUP BY FORMAT(date, 'yyyy-MM')
ORDER BY month;


-- Calculate average weekly closing price
SELECT 
    DATEPART(YEAR, date) AS year,
    DATEPART(WEEK, date) AS week_number,
    ROUND(AVG(close_price), 2) AS avg_weekly_price
FROM Infosys_stock
GROUP BY DATEPART(YEAR, date), DATEPART(WEEK, date)
ORDER BY year, week_number;


-- Store monthly average prices into a new table
SELECT 
    FORMAT(date, 'yyyy-MM') AS month,
    ROUND(AVG(close_price), 2) AS avg_monthly_price
INTO Infosys_monthly_avg
FROM Infosys_stock
GROUP BY FORMAT(date, 'yyyy-MM');

