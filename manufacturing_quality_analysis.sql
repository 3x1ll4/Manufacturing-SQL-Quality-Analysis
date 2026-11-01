SELECT
    record_id,
    production_date,
    production_line,
    shift,
    units_produced,
    defective_units,
    SUM(units_produced) OVER (
        ORDER BY production_date, record_id
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND CURRENT ROW
    ) AS running_production,
    SUM(defective_units) OVER (
        ORDER BY production_date, record_id
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND CURRENT ROW
    ) AS running_defects
FROM manufacturing_data
ORDER BY production_date, record_id;