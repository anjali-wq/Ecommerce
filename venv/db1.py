import sqlite3

conn = sqlite3.connect('database.db')

conn.execute('''CREATE TABLE users 
		(userId INTEGER PRIMARY KEY, 
		password TEXT,
		email TEXT
		)''')

conn.execute('''CREATE TABLE products
		(productId INTEGER PRIMARY KEY,
		name TEXT,
		price REAL,
		description TEXT,
		image TEXT,
		stock INTEGER
		)''')

conn.execute('''CREATE TABLE kart
		(userId INTEGER,
		productId INTEGER,
		FOREIGN KEY(userId) REFERENCES users(userId),
		FOREIGN KEY(productId) REFERENCES products(productId)
		)''')





conn.close()
