/* Calculate Average Ride Length in Minutes by User Type */
SELECT 
  member_casual, 
  ROUND(AVG(TIMESTAMP_DIFF(ended_at, started_at, SECOND) / 60), 2) AS avg_ride_mins
FROM `cyclistic_trips.master_data_cleaned`
GROUP BY member_casual;
