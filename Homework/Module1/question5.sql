-- DE Zoomcamp 2025 Cohort - Module 1 / Question 5
-- Student Repo: https://github.com/rasj81/DataEngineerProjects

-- It doesn't add up, check zone/location groupings and count

select "pu"."Zone" as "PULocation",
	   count(*) as "TripCount"
from "green_taxi_data" as "trip"
	left join "taxi_zone_lookup" as "pu" ON ("trip"."PULocationID" = "pu"."LocationID")
where "lpep_pickup_datetime"::date = '2019-10-18'::date
group by "pu"."Zone"
order by "TripCount" desc;

-- Verify total count
-- select count(*) as "TripCount"
-- from "green_taxi_data" as "trip" 
-- where "lpep_pickup_datetime"::date = '2019-10-18'::date

-- select * from taxi_zone_lookup;