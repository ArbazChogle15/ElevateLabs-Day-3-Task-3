BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "customers" (
	"customer_id"	INTEGER,
	"name"	TEXT NOT NULL,
	"email"	TEXT UNIQUE,
	"city"	TEXT,
	"state"	TEXT,
	PRIMARY KEY("customer_id")
);
CREATE TABLE IF NOT EXISTS "order_items" (
	"item_id"	INTEGER,
	"order_id"	INTEGER,
	"product_id"	INTEGER,
	"quantity"	INTEGER,
	PRIMARY KEY("item_id"),
	FOREIGN KEY("order_id") REFERENCES "orders"("order_id"),
	FOREIGN KEY("product_id") REFERENCES "products"("product_id")
);
CREATE TABLE IF NOT EXISTS "orders" (
	"order_id"	INTEGER,
	"customer_id"	INTEGER,
	"order_date"	TEXT,
	PRIMARY KEY("order_id"),
	FOREIGN KEY("customer_id") REFERENCES "customers"("customer_id")
);
CREATE TABLE IF NOT EXISTS "products" (
	"product_id"	INTEGER,
	"product_name"	TEXT NOT NULL,
	"category"	TEXT,
	"price"	REAL NOT NULL,
	PRIMARY KEY("product_id")
);
INSERT INTO "customers" VALUES (1,'Aisha Khan','aisha@mail.com','Pune','MH');
INSERT INTO "customers" VALUES (2,'Rohan Patil','rohan@mail.com','Mumbai','MH');
INSERT INTO "customers" VALUES (3,'Sneha Joshi','sneha@mail.com','Nagpur','MH');
INSERT INTO "customers" VALUES (4,'Imran Shaikh','imran@mail.com','Delhi','DL');
INSERT INTO "customers" VALUES (5,'Sarah Ali','sarah@mail.com','Bangalore','KA');
INSERT INTO "order_items" VALUES (1,101,1,1);
INSERT INTO "order_items" VALUES (2,101,3,2);
INSERT INTO "order_items" VALUES (3,102,2,1);
INSERT INTO "order_items" VALUES (4,103,5,3);
INSERT INTO "order_items" VALUES (5,104,4,1);
INSERT INTO "order_items" VALUES (6,105,1,1);
INSERT INTO "orders" VALUES (101,1,'2025-01-02');
INSERT INTO "orders" VALUES (102,2,'2025-01-05');
INSERT INTO "orders" VALUES (103,1,'2025-01-10');
INSERT INTO "orders" VALUES (104,3,'2025-01-12');
INSERT INTO "orders" VALUES (105,4,'2025-01-15');
INSERT INTO "products" VALUES (1,'Laptop','Electronics',55000.0);
INSERT INTO "products" VALUES (2,'Smartphone','Electronics',20000.0);
INSERT INTO "products" VALUES (3,'Watch','Accessories',2500.0);
INSERT INTO "products" VALUES (4,'Shoes','Fashion',3000.0);
INSERT INTO "products" VALUES (5,'Headphones','Electronics',1500.0);
CREATE VIEW revenue_summary AS
SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_quantity,
    SUM(oi.quantity * p.price) AS total_revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id;
CREATE INDEX IF NOT EXISTS "idx_order_customer" ON "orders" (
	"customer_id"
);
CREATE INDEX IF NOT EXISTS "idx_order_items_prod" ON "order_items" (
	"product_id"
);
COMMIT;
