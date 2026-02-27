📖 Cyclistic Case Study: Complete Step-by-Step Mastery Guide

This guide is designed to help a beginner navigate the full lifecycle of the Cyclistic Bike-Share Analysis.

🏗️ Project Foundation & Ethics
Program used: Web Browser

The Official Data Source: The data is real-world trip data from the Chicago bike-share system, provided by Motivate International Inc.

The Bucket Link: .

The License: .

The Reason: Linking the license proves you are following data ethics and legal requirements for using public data.

📥 Step 1: Data Gathering (Prepare)
Program used: Web Browser / Local File Explorer

Download 12 Months: Scroll to the most recent full year (e.g., all of 2025). Download the 12 individual .zip files (one for each month).

Unzip & Organize: Create a folder on your computer named Cyclistic_Raw_Data. Unzip the files there. You should see 12 separate .csv files.

⚠️ DO NOT Open in Excel: Each file can have 400,000+ rows. Opening all 12 in Excel will make your computer very slow or crash it.

The Reason: We collect 12 months to ensure the analysis accounts for seasonality (comparing summer highs to winter lows).

🧹 Step 2: Data Cleaning & Joining (Process)
Program used: Google BigQuery (SQL)

The Action: Upload the 12 CSVs into a BigQuery dataset. Use a UNION ALL script to merge them into one master table.

The Cleaning: Run SQL commands to:

Delete rows with null values in station names or IDs.

Filter out "test" rides or rides where ride_length is less than 60 seconds.

Remove duplicate ride_id entries.

The Reason: The total dataset is over 5 million rows. BigQuery is built to handle this volume without crashing, and cleaning ensures your final averages aren't ruined by errors.

🕒 Step 3: Data Transformation (Analyze)
Program used: Google BigQuery (SQL)

The Action: Write SQL queries to create new metrics:

ride_length: Calculate the duration by subtracting started_at from ended_at.

day_of_week: Extract the day of the week (1=Sunday, 7=Saturday).

The Reason: You cannot find patterns in raw date-time stamps. You must transform them into "Minutes" and "Days" to calculate averages.

📊 Step 4: Data Visualization (Share)
Program used: Tableau Public

The Action: Export your summarized SQL results as a small CSV and upload it to Tableau.

The Visuals: Build a Side-by-Side Bar Chart for trip counts and a Line Graph for average duration, then combine them into an interactive Dashboard.

The Reason: Charts reveal the "Story" instantly. It shows that Casual riders dominate the weekends for leisure, while Members dominate the work week for commuting.

🚀 Step 5: Final Documentation (Act)
Program used: GitHub

The Action: 1.  Upload your .sql cleaning scripts to a /scripts folder.
2.  Add your dashboard screenshots to a /visualizations folder.
3.  Write the final README.md containing your 3 business recommendations.

The Reason: This proves your "Full-Stack" ability to a recruiter—showing you can handle a project from the first download to the final business strategy.

🏆 Pro-Tip for Mastery Session
Don't skip the cleaning! In this project, you will find thousands of "false starts" (rides under 60 seconds). If you don't remove those in Step 2, your averages in Step 4 will be wrong. Always respect the data cleaning phase!

Would you like me to show you how to add a "Table of Contents" to this guide so users can click and jump to a specific step?
