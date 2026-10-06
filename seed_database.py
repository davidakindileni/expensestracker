def seed_database():
    import sqlite3
    # Connect to the database
    connection = sqlite3.connect("data/expense_tracker.db")
    with open("sql/seed.sql", "r") as file:
        seed_data = file.read()

    connection.executescript(seed_data)
    connection.commit()
    print("Seed data added successfully")

seed_database()