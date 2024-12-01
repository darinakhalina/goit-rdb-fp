USE pandemic; 

SELECT 
    year,
    MAKEDATE(year, 1) AS first_day_date,
    CURDATE() AS `current_date`,
    TIMESTAMPDIFF(YEAR, MAKEDATE(year, 1), CURDATE()) AS difference
FROM infectious_cases_updated;
