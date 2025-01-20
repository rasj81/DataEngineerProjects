## DE Zoomcamp 2025 Cohort - Module 1
## Student Repo: https://github.com/rasj81/DataEngineerProjects

## refine where clause, verify include/exclude for between ranges

select count(*) filter (where trip_distance <= 1) as Miles_Under1,
       count(*) filter (where trip_distance between 3 and 7) as Miles_3to7,
       count(*) filter (where trip_distance between 7 and 10) as Miles_7to10,
       count(*) filter (where trip_distance > 10) as Miles_Over10  
from green_taxi_data
where lpep_pickup_datetime::DATE BETWEEN
	  '2019-10-01'::DATE AND
	  '2019-11-01'::DATE;