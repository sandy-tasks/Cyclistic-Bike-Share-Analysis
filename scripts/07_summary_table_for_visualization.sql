/* Create a summary table for visualization */
SELECT 
  member_casual,
  FORMAT_DATE('%A', started_at) AS day_of_week,
  EXTRACT(DAYOFWEEK FROM started_at) AS day_num, -- Helps sort all week Monday-Sunday
  COUNT(*) AS total_trips,
  ROUND(AVG(TIMESTAMP_DIFF(ended_at, started_at, SECOND) / 60), 2) AS avg_ride_length
FROM `cyclistic_trips.master_data_cleaned`
GROUP BY member_casual, day_of_week, day_num
ORDER BY member_casual, day_num;
