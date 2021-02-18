# Converting stream.csv and chat.csv to sql database
import sqlite3
import pandas as pd

conn = sqlite3.connect('./twitch.db')
cur = conn.cursor()
stream = pd.read_csv('./stream.csv')
stream.to_sql('stream', conn, if_exists='append', index=False)
chat = pd.read_csv('./chat.csv')
chat.to_sql('chat', conn, if_exists='append', index=False)
conn.close()
