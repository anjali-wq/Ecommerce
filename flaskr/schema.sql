DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS kart;
DROP TABLE IF EXISTS products;

CREATE TABLE users(
user_id INTEGER PRIMARY KEY AUTOINCREMENT,
		password TEXT,
		email TEXT UNIQUE NOT NULL,
		username TEXT UNIQUE NOT NULL
		);

CREATE TABLE post (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES user (id)
);

CREATE TABLE kart
		(user_id INTEGER,
		product_id INTEGER,
		FOREIGN KEY(user_id) REFERENCES user(user_id),
		FOREIGN KEY(product_id) REFERENCES product(product_id)
		);

CREATE TABLE products
(id INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL,
name TEXT,
price REAL,
description TEXT,
image TEXT,
stock INTEGER
);

INSERT INTO products (name, price, description, image, stock)
VALUES ('Tshirt', 1000, 'T-Shirt', 'static/images/tshirt.jpg', 1);

INSERT INTO products (name, price, description, image, stock)
VALUES ('Pants', 2000, 'Pant', 'static/images/car.jpeg', 2);

INSERT INTO products (name, price, description, image, stock)
VALUES ('Sweater', 500, 'Sweater', 'static/images/car2.jpg', 44);

commit;
