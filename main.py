"""This module inserts data into the `dost` MySQL database."""
from mysql.connector import connection
import database


if __name__ == "__main__":
    # Connect to a MySQL server.
    cnx = connection.MySQLConnection(
        host="localhost",
        user="root",
        password="1234",
        database="dost",
    )

    # Create a cursor, which can execute SQL statements.
    cursor = cnx.cursor(buffered=True)

    # Insert records into the database
    database.insert_dost_admins(cursor, 20)
    database.insert_scholars(cursor, 10000)
    database.insert_subjects(cursor, 30)
    database.insert_registrars(cursor)
    database.insert_applicants(cursor, 10000)
    database.insert_certificate_of_grades(cursor)

    # Ensure data is committed to the database.
    cnx.commit()

    # Close the cursor and disconnect from the MySQL server.
    cursor.close()
    cnx.close()
