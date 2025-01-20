-- DE Zoomcamp 2025 Cohort - Module 1
-- Student Repo: https://github.com/rasj81/DataEngineerProjects

-- fix it...

select * 
from green_taxi_data
order by trip_distance desc
limit 1;

select lpep_pickup_datetime,
	   trip_distance
from green_taxi_data
limit 10;

select distinct on (lpep_pickup_datetime) lpep_pickup_datetime::date, trip_distance
from green_taxi_data
where lpep_pickup_datetime::date >= '2019-10-01' and
	  lpep_pickup_datetime::date < '2019-11-01'
order by lpep_pickup_datetime, trip_distance desc;


-- 11, 24, 26, 31
