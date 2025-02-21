## DE Zoomcamp 2025 Cohort - Module 4
## Student Repo: https://github.com/rasj81/DataEngineerProjects

Question 1
    Question:   What does this .sql model compile to?  
    Answer:     select * from myproject.my_nyc_tripdata.ext_green_taxi  

Question 2
    Question:   What would you change to accomplish that?  
    Answer:     pickup_datetime >= CURRENT_DATE - INTERVAL '{{ env_var("DAYS_BACK", "30") }}' DAY  

Question 3
    Question:   Select the option that does NOT apply for materializing  
    Answer:     dbt run --select +models/core/  


Question 4
    Question:   select all statements that are true to the models using it  
    Answer:     1,2,3,5  

Question 5
    Question:   which were the yearly quarters with the best (or less worse) and worst results  
    Answer:     green: {best: 2020/Q1, worst: 2020/Q2}, yellow: {best: 2020/Q1, worst: 2020/Q2}  

Question 6
    Question:  what are the values of p97, p95, p90?  
    Answer:     green: {p97: 55.0, p95: 45.0, p90: 26.5}, yellow: {p97: 31.5, p95: 25.5, p90: 19.0}  

Question 7
    Question:   what are dropoff_zones with the 2nd longest p90 trip_duration ?  
    Answer:     LaGuardia Airport, Yorkville East, Greenpoint  
