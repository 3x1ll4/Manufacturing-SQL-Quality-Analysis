-- Manufacturing Quality Analysis
-- Project: Manufacturing SQL Portfolio
-- Dataset: Fictional manufacturing production data

-- 1. Overall Manufacturing KPIs
SELECT
    SUM(units_produced) AS total_production,
    SUM(defective_units) AS total_defects,
    ROUND(
        SUM(defective_units) * 100.0 /
        NULLIF(SUM(units_produced), 0), 2
    ) AS defect_rate,
    SUM(downtime_minutes) AS total_downtime
FROM manufacturing_data;

-- 2. Quality Performance by Production Line
SELECT
    production_line,
    SUM(units_produced) AS total_production,
    SUM(defective_units) AS total_defects,
    ROUND(
        SUM(defective_units) * 100.0 /
        NULLIF(SUM(units_produced), 0), 2
    ) AS defect_rate
FROM manufacturing_data
GROUP BY production_line
ORDER BY defect_rate DESC;

-- 3. Quality Performance by Shift
SELECT
    shift,
    SUM(units_produced) AS total_production,
    SUM(defective_units) AS total_defects,
    ROUND(
        SUM(defective_units) * 100.0 /
        NULLIF(SUM(units_produced), 0), 2
    ) AS defect_rate
FROM manufacturing_data
GROUP BY shift
ORDER BY defect_rate DESC;

-- 4. Monthly Quality Trends
SELECT
    strftime('%Y-%m', production_date) AS month,
    SUM(units_produced) AS total_production,
    SUM(defective_units) AS total_defects,
    ROUND(
        SUM(defective_units) * 100.0 /
        NULLIF(SUM(units_produced), 0), 2
    ) AS defect_rate,
    SUM(downtime_minutes) AS total_downtime
FROM manufacturing_data
GROUP BY strftime('%Y-%m', production_date)
ORDER BY month;

-- 5. Top 5 Records With Highest Defect Counts
SELECT
    record_id,
    production_date,
    production_line,
    shift,
    defective_units
FROM manufacturing_data
ORDER BY defective_units DESC
LIMIT 5;