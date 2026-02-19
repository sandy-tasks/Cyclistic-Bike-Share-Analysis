/* Step 1: Combine 12 months of data into one master table 
Note: Replace 'cyclistic_trips' with your actual dataset name 
*/

CREATE TABLE `cyclistic_trips.master_data_2025` AS
SELECT * FROM `cyclistic_trips.jan_2025_ext`
UNION ALL
SELECT * FROM `cyclistic_trips.feb_2025_ext`
UNION ALL
SELECT * FROM `cyclistic_trips.mar_2025_ext`
UNION ALL
SELECT * FROM `cyclistic_trips.apr_2025_ext`
UNION ALL
SELECT * FROM `cyclistic_trips.may_2025_ext`
UNION ALL
SELECT * FROM `cyclistic_trips.jun_2025_ext` 
UNION ALL
SELECT * FROM `cyclistic_trips.jul_2025_ext`
UNION ALL
SELECT * FROM `cyclistic_trips.aug_2025_ext`
UNION ALL
SELECT * FROM `cyclistic_trips.sep_2025_ext`
UNION ALL
SELECT * FROM `cyclistic_trips.oct_2025_ext`
UNION ALL
SELECT * FROM `cyclistic_trips.nov_2025_ext`
UNION ALL
SELECT * FROM `cyclistic_trips.dec_2025_ext`;
