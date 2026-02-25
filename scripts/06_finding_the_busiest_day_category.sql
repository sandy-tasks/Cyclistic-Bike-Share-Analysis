/* Find the number of trips per day of the week for each user type */
SELECT 
  member_casual,
  FORMAT_DATE('%A', started_at) AS day_of_week, 
  COUNT(*) AS total_trips
FROM `cyclistic_trips.master_data_cleaned`
GROUP BY member_casual, day_of_week
ORDER BY member_casual, total_trips DESC;
