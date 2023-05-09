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

| scholar_id | full_name                   | sex    | year_level | school_name                        |
| ---------- | --------------------------- | ------ | ---------- | ---------------------------------- |
| 276        | "Macalipat, Rudolph Cherry" | FEMALE | 4          | "Cagayan State University"         |
| 399        | "Lalamunan, Juanito Rhea"   | FEMALE | 2          | "Western Institute Of Technology"  |
| 523        | "Bangwa, Leonor Gideon"     | FEMALE | 2          | "Lourdes College - Cagayan De Oro" |
| ...        | ...                         | ...    | ...        | ...                                |
| 1201       | "Kabahit, Ruperto"          | FEMALE | 1          | "Silliman University"              |
| 4961       | "Madlangawa, Shirley"       | FEMALE | 3          | "Silliman University"              |
| 8125       | "Dimaaliw, Clara Camille"   | FEMALE | 1          | "Ateneo De Zamboanga University"   |


## CS105 Project Requirements

### Entity-relationship diagram

![entity_relationship_diagram](/cs105reqs/entity_relationship_diagram.png)


### Relational model
![](https://peacemakersnetwork.org/wp-content/uploads/2019/09/placeholder.jpg)

**Note:** See `\cs105reqs` subfolder for the normalization and [data dictionaries](/cs105reqs/data_dictionary.pdf).