# Manufacturing Quality Analysis Using SQL

## Project Overview
This project uses SQLite to analyze fictional manufacturing
production data and identify quality performance trends.

The goal is to demonstrate how SQL can help manufacturing
teams monitor defects, production output, downtime, and
quality risks.

## Tools Used
- SQLite
- DB Browser for SQLite
- SQL
- GitHub

## SQL Skills Demonstrated
- SELECT and WHERE
- GROUP BY and ORDER BY
- SUM, AVG, COUNT, and ROUND
- CASE WHEN
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions (RANK and LAG)
- Running Totals
- SQL Views

## Key Performance Indicators
- Total Units Produced
- Total Defective Units
- Defect Rate (%)
- Total Downtime (Minutes)
- Average Downtime
- Quality Risk Classification

## Project Analysis
The SQL queries examine:

1. Production performance by line
2. Defect rates by shift
3. Monthly quality trends
4. High-risk manufacturing records
5. Production downtime
6. Month-over-month performance changes
7. Cumulative production and defects

## Key Findings
Based on the fictional dataset:

- January had a defect rate of 2.93%.
- February improved to 2.27%.
- March had a defect rate of 2.32%.
- Line B's night shift showed elevated defect rates.
- Defect rates improved overall from January to March.

These findings are based on practice data and do not
represent actual manufacturing company performance.

## Project Files
- manufacturing_quality.db - SQLite database
- quality_analysis.sql - Main SQL analysis queries
- running_totals.sql - Cumulative production analysis
- manufacturing_quality_analysis.sql - Initial SQL query

## Business Value
This project demonstrates how SQL can support data-driven
decision-making in manufacturing quality operations.

The analysis can help identify potential quality concerns,
monitor production trends, and highlight opportunities
for process improvement.

## Future Improvements
- Expand the dataset
- Add more production lines and shifts
- Build interactive Power BI dashboards
- Automate recurring quality reports