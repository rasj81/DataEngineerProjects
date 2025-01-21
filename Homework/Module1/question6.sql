-- DE Zoomcamp 2025 Cohort - Module 1 / Question 6
-- Student Repo: https://github.com/rasj81/DataEngineerProjects

-- It doesn't add up, check zone/location groupings and count

select "pu"."Zone" as "PULocation",
       "do"."Zone" as "DOLocation",
       "trip"."tip_amount"
from "green_taxi_data" as "trip"
	left join "taxi_zone_lookup" as "pu" ON ("trip"."PULocationID" = "pu"."LocationID")
	left join "taxi_zone_lookup" as "do" ON ("trip"."PULocationID" = "do"."LocationID")
where "lpep_pickup_datetime"::date = '2019-10-18'::date
group by "pu"."Zone", "do"."Zone"
order by "tip_amount" desc;

-- Verify total count
-- select count(*) as "TripCount"
-- from "green_taxi_data" as "trip" 
-- where "lpep_pickup_datetime"::date = '2019-10-18'::date

-- select * from taxi_zone_lookup;
