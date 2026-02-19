/* Create a cleaned table by removing trips with duration <= 0 */
CREATE TABLE `cyclistic_trips.master_data_cleaned` AS
SELECT *
FROM `cyclistic_trips.master_data_2025`
WHERE ended_at > started_at;
