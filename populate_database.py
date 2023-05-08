"""This module inserts data into the `dost` MySQL database."""
from mysql.connector import connection
import data


def get_connection():
    """Returns a connection to the MySQL server."""
    config = {
        "host": "localhost",
        "user": "root",
        "password": "1234",
        "database": "dost",
    }
    return connection.MySQLConnection(**config)


def get_existing_names(cursor, table):
    cursor.execute(f"SELECT name FROM {table}")
    return [row[0] for row in cursor.fetchall()]


# def insert_subjects(cursor, course_id, course_name):
#     "Insert entries in table `subject`."
#     for subject, unit in data.generate_subjects(course_name):
#         query = (
#             "INSERT INTO subject (course_id, name, unit) VALUES (%s, %s, %s)"
#         )
#         cursor.execute(query, (course_id, subject, unit))


def insert_scholarship(cursor):
    query = (
        "INSERT INTO scholarship (type, status, award_year, end_year)"
        "VALUES (%s, %s, %s, %s)"
    )
    args = data.generate_scholarship()
    cursor.execute(query, args)
    return cursor.lastrowid


def insert_school(cursor):
    """Insert an entry in table `school`."""
    name = data.generate_school_name()

    if name in get_existing_names(cursor, "school"):
        cursor.execute("SELECT school_id FROM school WHERE name=%s", (name,))
        school_id = cursor.fetchone()[0]
    else:
        query = (
            "INSERT INTO school (name, phone_number, email) VALUES (%s, %s, %s)"
        )
        args = (name, data.generate_phone_number(), data.generate_email(name))
        cursor.execute(query, args)
        school_id = cursor.lastrowid

    return school_id


def insert_course(cursor):
    """Insert an entry in table `course`."""
    name = data.generate_course_name()

    if name in get_existing_names(cursor, "course"):
        cursor.execute("SELECT course_id FROM course WHERE name=%s", (name,))
        course_id = cursor.fetchone()[0]
    else:
        cursor.execute("INSERT INTO course (name) VALUES (%s)", (name,))
        course_id = cursor.lastrowid

    return course_id


def insert_address(cursor):
    query = (
        "INSERT INTO address (purok, barangay, city, zipcode, province, region)"
        "VALUES (%s, %s, %s, %s, %s, %s)"
    )
    args = data.generate_address()
    cursor.execute(query, args)
    return cursor.lastrowid


def insert_scholars(cursor, scholar_count=100):
    query = (
        "INSERT INTO scholar (scholarship_id, school_id, course_id,"
        "home_address_id, first_name, last_name, sex_at_birth, email,"
        "phone_number, year_level)"
        "VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
    )
    for _ in range(scholar_count):
        foreign_keys = (
            insert_scholarship(cursor),
            insert_school(cursor),
            insert_course(cursor),
            insert_address(cursor),
        )
        first_name = data.generate_first_name()
        last_name = data.generate_last_name()
        args = (
            *foreign_keys,
            first_name,
            last_name,
            data.generate_sex_at_birth(),
            data.generate_email(" ".join((first_name, last_name))),
            data.generate_phone_number(),
            data.generate_year_level(),
        )
        cursor.execute(query, args)


if __name__ == "__main__":
    # Connect to a MySQL server.
    connection = get_connection()
    # A cursor can execute SQL statements.
    cursor = connection.cursor(buffered=True)

    insert_scholars(cursor)

    # Ensure data is committed to the database
    connection.commit()

    # Close the cursor and disconnect from the MySQL server.
    cursor.close()
    connection.close()
