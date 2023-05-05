"""This module inserts data into the `dost` MySQL database."""
from mysql.connector import connection
from course import get_courses, get_subjects


def get_connection():
    """Returns a connection to the MySQL server."""
    config = {
        "host": "localhost",
        "user": "root",
        "password": "1234",
        "database": "dost",
    }
    return connection.MySQLConnection(**config)


def insert_courses(cursor):
    for id, course_name in get_courses():
        query = "INSERT INTO course (course_id, name) VALUES (%s, %s)"
        cursor.execute(query, (id, course_name))
        insert_subjects(cursor, cursor.lastrowid, course_name)
    return cursor.lastrowid


def insert_subjects(cursor, course_id, course_name):
    for subject, unit in get_subjects(course_name):
        query = (
            "INSERT INTO subject (course_id, name, unit)"
            "VALUES (%s, %s, %s)"
        )
        cursor.execute(query, (course_id, subject, unit))


if __name__ == "__main__":
    connection = get_connection()  # Connect to a server.
    cursor = connection.cursor()  # A cursor can execute SQL statements.

    last_course_id = insert_courses(cursor)

    # Ensure data is committed to the database
    connection.commit()

    # Close the cursor and disconnect from the MySQL server.
    cursor.close()
    connection.close()
