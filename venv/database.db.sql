BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "kart" (
	"userId"	INTEGER,
	"productId"	INTEGER,
	FOREIGN KEY("userId") REFERENCES "users"("userId"),
	FOREIGN KEY("productId") REFERENCES "products"("productId")
);
CREATE TABLE IF NOT EXISTS "products" (
	"productId"	INTEGER,
	"name"	TEXT,
	"price"	REAL,
	"description"	TEXT,
	"image"	TEXT,
	"stock"	INTEGER,
	PRIMARY KEY("productId")
);
CREATE TABLE IF NOT EXISTS "users" (
	"userId"	INTEGER,
	"password"	TEXT,
	"email"	TEXT,
	PRIMARY KEY("userId")
);
COMMIT;
