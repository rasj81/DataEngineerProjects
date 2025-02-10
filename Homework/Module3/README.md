## DE Zoomcamp 2025 Cohort - Module 3
## Student Repo: https://github.com/rasj81/DataEngineerProjects

Question 1 
    Question:  
    Solution:   refer to ../Module3/question1.sql  
    Answer:     20,332,093  

Question 2
    Question:   Size of data in external and materialized tables?  
    Solution:   refer to ../Module3/question2.sql 
    Answer:     0 MB for the External, 155.12 MB for the Materialized  


Question 3
    Question:   Why are the estimated number of Bytes different?  
    Answer:     BigQuery is a columnar database...  


Question 4
    Question:   How many records have a fare_amount of 0?
    Solution:   refer to ../Module3/question4.sql 
    Answer:     8,333  

Question 5
    Question:   The best strategy to make an optimized table in Big Query?
    Answer:     Partition by tpep_dropoff_datetime and Cluster on VendorID  

Question 6
    Question: 
    Solution:   refer to ../Module3/question6.sql
    Answer:     310.24 MB for non-partitioned and 26.84 MB for partitioned


Question 7
    Question:   Where is external table data stored?  
    Answer:     GCP Bucket  

Question 8
    Question:   Always Cluster?  
    Answer:     False  