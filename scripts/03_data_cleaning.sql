/* Check for trips with duration <= 0 minutes */
SELECT *
FROM `cyclistic_trips.master_data_2025`
WHERE ended_at <= started_at;
