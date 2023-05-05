import random


def get_courses():
    """Returns a list of tuples containing course id and its name."""
    with open("assets/courses.txt", "r") as fhand:
        courses = fhand.read().splitlines()
        return [(id + 1, name) for id, name in enumerate(courses)]


def get_subjects(course):
    """Returns list of tuples containing names of subjects for a particular course and their number of units."""
    subjects = []
    initial = "".join([word[0] for word in course.split()]).upper()
    subject_count = random.randrange(10, 21)
    for _ in range(subject_count):
        name = f"{initial}{random.randrange(100,300)}"
        unit = random.randrange(1, 4)
        subjects.append((name, unit))
    return subjects
