import random


def generate_type():
    return random.choice(("RA2067", "RA7687"))


def generate_status():
    return random.choice(("PENDING", "APPROVED", "DENIED"))
