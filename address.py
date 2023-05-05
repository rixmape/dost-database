import random
import pandas as pd


def sample_address():
    """Returns a tuple containing address information."""
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


if __name__ == "__main__":
    for _ in range(10):
        address = sample_address()
        print(*address, sep=", ")
