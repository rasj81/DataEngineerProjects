-- DE Zoomcamp 2025 Cohort - Module 1 / Question 3
-- Student Repo: https://github.com/rasj81/DataEngineerProjects

select count(*) filter (where trip_distance <= 1) as Miles_Under1,
       count(*) filter (where trip_distance > 1 and trip_distance <= 3) as Miles_3to7,
       count(*) filter (where trip_distance > 3 and trip_distance <= 7) as Miles_3to7,
       count(*) filter (where trip_distance > 7 and trip_distance <= 10) as Miles_7to10,
       count(*) filter (where trip_distance > 10) as Miles_Over10  
from green_taxi_data
-- where lpep_pickup_datetime::DATE >= '2019-10-01'::DATE AND
--	  lpep_pickup_datetime::DATE <'2019-11-01'::DATE;