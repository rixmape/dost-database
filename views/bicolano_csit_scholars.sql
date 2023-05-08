USE dost;
DROP VIEW IF EXISTS BicolanoCSITScholars;
CREATE VIEW BicolanoCSITScholars AS
SELECT scholar_id,
    CONCAT(last_name, ', ', first_name) AS full_name,
    sex,
    year_level
FROM scholar
    JOIN (address, course) ON (
        scholar.home_address_id = address.address_id
        AND scholar.course_id = course.course_id
    )
WHERE (
        address.region = 'Region V (Bicol Region)'
        AND scholar.sex = 'FEMALE'
        AND (
            course.name = 'BS Information Technology'
            OR course.name = 'BS Computer Science'
        )
    );
SELECT *
FROM BicolanoCSITScholars;