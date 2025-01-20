-- DE Zoomcamp 2025 Cohort - Module 1 / Question 6
-- Student Repo: https://github.com/rasj81/DataEngineerProjects

select "pu"."Zone" as "PULocation",
       "do"."Zone" as "DOLocation",
       "trip"."tip_amount"
from "green_taxi_data" as "trip"
	left join "taxi_zone_lookup" as "pu" ON ("trip"."PULocationID" = "pu"."LocationID")
	left join "taxi_zone_lookup" as "do" ON ("trip"."DOLocationID" = "do"."LocationID")
where "lpep_pickup_datetime"::date = '2019-10-18'::date and
	  "pu"."Zone" = 'East Harlem North'
group by "pu"."Zone", "do"."Zone", "trip"."tip_amount"
order by "trip"."tip_amount" desc
limit 1;

-- select * from taxi_zone_lookup;