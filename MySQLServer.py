import mysql.connector
from mysql.connector import connect, Error

try:
    mydb  = mysql.connector.connect(
    host = "localhost",
    user = "root",
    passwd = "12345",
    )
    if mydb.is_connected():
        a = mydb.cursor()

        a.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as err:
    print(f"Error: Could not connect to MySQL server.\n{err}")

finally:
    # Close cursor and connection if they were opened
    if 'cursor' in locals() and a:
        a.close()
    if 'connection' in locals() and mydb.is_connected():
        mydb.close()

