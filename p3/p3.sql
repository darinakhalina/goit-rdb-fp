USE pandemic; 

SELECT 
    countries.country_name AS entity,
    countries.country_code AS code,
    AVG(updated.number_of_cases) AS average_number_rabies,
    MIN(updated.number_of_cases) AS min_number_rabies,
    MAX(updated.number_of_cases) AS max_number_rabies,
    SUM(updated.number_of_cases) AS total_number_rabies
FROM infectious_cases_updated updated
JOIN countries ON countries.id = updated.country_id
JOIN diseases ON diseases.id = updated.disease_id
WHERE diseases.disease_name = 'rabies'
GROUP BY countries.country_name, countries.country_code
ORDER BY average_number_rabies DESC
LIMIT 10;
