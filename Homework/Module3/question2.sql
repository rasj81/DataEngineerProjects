-- Query for Materialized Table
SELECT count(DISTINCT PULocationID) FROM `dezoomcampgcp.taxidata_hw3.taxidata_hw3_flat`

-- Query for External Table
SELECT count(DISTINCT PULocationID) FROM `dezoomcampgcp.taxidata_hw3_ext.taxidata_hw3_ext_flat`