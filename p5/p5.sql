USE pandemic; 

DROP FUNCTION IF EXISTS year_difference;

DELIMITER //

CREATE FUNCTION year_difference(selected_year YEAR)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE difference INT;
    SET difference = TIMESTAMPDIFF(YEAR, MAKEDATE(selected_year, 1), CURDATE());
    RETURN difference;
END //

DELIMITER ;

SELECT 
    year,
    year_difference(year) AS difference
FROM infectious_cases_updated;
