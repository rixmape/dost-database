import datetime
import random
import pandas as pd


def generate_first_name():
    num_words = random.randint(1, 2)
    with open("assets/firstnames.txt", "r") as fhand:
        lines = random.sample(fhand.readlines(), num_words)
        first_name = " ".join([line.replace("\n", "") for line in lines])
        return first_name


def generate_last_name():
    with open("assets/lastnames.txt", "r") as fhand:
        return random.choice(fhand.readlines()).replace("\n", "").title()


def generate_sex():
    sexes = ("MALE", "FEMALE")
    return random.choice(sexes)


def generate_address():
    """Returns a tuple containing the following address information in order:
    purok, barangay, municipality/city, zipcode, province, and region.
    """
    df = pd.read_csv("assets/geodata.csv")
    df.iloc[:, -4:] = df.iloc[:, -4:].astype(int)

    # Choose a random barangay
    choice = df[df["level"] == "Bgy"].sample().iloc[0]
    barangay = choice["name"]

    # Identify the locality (i.e., municipality or city)
    locality = df[
        (df["level"].isin(("Mun", "City")))
        & (df["province_code"] == choice["province_code"])
        & (df["municipal_city_code"] == choice["municipal_city_code"])
    ].iloc[0]["name"]

    # Identify the province
    province = df[
        (df["level"] == "Prov")
        & (df["province_code"] == choice["province_code"])
    ].iloc[0]["name"]

    # Identify the region
    region = df[
        (df["level"] == "Reg") & (df["region_code"] == choice["region_code"])
    ].iloc[0]["name"]

    # Generate a random purok and zipcode
    purok = f"Purok {random.randrange(15)}"
    zipcode = f"{random.randrange(10000)}".zfill(4)

    return (purok, barangay, locality, zipcode, province, region)


def generate_phone_number():
    """Returns a string of 11-digit phone number."""
    # Generate a 9-digit random number
    digits = [random.randint(0, 9) for i in range(8)]
    # Add "0" and "9" to the beginning of the list
    digits = [0, 9] + digits
    # Calculate the check digit using Luhn's algorithm
    check_digit = (
        10
        - sum(
            (3 if i % 2 == 0 else 1) * digit for i, digit in enumerate(digits)
        )
    ) % 10
    # Append the check digit to the end of the list
    digits.append(check_digit)
    # Convert the list of digits to a string
    phone_number = ''.join(map(str, digits))
    # Return the phone number
    return phone_number


def generate_email(input_str):
    """Returns an email address."""
    # Get the initial of first four words in the input string
    words = input_str.split()
    letters = [word[0] for word in words[:4]]
    # Combine the letters into a single string
    username = ''.join(letters)
    # Generate a 4-digit random number
    number = str(random.randint(1000, 9999))
    # Combine the username and number to create the email address
    email = f"{username}{number}@gmail.com"
    # Return the email address
    return email.lower()


def generate_year_level():
    return random.randint(1, 4)


def generate_school_name():
    with open("assets/schools.txt", "r", encoding="utf-8") as fhand:
        school_names = [
            school_name.replace("\n", "").title()
            for school_name in fhand.readlines()
            if school_name[0] != "#" and school_name != "\n"
        ]
        return random.choice(school_names)


def generate_course_name():
    with open("assets/courses.txt", "r") as fhand:
        return random.choice(fhand.readlines()).replace("\n", "")


def generate_subjects(course):
    """Returns list of tuples containing names of subjects for a particular course and their number of units."""
    subjects = []
    initial = "".join([word[0] for word in course.split()]).upper()
    num_subjects = random.randrange(10, 21)
    for _ in range(num_subjects):
        name = f"{initial}{random.randrange(100,300)}"
        unit = random.randrange(1, 4)
        subjects.append((name, unit))
    return subjects


def generate_family_annual_income():
    return random.randint(10000, 500000)


def generate_datetime(start_year=2019, end_year=2023):
    """Returns a datetime whose format is YYYY-MM-DD HH:MI:SS."""
    start_date = datetime.date(start_year, 1, 1)
    end_date = datetime.date(end_year, 12, 31)

    delta = end_date - start_date
    random_days = random.randint(0, delta.days)

    random_time = datetime.time(
        random.randint(0, 23), random.randint(0, 59), random.randint(0, 59)
    )

    random_datetime = datetime.datetime.combine(
        start_date + datetime.timedelta(days=random_days), random_time
    )

    # Format the datetime as YYYY-MM-DD HH:MI:SS
    return random_datetime.strftime('%Y-%m-%d %H:%M:%S')


if __name__ == "__main__":
    name = f"{generate_first_name()} {generate_last_name()}"
    print(
        f"Name: {name}",
        f"Address: {', '.join(generate_address())}",
        f"Phone number: {generate_phone_number()}",
        f"Email: {generate_email(name)}",
        f"School: {generate_school_name()}",
        f"Application submitted on: {generate_datetime()}",
        sep="\n",
    )
