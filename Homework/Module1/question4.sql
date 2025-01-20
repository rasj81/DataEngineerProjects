-- DE Zoomcamp 2025 Cohort - Module 1 / Question 4
-- Student Repo: https://github.com/rasj81/DataEngineerProjects

SELECT * 
FROM (SELECT ROW_NUMBER() OVER (PARTITION BY lpep_pickup_datetime::date order by trip_distance DESC) AS r,
    t.*
    from green_taxi_data t ) x
where x.r <= 1
order by trip_distance desc;

-- spot-check results
-- select * from green_taxi_data
-- order by trip_distance desc LIMIT 1;