from pathlib import Path
from mysql.connector import connection


def get_connection():
    """Returns a connection to the MySQL server."""
    config = {
        "host": "localhost",
        "user": "root",
        "password": "1234",
        "database": "dost",
    }
    return connection.MySQLConnection(**config)


def get_courses():
    """Returns names of undergraduate courses."""
    with open(Path("assets/courses.txt"), "r") as fhand:
        return fhand.read().splitlines()


if __name__ == "__main__":
    cnx = get_connection()  # Connect to a server.
    cursor = cnx.cursor()  # A cursor can execute SQL statements.

    cursor.execute("DELETE FROM course")  # Delete all records in the table
    cursor.execute("ALTER TABLE course AUTO_INCREMENT = 1")  # Reset row id

    # Define a query
    add_course = "INSERT INTO course (name) VALUES (%s)"

    # Insert each course into the relation
    for course in get_courses():
        cursor.execute(add_course, (course,))

    # Ensure data is committed to the database
    cnx.commit()

    # Close the cursor and disconnect from the MySQL server.
    cursor.close()
    cnx.close()
