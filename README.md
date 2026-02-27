# 🚲 Cyclistic Bike-Share Analysis: Case Study
**Course:** Google Data Analytics Professional Certificate (Capstone Project)

## 🛠️ Data Analytics Stack
* **Data Cleaning:** SQL (BigQuery/PostgreSQL) 
* **Data Visualization:** Tableau Public
* **Spreadsheets:** Google Sheets (Pivot Tables, VLOOKUP)
* **Documentation:** GitHub Markdown

## 🧹 Data Processing Summary
To ensure data integrity, I performed the following steps:
1. **Consolidation:** Merged 12 months of raw trip data into a single master table.
2. **Cleaning:** Removed duplicate records and trips with a duration of less than 1 minute or greater than 24 hours.
3. **Transformation:** Extracted `day_of_week` and `month` from timestamps and calculated `ride_length` in minutes.
  
## 📈 Final Dashboard Preview
Image
<img width="1914" height="865" alt="Capture d’écran (6580)" src="https://github.com/user-attachments/assets/dd35d634-de47-4573-a470-5fe0741fbbca" />

To interact with the live dashboard
[View SQL Analysis Script Here](https://github.com/sandy-tasks/Cyclistic-Bike-Share-Analysis/blob/main/scripts/07_summary_table_for_visualization.sql)


## 📖 Introduction
This case study explores the usage patterns of "Cyclistic," a fictional bike-share program in Chicago. The goal is to understand how annual members and casual riders use Cyclistic bikes differently to help design a new marketing strategy to convert casual riders into annual members.

## 🎯 1. Ask
The marketing team needs to answer three primary questions:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

### **Business Task**
Analyze the 2025 Cyclistic trip data to identify trends that will help develop a marketing strategy targeted at converting casual riders into long-term annual members.

### **Stakeholders**
* **Lily Moreno:** Director of Marketing and your manager.
* **Cyclistic Executive Team:** The detail-oriented team that will decide whether to approve the recommended marketing program.

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

  ## 🎨 5. Share

In this phase, I am converting my SQL findings into visual dashboards to communicate insights effectively to the Cyclistic executive team.

* **Tool Selected:** [Tableau]
* **Key Visuals:**
*   1. Comparison of Total Trips per Day (Member vs. Casual).
    2. Average Ride Duration per User Segment.
    3. [View Interactive Dashboard Here](https://public.tableau.com/views/CyclisticBike-ShareUserBehaviorAnalysis2025/CyclisticUserBehaviorAnalysis?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
 
## 🚀 6. Act: Data-Driven Recommendations

Based on the behavioral trends identified in the analysis, I recommend the following three strategies to convert casual riders into annual members:

* **Target Weekend "Leisure" Riders:** Since casual usage peaks significantly on **Saturdays (7.5%)** and **Sundays**, Cyclistic should launch a "Weekend-Only Membership" or a "Leisure Pass." This bridges the gap for users who don't commute during the week but are frequent weekend riders.

* **Ride Duration Incentives:** The data shows casual riders maintain a much higher **Average Ride Length (~22 min)** compared to members (~12 min). We should offer membership discounts or "commuter credits" to users who consistently exceed 20 minutes per ride to encourage them to switch to a fixed-price annual plan.

* **Mid-Week Digital Campaigns:** Annual members dominate the Tuesday-Thursday period for commuting. Cyclistic should focus digital ad spend on these days to target casual riders with "Save Time & Money" messaging, highlighting the efficiency of bike-sharing for the mid-week work commute.

---
### 🔗 Project Links
* **Interactive Tableau Dashboard:** [https://public.tableau.com/views/CyclisticBike-ShareUserBehaviorAnalysis2025/CyclisticUserBehaviorAnalysis?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link]
* **SQL Queries:** [https://github.com/sandy-tasks/Cyclistic-Bike-Share-Analysis/blob/main/scripts/07_summary_table_for_visualization.sql]
* **Data Source:** Divvy Trip Data (Motivate International Inc.) [https://divvy-tripdata.s3.amazonaws.com/index.html]



