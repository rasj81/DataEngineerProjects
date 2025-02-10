-- Create partitioned table from materialized table

CREATE TABLE
  `dezoomcampgcp.taxidata_hw3.taxidata_hw3_part`
PARTITION BY
  datetime_trunc(tpep_dropoff_datetime,DAY)
AS (
  SELECT
    *
  FROM
    `dezoomcampgcp.taxidata_hw3.taxidata_hw3_flat`
);

-- Run query on materialized table
SELECT distinct VendorID 
FROM `dezoomcampgcp.taxidata_hw3.taxidata_hw3_flat`
WHERE tpep_dropoff_datetime >= '2024-03-01' and
      tpep_dropoff_datetime <= '2024-03-15'

-- run query on partitioned table
SELECT distinct VendorID 
FROM `dezoomcampgcp.taxidata_hw3.taxidata_hw3_part`
WHERE tpep_dropoff_datetime >= '2024-03-01' and
      tpep_dropoff_datetime <= '2024-03-15'

