USE dost;
DROP VIEW IF EXISTS ScholarMissingCOG;
CREATE VIEW ScholarMissingCOG AS
SELECT s.scholar_id,
    CONCAT(s.last_name, ', ', s.first_name) AS scholar_full_name,
    s.email,
    s.year_level,
    year_level - (COUNT(*) DIV 2) AS missing_cog_count
FROM scholar AS s
    INNER JOIN certificate_of_grade AS cog ON s.scholar_id = cog.scholar_id
GROUP BY s.scholar_id
HAVING missing_cog_count > 0;
SELECT *
FROM ScholarMissingCOG;