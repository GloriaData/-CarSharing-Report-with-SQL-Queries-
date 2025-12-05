-- Date and time with the highest demand in 2017
SELECT t.timestamp, c.demand
FROM carsharing_df c
JOIN time t ON c.id = t.id
ORDER BY c.demand DESC
LIMIT 1;

-- Weekday, month, and season with highest & lowest average demand
SELECT t.Weekday_Name,t.Month_Name,t.season, AVG(demand) AS avg_demand
FROM carsharing_df c
JOIN time t ON c.id = t.id
GROUP BY t.Weekday_Name,t.Month_Name,t.season
ORDER BY avg_demand DESC;

-- Average demand by hour for the weekday identified in (b)
SELECT t.Weekday_Name,t.Month_Name,t.season,t.hour, AVG(demand) AS avg_demand
FROM carsharing_df c
JOIN time t ON c.id = t.id
GROUP BY t.Weekday_Name,t.Month_Name,t.season, t.hour
ORDER BY avg_demand DESC;

-- Temperature condition order by average demand
SELECT temp_category, COUNT(*) AS Temp_occurrences
FROM carsharing_df c
JOIN temperature t ON c.temp_code = t.temp_code
GROUP BY temp_category
ORDER BY Temp_occurrences DESC;

-- Weather Condition
SELECT weather, COUNT(*) AS weather_occurrences
FROM carsharing_df c
JOIN weather w ON c.weather_code = w.weather_code
GROUP BY weather
ORDER BY weather_occurrences DESC;

-- Monthly windspeed stats
SELECT t.month_name, ROUND(AVG(c.windspeed),2) AS avg_wind, MAX(windspeed) AS max_wind, MIN(windspeed) AS min_wind
FROM carsharing_df c
JOIN time t ON c.id = t.id
GROUP BY t.month_name
ORDER BY t.month_name DESC;

-- Monthly humidity stats
SELECT t.Month_Name, ROUND(AVG(c.humidity),2) AS avg_humidity, MAX(c.humidity) AS max_humidity, 
MIN(c.humidity) AS min_humidity
FROM carsharing_df c
JOIN time t ON c.id = t.id
GROUP BY t.month_name
ORDER BY t.month_name ASC;

-- Temperature condition order by average demand
SELECT temp_category, COUNT(*) AS Temp_occurrences, ROUND(AVG(demand),2) AS avg_demand
FROM carsharing_df c
JOIN temperature t ON c.temp_code = t.temp_code
GROUP BY temp_category
ORDER BY avg_demand DESC;

-- Monthly windspeed stats showing average demand
SELECT t.month_name, ROUND(AVG(c.windspeed),2) AS avg_wind, MAX(windspeed) AS max_wind, 
MIN(windspeed) AS min_wind, ROUND(AVG(demand),2) AS avg_demand
FROM carsharing_df c
JOIN time t ON c.id = t.id
GROUP BY t.month_name
ORDER BY 5 DESC;

-- Monthly humidity stats showing average demand
SELECT t.Month_Name, ROUND(AVG(c.humidity),2) AS avg_humidity, MAX(c.humidity) AS max_humidity, 
MIN(c.humidity) AS min_humidity, ROUND(AVG(demand),2) AS avg_demand
FROM carsharing_df c
JOIN time t ON c.id = t.id
GROUP BY t.month_name
ORDER BY 5 DESC;



