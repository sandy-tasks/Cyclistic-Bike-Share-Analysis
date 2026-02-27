This folder contains SQL and R code for the Cyclistic project.

## 🧹 Data Processing Summary
To ensure data integrity, I performed the following steps:
1. **Consolidation:** Merged 12 months of raw trip data into a single master table.
2. **Cleaning:** Removed duplicate records and trips with a duration of less than 1 minute or greater than 24 hours.
3. **Transformation:** Extracted `day_of_week` and `month` from timestamps and calculated `ride_length` in minutes.

[View SQL Analysis Script Here](https://github.com/sandy-tasks/Cyclistic-Bike-Share-Analysis/blob/main/scripts/07_summary_table_for_visualization.sql)
