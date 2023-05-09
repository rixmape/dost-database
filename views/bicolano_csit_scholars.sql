USE dost;
DROP VIEW IF EXISTS FemaleBicolanoCSITScholars;
CREATE VIEW FemaleBicolanoCSITScholars AS
SELECT scholar.scholar_id,
    CONCAT(scholar.last_name, ', ', scholar.first_name) AS full_name,
    scholar.sex,
    scholar.year_level,
    school.name
FROM scholar
    JOIN (address, course, school) ON (
        scholar.home_address_id = address.address_id
        AND scholar.course_id = course.course_id
        AND scholar.school_id = school.school_id
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
FROM FemaleBicolanoCSITScholars;