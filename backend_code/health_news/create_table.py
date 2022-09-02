import sqlite3
from pathlib import Path

def sql_database():
    conn = sqlite3.connect(Path(__file__).resolve().parent /'backend_code/health_news/news.db') #Opens Connection to SQLite database file.
    conn.execute('''CREATE TABLE Client_db
                (TITLE          BLOB NOT NULL,
                LINK            BLOB NOT NULL,
                SUMMARY         BLOB NOT NULL
                );''') #Creates the table
    conn.commit() # Commits the entries to the database
    conn.close()
sql_database()