# DOST Scholarship Monitoring System Database


## Setup Guide

### How to deploy the database in my machine?

1. Download and install the [MySQL Community Server](https://dev.mysql.com/downloads/mysql/).
2. Open MySQL Workbench then click `Database` > `Connect to Database`. </br>
   Assuming you chose default settings during installation, choose `OK` in the popup window.
   - Keyboard shortcut: `Ctrl`+`U`
3. Click `File` > `Open SQL Script` in the top toolbar.
   - Keyboard shortcut `Ctrl`+`Shift`+`O`
4. Select `dost.sql` inside this project folder.
5. Execute the script by clicking `Query` > `Execute (All or Selection)` in the top toolbar.
   - Keyboard shortcut `Ctrl`+`Shift`+`Enter`
6. The `dost` schema is now live on your MySQL server.

### How to populate the database?

#### Method 1: Import database backup

1. Open MySQL Workbench.
2. Click `Server` > `Data Import` in the top toolbar.
3. Select this project's `\dost_dump` folder in `Import from Dump Project Folder`.
4. Click `Start Import` at the bottom of the current tab.

#### Method 2: Automatic data generation

1. Download and install [Python](https://www.python.org/downloads/).
2. Navigate to this project folder.
3. In your terminal, execute `pip install -r requirements.txt.` to install dependencies.
4. Run the automation script by executing `python main.py`.


## Selected views

### Female Bicolano scholars taking either BSIT or BSCS

```sql
CREATE VIEW FemaleBicolanoCSITScholars AS
SELECT scholar.scholar_id,
    CONCAT(scholar.last_name, ', ', scholar.first_name) AS full_name,
    scholar.sex,
    scholar.year_level,
    school.name AS school_name
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
```

| scholar_id | full_name                   | sex    | year_level | school_name                                               |
| ---------- | --------------------------- | ------ | ---------- | --------------------------------------------------------- |
| 772        | "Labay, Aurelia Raphaela"   | FEMALE | 1          | "Camarines Sur Polytechnic Colleges"                      |
| 1065       | "Basubas, Vicky Elsa"       | FEMALE | 2          | "Mats College Of Technology"                              |
| 1583       | "Magsombol, Nash Dominador" | FEMALE | 3          | "Eastern Samar State University"                          |
| ...        | ...                         | ...    | ...        | ...                                                       |
| 8095       | "Cacab, Maynard"            | FEMALE | 3          | "San Beda University"                                     |
| 8706       | "Dornogan, Yolly Esteban"   | FEMALE | 2          | "Cebu Institute Of Technology - University"               |
| 9822       | "Dungo, Victoriano"         | FEMALE | 1          | "Northern Negros State College Of Science And Technology" |


### Number of missing certificate of grades by scholar

```sql
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
```

| scholar_id | scholar_full_name             | email             | year_level | missing_cog_count |
| ---------- | ----------------------------- | ----------------- | ---------- | ----------------- |
| 1          | "Labis, InesA"                | il8237@gmail.com  | 4          | 3                 |
| 5          | "Malabed, Sancho Kael"        | skm1926@gmail.com | 3          | 2                 |
| 6          | "Tabalanza, Jovita"           | jt8342@gmail.com  | 4          | 3                 |
| ...        | ...                           | ...               | ...        | ...               |
| 2125       | "Agati, Dennis"               | da5746@gmail.com  | 4          | 1                 |
| 2132       | "Sawi, Roger Gregory"         | rgs9713@gmail.com | 4          | 3                 |
| 2133       | "Panaguinto, Veronica Nieves" | vnp2850@gmail.com | 3          | 1                 |


## CS105 Project Requirements

### Entity-relationship diagram
![entity_relationship_diagram](/cs105reqs/entity_relationship_diagram.png)

**Note:** See `\cs105reqs` subfolder for the [relational model](/cs105reqs/relational_model.png), normalization and [data dictionaries](/cs105reqs/data_dictionary.pdf).