import random

def generate_type():
    return random.choice(("RA2067", "RA7687"))


def generate_status():
    return random.choice(("ACTIVE", "ON_LEAVE", "TERMINATED"))


def generate_year():
    return random.randint(2019, 2023)