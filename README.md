# DOST Scholarship Monitoring System Database


## Setup Guide

### How to make the database available in my machine?

1. Download the [MySQL Community Server](https://dev.mysql.com/downloads/mysql/). An installation guide is available [here](https://www.youtube.com/watch?v=u96rVINbAUI).
2. Open MySQL Workbench and connect to your default MySQL server from the home screen.
3. Open the project SQL script by clicking `File` > `Open SQL Script` in the top toolbar.
   - You may also use the keyboard shortcut `Ctrl`+`Shift`+`O`.
4. Navigate to the project folder and select `dost.sql`.
5. Execute the script by clicking `Query` > `Execute (All or Selection)` in the top toolbar.
   - You may also use the keyboard shortcut `Ctrl`+`Shift`+`Enter`.

### How to automatically populate records into the database?

1. [Python](https://www.python.org/downloads/) must be available on your computer.
2. Install [`mysql-connector-python`](https://pypi.org/project/mysql-connector-python/) as a Python package by running the command `pip install mysql-connector-python`.
3. Navigate to the project folder.
4. Run the automation script by executing the command `python main.py`.


<!-- ## Sample views -->


## Entity-relationship diagram

![entity_relationship_diagram](assets/erd.png)


<!-- ## Relational model -->


## Data dictionary

<table style="width:100%">
   <caption style="font-size: 1.25em; font-weight: 500">Table: applicant</caption>
   <tr>
      <th>Name</th>
      <th>Data Type</th>
      <th>Not Null</th>
      <th>PK</th>
      <th>FK</th>
      <th>Default</th>
   </tr>
   <tr>
      <td>applicant_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>application_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>No</td>
      <td>Yes</td>
      <td></td>
   </tr>
   <tr>
      <td>home_address_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>No</td>
      <td>Yes</td>
      <td></td>
   </tr>
   <tr>
      <td>first_name</td>
      <td>VARCHAR(45)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>middle_name</td>
      <td>VARCHAR(45)</td>
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>NULL</td>
   </tr>
   <tr>
      <td>last_name</td>
      <td>VARCHAR(45)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>sex</td>
      <td>ENUM('MALE', 'FEMALE')</td>
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>NULL</td>
   </tr>
   <tr>
      <td>email</td>
      <td>VARCHAR(45)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>phone</td>
      <td>VARCHAR(11)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>family_annual_income</td>
      <td>INT</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
</table>
</br>

<table style="width:100%">
   <caption style="font-size: 1.25em; font-weight: 500">Table: application</caption>
   <tr>
      <th>Name</th>
      <th>Data Type</th>
      <th>Not Null</th>
      <th>PK</th>
      <th>FK</th>
      <th>Default</th>
   </tr>
   <tr>
      <td>application_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>admin_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>No</td>
      <td>Yes</td>
      <td></td>
   </tr>
   <tr>
      <td>submitted</td>
      <td>DATETIME</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>type</td>
      <td>ENUM('RA2067', 'RA7687')</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>status</td>
      <td>ENUM('PENDING', 'APPROVED', 'DENIED')</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
</table>
</br>

<table style="width:100%">
   <caption style="font-size: 1.25em; font-weight: 500">Table: registrar</caption>
   <tr>
      <th>Name</th>
      <th>Data Type</th>
      <th>Not Null</th>
      <th>PK</th>
      <th>FK</th>
      <th>Default</th>
   </tr>
   <tr>
      <td>registrar_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>school_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>No</td>
      <td>Yes</td>
      <td></td>
   </tr>
   <tr>
      <td>first_name</td>
      <td>VARCHAR(45)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>middle_name</td>
      <td>VARCHAR(45)</td>
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>NULL</td>
   </tr>
   <tr>
      <td>last_name</td>
      <td>VARCHAR(45)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>email</td>
      <td>VARCHAR(45)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>phone</td>
      <td>VARCHAR(11)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
</table>
</br>

<table style="width:100%">
   <caption style="font-size: 1.25em; font-weight: 500">Table: certificate_of_grade</caption>
   <tr>
      <th>Name</th>
      <th>Data Type</th>
      <th>Not Null</th>
      <th>PK</th>
      <th>FK</th>
      <th>Default</th>
   </tr>
   <tr>
      <td>certificate_id'</td>
      <td>INT</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>scholar_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>No</td>
      <td>Yes</td>
      <td></td>
   </tr>
   <tr>
      <td>registrar_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>No</td>
      <td>Yes</td>
      <td></td>
   </tr>
   <tr>
      <td>admin_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>No</td>
      <td>Yes</td>
      <td></td>
   </tr>
   <tr>
      <td>year</td>
      <td>YEAR</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>semester</td>
      <td>TINYINT</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>submitted</td>
      <td>DATETIME</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
</table>
</br>

<table style="width:100%">
   <caption style="font-size: 1.25em; font-weight: 500">Table: dost_admin</caption>
   <tr>
      <th>Name</th>
      <th>Data Type</th>
      <th>Not Null</th>
      <th>PK</th>
      <th>FK</th>
      <th>Default</th>
   </tr>
   <tr>
      <td>admin_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>first_name</td>
      <td>VARCHAR(45)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>middle_name</td>
      <td>VARCHAR(45)</td>
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>NULL</td>
   </tr>
   <tr>
      <td>last_name</td>
      <td>VARCHAR(45)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>email</td>
      <td>VARCHAR(45)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>phone</td>
      <td>VARCHAR(11)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
</table>
</br>

<table style="width:100%">
   <caption style="font-size: 1.25em; font-weight: 500">Table: scholarship</caption>
   <tr>
      <th>Name</th>
      <th>Data Type</th>
      <th>Not Null</th>
      <th>PK</th>
      <th>FK</th>
      <th>Default</th>
   </tr>
   <tr>
      <td>scholarship_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>type</td>
      <td>ENUM('RA2067', 'RA7687')</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>status</td>
      <td>ENUM('ACTIVE', 'ON_LEAVE', 'TERMINATED')</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td>'ACTIVE'</td>
   </tr>
   <tr>
      <td>award_year</td>
      <td>YEAR</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>end_year</td>
      <td>YEAR</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
</table>
</br>

<table style="width:100%">
   <caption style="font-size: 1.25em; font-weight: 500">Table: scholar</caption>
   <tr>
      <th>Name</th>
      <th>Data Type</th>
      <th>Not Null</th>
      <th>PK</th>
      <th>FK</th>
      <th>Default</th>
   </tr>
   <tr>
      <td>scholar_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>scholarship_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>No</td>
      <td>Yes</td>
      <td></td>
   </tr>
   <tr>
      <td>school_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>No</td>
      <td>Yes</td>
      <td></td>
   </tr>
   <tr>
      <td>course_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>No</td>
      <td>Yes</td>
      <td></td>
   </tr>
   <tr>
      <td>home_address_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>No</td>
      <td>Yes</td>
      <td></td>
   </tr>
   <tr>
      <td>first_name</td>
      <td>VARCHAR(45)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>middle_name</td>
      <td>VARCHAR(45)</td>
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>NULL</td>
   </tr>
   <tr>
      <td>last_name</td>
      <td>VARCHAR(45)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>sex</td>
      <td>ENUM('MALE', 'FEMALE')</td>
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>NULL</td>
   </tr>
   <tr>
      <td>email</td>
      <td>VARCHAR(45)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>phone</td>
      <td>VARCHAR(11)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>year_level</td>
      <td>TINYINT</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
</table>
</br>

<table style="width:100%">
   <caption style="font-size: 1.25em; font-weight: 500">Table: school</caption>
   <tr>
      <th>Name</th>
      <th>Data Type</th>
      <th>Not Null</th>
      <th>PK</th>
      <th>FK</th>
      <th>Default</th>
   </tr>
   <tr>
      <td>school_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>office_address_id</td>
      <td>INT</td>
      <td>No</td>
      <td>No</td>
      <td>Yes</td>
      <td>NULL</td>
   </tr>
   <tr>
      <td>name</td>
      <td>VARCHAR(256)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>phone</td>
      <td>VARCHAR(11)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>email</td>
      <td>VARCHAR(45)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>type</td>
      <td>ENUM('PUBLIC', 'PRIVATE')</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
</table>
</br>

<table style="width:100%">
   <caption style="font-size: 1.25em; font-weight: 500">Table: course</caption>
   <tr>
      <th>Name</th>
      <th>Data Type</th>
      <th>Not Null</th>
      <th>PK</th>
      <th>FK</th>
      <th>Default</th>
   </tr>
   <tr>
      <td>course_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>name</td>
      <td>VARCHAR(255)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>description</td>
      <td>TINYTEXT</td>
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>NULL</td>
   </tr>
</table>
</br>

<table style="width:100%">
   <caption style="font-size: 1.25em; font-weight: 500">Table: subject</caption>
   <tr>
      <th>Name</th>
      <th>Data Type</th>
      <th>Not Null</th>
      <th>PK</th>
      <th>FK</th>
      <th>Default</th>
   </tr>
   <tr>
      <td>subject_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>course_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>No</td>
      <td>Yes</td>
      <td></td>
   </tr>
   <tr>
      <td>name</td>
      <td>VARCHAR(256)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>unit</td>
      <td>TINYINT</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>description</td>
      <td>TINYTEXT</td>
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>NULL</td>
   </tr>
</table>
</br>

<table style="width:100%">
   <caption style="font-size: 1.25em; font-weight: 500">Table: address</caption>
   <tr>
      <th>Name</th>
      <th>Data Type</th>
      <th>Not Null</th>
      <th>PK</th>
      <th>FK</th>
      <th>Default</th>
   </tr>
   <tr>
      <td>address_id</td>
      <td>INT</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>purok</td>
      <td>VARCHAR(256)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>street</td>
      <td>VARCHAR(256)</td>
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>NULL</td>
   </tr>
   <tr>
      <td>barangay</td>
      <td>VARCHAR(256)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>city</td>
      <td>VARCHAR(256)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>zipcode</td>
      <td>VARCHAR(256)</td>
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>NULL</td>
   </tr>
   <tr>
      <td>province</td>
      <td>VARCHAR(256)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
   <tr>
      <td>region</td>
      <td>VARCHAR(256)</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td></td>
   </tr>
</table>
</br>

<!-- ## Normalization -->