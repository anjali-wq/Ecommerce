DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;

-- example data
CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE post (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES user (id)
);


CREATE TABLE products(
	productId INTEGER PRIMARY KEY,
	name TEXT,
	price REAL,
	description TEXT,
	image TEXT,
	stock INT
)

CREATE TABLE Cart(
	userId INTEGER,
	productId INTEGER,
	FOREIGN KEY(userId) REFERENCES users(userId),
	FOREIGN KEY(productId) REFERENCES products(productId)
)

