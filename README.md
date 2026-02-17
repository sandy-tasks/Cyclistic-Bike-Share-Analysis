# Cyclistic-Bike-Share-Analysis
Capstone project for the Google Data Analytics Professional Certificate.
## 🎯 Project Goal
To analyze Cyclistic's historical bike trip data to identify trends in how casual riders and annual members use bikes differently. These insights will help design marketing strategies to convert casual riders into annual members.

## 👥 Stakeholders
* Lily Moreno, Director of Marketing
* Cyclistic Executive Team

## 2. Prepare
* **Data Source:** [Publicly available trip data](https://divvy-tripdata.s3.amazonaws.com/index.html) from Motivate International Inc.
* **Period Covered:** January 2025 to December 2025.
* **Storage:** Raw data is stored locally; processing will be done in Google BigQuery.
* **Data Privacy:** This data is provided under this [license](https://www.divvybikes.com/data-license-agreement).

## 3. Process
* **Tool:** SQL (Google BigQuery)
* **Ingestion:** Created a dataset named `cyclistic_trips` and imported 12 monthly CSV files for the year 2025.
* **Cleaning Preparation:** Verified all 12 tables have matching schemas (column names and data types) to allow for a successful merge.

## 🛠️ Challenges & Workarounds
* **Issue:** Encountered a **100MB local upload limit** in the BigQuery Sandbox for several monthly files (e.g., June and July).
* **Solution:** To maintain a zero-cost infrastructure without a credit card, I used **Google Drive** as an external data source. 
* **Action:** Hosted the large files on Drive and linked them to BigQuery as **External Tables**. This bypassed the upload limit and allowed for the analysis of the full 12-month dataset.
