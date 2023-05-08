import random


def generate_school_name():
    """Returns a random name of a school."""
    with open("assets/schools.txt", "r", encoding="utf-8") as fhand:
        school_names = [
            line.title()
            for line in fhand.read().splitlines()
            if line != "" and line[0] != "#"
        ]
        return random.choice(school_names)


def generate_school_type():
    """Returns a random type of a school."""
    types = ("PRIVATE", "PUBLIC")
    return random.choice(types)


def generate_course_name():
    with open("assets/courses.txt", "r") as fhand:
        return random.choice(fhand.readlines()).replace("\n", "")


def generate_subject_name(course):
    initial = "".join([word[0] for word in course.split()]).upper()
    return f"{initial}{random.randrange(100,300)}"


def generate_subject_unit():
    return random.randint(1, 4)


if __name__ == "__main__":
    print(generate_school_name())
    print(generate_school_type())
