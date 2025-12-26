select * from daily_aqi;
select * from monthly_aqi;


-- 1️⃣ Worst AQI days (Top 10)

select date,final_aqi
from daily_aqi
order by final_aqi desc
limit 10;


--2️⃣ Best air quality days

select date,final_aqi
from daily_aqi
order by final_aqi asc
limit 10;


--3️⃣ AQI category distribution (days)

select category, count(*) as days
from daily_aqi
group by category
order by count(*) desc;


--4️⃣ AQI category percentage

select category, round(count(*)* 100.0 / (select count(*) from daily_aqi),2) as percentage
from daily_aqi
group by category
order by count(*) desc;


--5️⃣ Dominant pollutant frequency

select dominant_pollutant, count(*) as days
from daily_aqi
group by dominant_pollutant
order by count(*) desc;


-- 6️⃣ Worst AQI month (from MONTHLY table)

select year,month_name,final_aqi
from monthly_aqi
order by final_aqi desc
limit 1;


-- 7️⃣ Monthly AQI trend

select year, month, month_name, final_aqi
from monthly_aqi
order by year, month;


--8️⃣ Months with “Poor or worse” AQI

select year,month_name,final_aqi,category
from monthly_aqi
where final_aqi > 200;


--9️⃣ Compare winter vs summer AQI


select case
		when extract(month from date) in (12,1,2) then 'Winter'
		when extract(month from date) in (3,4,5) then 'Summer'
		when extract(month from date) in (6,7,8) then 'Monsoon'
		else 'Post-Monsoon' end as season,
round(avg(final_aqi)::numeric,2) as final_aqi
from daily_aqi
group by season
order by final_aqi desc;


-- 🔟 Days where PM2.5 dominated AQI

select count(*) as pm25_dominant_days
from daily_aqi
where dominant_pollutant = 'pm25';


--1️⃣1️⃣ Rank worst AQI days per month

with cte as (
SELECT date,extract(month from date) as month, category, final_aqi, rank() over(partition by extract(month from date) order by final_aqi desc) as rnk
from daily_aqi
)
SELECT date, to_char(date,'Month') as month, final_aqi, category
from cte 
where rnk = 1;



