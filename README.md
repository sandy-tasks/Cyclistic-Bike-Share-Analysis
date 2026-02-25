/># Cyclistic-Bike-Share-Analysis
Capstone project for the Google Data Analytics Professional Certificate.
## 🎯 Project Goal
To analyze Cyclistic's historical bike trip data to identify trends in how casual riders and annual members use bikes differently. These insights will help design marketing strategies to convert casual riders into annual members.

## 👥 Stakeholders
* Lily Moreno, Director of Marketing
* Cyclistic Executive Team

## 2. Prepare
*   To ensure a high-quality analysis, I evaluated the dataset using the **ROCCC** framework and verified its integrity for the 2025 period.
* **Data Source:** [Publicly available trip data](https://divvy-tripdata.s3.amazonaws.com/index.html) from Motivate International Inc.
* **Data Quality (ROCCC):** The dataset is **Reliable**, **Original**, **Comprehensive**, **Current** (covering the full year of 2025)
* **Period Covered:** January 2025 to December 2025.
* **Bias & Credibility:** There is no selection bias as the data includes every recorded trip for the period. The data is highly credible as
    it is a first-party operational data;
* **Licensing & Privacy:** The data is provided under this [Data License Agreement](https://www.divvybikes.com/data-license-agreement).
* **Privacy is strictly  maintained** by using unique `ride_id` numbers
* **Storage and accessibility:** Raw data is stored locally; processing will be done in Google Cloud BigQuery environment.
* **Data Integrity:** I verified data integrity by confirming matching schemas (identical column names and data types) across all 12 monthly files prior
    to the merging process.
    
## 3. Process
* **Tool:** SQL (Google BigQuery)
* **Ingestion:** Created a dataset named `cyclistic_trips` and imported 12 monthly CSV files for the year 2025.
* **Cleaning Preparation:** Verified all 12 tables have matching schemas (column names and data types) to allow for a successful merge.

## 🛠️ Challenges & Workarounds
* **Issue:** Encountered a **100MB local upload limit** in the BigQuery Sandbox for several monthly files (e.g., June and July).
* **Solution:** To maintain a zero-cost infrastructure without a credit card, I used **Google Drive** as an external data source. 
* **Action:** Hosted the large files on Drive and linked them to BigQuery as **External Tables**. This bypassed the upload limit and allowed for the analysis of
    the full 12-month dataset.

### 🧹 Data Cleaning & Validation
After consolidating the 12-month dataset, I performed quality checks to ensure data integrity.

* **Initial Row Count:** Verified a total of **5,552,994** trips in the raw consolidated table (`master_data_2025`).
* **Error Detection:** Identified 29 records where `ended_at` was earlier than or equal to `started_at` (negative or zero trip duration).

## 📊 4. Analyze

In this phase, I performed descriptive analysis to uncover how usage patterns differ between annual members and casual riders.

### Key Findings:

* **Ride Duration:** On average, **casual riders** have a significantly higher ride length (**22.59 minutes**) compared to **annual members** (**12.32 minutes**). This suggests that casual riders use the service for longer, pleasure-oriented trips, while members use it for shorter, utility-based transport trips.
* **Peak Usage (Casual):** Casual riders reached their highest volume on **Saturday (414,206 trips)**, reinforcing the recreational usage pattern.
* **Peak Usage (Member):** Annual members reached their highest volume on **Thursday (576,005 trips)**, indicating a high reliance on the service for mid-week work
    usage.
* **The "Behaviour Gap":** The data confirms that members use the service as a functional utility for daily transport usage, while casual riders primarily utilize
    the  bikes for weekend pleasure activities.



