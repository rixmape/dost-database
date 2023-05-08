import random
import info
import scholarship
import application
import college


def insert_dost_admins(cursor, num_admins=10):
    for _ in range(num_admins):
        first_name = info.generate_first_name()
        last_name = info.generate_last_name()
        cursor.execute(
            "INSERT INTO dost_admin (first_name, last_name, email, phone)"
            "VALUES (%s, %s, %s, %s)",
            (
                first_name,
                last_name,
                info.generate_email(" ".join((first_name, last_name))),
                info.generate_phone_number(),
            ),
        )


def insert_scholarship(cursor):
    cursor.execute(
        "INSERT INTO scholarship (type, status, award_year)"
        "VALUES (%s, %s, %s)",
        (
            scholarship.generate_type(),
            scholarship.generate_status(),
            scholarship.generate_year(),
        ),
    )
    return cursor.lastrowid


def insert_school(cursor):
    """Insert an entry in table `school`."""
    name = college.generate_school_name()

    cursor.execute("SELECT name FROM school")
    names = [record[0] for record in cursor.fetchall()]

    if name in names:
        cursor.execute("SELECT school_id FROM school WHERE name=%s", (name,))
        return cursor.fetchone()[0]
    else:
        cursor.execute(
            "INSERT INTO school (name, phone, email, type)"
            "VALUES (%s, %s, %s, %s)",
            (
                name,
                info.generate_phone_number(),
                info.generate_email(name),
                college.generate_school_type(),
            ),
        )
        return cursor.lastrowid


def insert_course(cursor):
    """Insert an entry in table `course`."""
    name = college.generate_course_name()

    cursor.execute("SELECT name FROM course")
    names = [record[0] for record in cursor.fetchall()]

    if name in names:
        cursor.execute("SELECT course_id FROM course WHERE name=%s", (name,))
        course_id = cursor.fetchone()[0]
    else:
        cursor.execute("INSERT INTO course (name) VALUES (%s)", (name,))
        course_id = cursor.lastrowid

    return course_id


def insert_address(cursor):
    cursor.execute(
        "INSERT INTO address (purok, barangay, city, zipcode, province, region)"
        "VALUES (%s, %s, %s, %s, %s, %s)",
        info.generate_address(),
    )
    return cursor.lastrowid


def insert_scholars(cursor, num_scholars=100):
    for _ in range(num_scholars):
        foreign_keys = (
            insert_scholarship(cursor),
            insert_school(cursor),
            insert_course(cursor),
            insert_address(cursor),
        )
        first_name = info.generate_first_name()
        last_name = info.generate_last_name()
        cursor.execute(
            "INSERT INTO scholar (scholarship_id, school_id, course_id,"
            "home_address_id, first_name, last_name, sex, email, phone,"
            "year_level) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)",
            (
                *foreign_keys,
                first_name,
                last_name,
                info.generate_sex(),
                info.generate_email(" ".join((first_name, last_name))),
                info.generate_phone_number(),
                info.generate_year_level(),
            ),
        )


def insert_subjects(cursor):
    """Inserts entries in table `subject`."""
    cursor.execute("SELECT course_id, name FROM course")

    for course_id, course_name in cursor.fetchall():
        num_subjects = random.randint(0, 20)
        for _ in range(num_subjects):
            subject_name = college.generate_subject_name(course_name)
            subject_unit = college.generate_subject_unit()
            cursor.execute(
                "INSERT INTO subject (course_id, name, unit)"
                "VALUES (%s, %s, %s)",
                (course_id, subject_name, subject_unit),
            )


def insert_registrars(cursor):
    """Creates a registrar for every existing school."""
    cursor.execute("SELECT school_id, name FROM school")
    school_ids = [record[0] for record in cursor.fetchall()]

    for school_id in school_ids:
        first_name = info.generate_first_name()
        last_name = info.generate_last_name()
        email = info.generate_email(" ".join((first_name, last_name)))
        phone_number = info.generate_phone_number()
        cursor.execute(
            "INSERT INTO registrar (school_id, first_name, last_name, email,"
            "phone) VALUES (%s, %s, %s, %s, %s)",
            (school_id, first_name, last_name, email, phone_number),
        )


def insert_application(cursor):
    cursor.execute("SELECT admin_id FROM dost_admin")
    admin_ids = [record[0] for record in cursor.fetchall()]

    cursor.execute(
        "INSERT INTO application (admin_id, submitted, type, status)"
        "VALUES (%s, %s, %s, %s)",
        (
            random.choice(admin_ids),
            info.generate_datetime(),
            application.generate_type(),
            application.generate_status(),
        ),
    )

    return cursor.lastrowid


def insert_applicants(cursor, num_applicants=100):
    for _ in range(num_applicants):
        foreign_keys = (
            insert_application(cursor),
            insert_address(cursor),
        )
        first_name = info.generate_first_name()
        last_name = info.generate_last_name()
        cursor.execute(
            "INSERT INTO applicant (application_id, home_address_id,"
            "first_name, last_name, sex, email, phone, family_annual_income)"
            "VALUES (%s, %s, %s, %s, %s, %s, %s, %s)",
            (
                *foreign_keys,
                first_name,
                last_name,
                info.generate_sex(),
                info.generate_email(" ".join((first_name, last_name))),
                info.generate_phone_number(),
                info.generate_family_annual_income(),
            ),
        )


def insert_certificate_of_grades(cursor):
    cursor.execute("SELECT scholar_id, school_id, scholarship_id FROM scholar")

    for scholar_id, school_id, scholarship_id in cursor.fetchall():
        cursor.execute(
            "SELECT registrar_id FROM registrar WHERE school_id=%s",
            (school_id,),
        )
        registrar_id = cursor.fetchone()[0]

        cursor.execute("SELECT admin_id FROM dost_admin")
        admin_id = random.choice([record[0] for record in cursor.fetchall()])

        cursor.execute(
            "SELECT award_year FROM scholarship WHERE scholarship_id=%s",
            (scholarship_id,),
        )
        year = cursor.fetchone()[0]

        for _ in range(random.randint(0, 4)):
            for semester in range(1, 3):
                cursor.execute(
                    "INSERT INTO certificate_of_grade (scholar_id, registrar_id,"
                    "admin_id, year, semester, submitted)"
                    "VALUES (%s, %s, %s, %s, %s, %s)",
                    (
                        scholar_id,
                        registrar_id,
                        admin_id,
                        year,
                        semester,
                        info.generate_datetime(start_year=year, end_year=year),
                    ),
                )
            year += 1
