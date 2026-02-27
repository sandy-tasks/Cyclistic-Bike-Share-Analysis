1. 📥 Data Collection
Source: Divvy Trip Data

Action: Download 12 months of .zip files. Unzip them into a folder named raw_data.

Tool: Local File Explorer.

Why: We need 12 months to see how behavior changes between seasons (Summer vs. Winter).

2. 🧹 Data Cleaning & Joining
Tool: BigQuery (SQL)

Action: Upload the 12 CSVs. Use UNION ALL to merge them into one table. Run scripts to delete rows where ride_length is less than 1 minute or where station names are missing.

Why: The dataset is over 5 million rows. Google Sheets cannot handle this volume; SQL is required for "Big Data."

3. 🕒 Transformation
Tool: BigQuery (SQL)

Action: Create new columns for day_of_week (1-7) and ride_length (minutes).

Why: You cannot calculate averages directly from "Start Time" and "End Time" without first converting them into a single duration number.

4. 📊 Visualization
Tool: Tableau Public

Action: Export your summarized SQL results as a CSV and upload to Tableau. Create Bar Charts to compare Member vs. Casual trip counts.

Why: Visuals reveal the "Story." It becomes instantly clear that Casual riders dominate the weekends, while Members dominate the work week.

5. 🚀 Documentation
Tool: GitHub

Action: Upload your .sql files to a scripts folder and your Tableau screenshots to a visualizations folder. Write your final recommendations in the README.md.

Why: This proves your "Full-Stack" ability to a recruiter—showing you can handle data from the first download to the final business advice.

🏆 Pro-Tip for Novices
Don't skip the cleaning! In this project, I found thousands of "false starts" (rides under 60 seconds). If you don't remove those in Step 2, your averages in Step 4 will be wrong. Always respect the data cleaning phase!
