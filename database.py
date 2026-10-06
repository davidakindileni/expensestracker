def create_database():
    import sqlite3
    # Connect to the database
    connection = sqlite3.connect("data/expense_tracker.db")
    # Read the SQL schema file
    with open("sql/schema.sql", "r") as file:
        schema = file.read()
    # Execute all SQL commands in schema.sql
    connection.executescript(schema)
    # Save the changes
    connection.commit()

    # verify tables
    cursor = connection.cursor()
    cursor.execute("""
        SELECT name
        FROM sqlite_master
        WHERE type='table'
        ORDER BY name;
    """)
    tables = cursor.fetchall()
    print("Tables in database:")
    for table in tables:
        print(table[0])

    # Close the database
    connection.close()
    print("Database created successfully")

create_database()
