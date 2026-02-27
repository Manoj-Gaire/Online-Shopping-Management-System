CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE,
    phone TEXT
);

CREATE TABLE Categorys (
    category_id INTEGER PRIMARY KEY,
    category_name TEXT NOT NULL
);

CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    price REAL NOT NULL,
    category_id INTEGER,
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

CREATE TABLE Order (
    order_id INTEGER PRIMARY KEY,
    order_date TEXT,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Order_Items (
    order_item_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

INSERT INTO Customers VALUES
(1,'Manoj Gaire','manoj@gmail.com','98003535001'),
(2,'Sita Lamichane','sita@gmail.com','9804000002'),
(3,'Hari Thapa','hari@gmail.com','98000005678'),
(4,'Ram Sharma','ram@gmail.com','98241555161'),
(5,'Virat Kohli','virat@gmail.com','98422455717'),
(6,'Subham Bidari','shubham@gmail.com','985678432'),
(7,'Hamza Khan','hamza@gmail.com','97864245579');

INSERT INTO Category VALUES
(1,'Electronics'),
(2,'Clothing'),
(3,'Home&Kitchen'),
(4,'Beauty & Personal Care'),
(5,'Books & Stationery');

INSERT INTO Product VALUES
(1,'Laptop',80000,1),
(2,'Tshirt',30000,2),
(3,'Cooker',1500,3),
(4,'FaceWash',4000,4),
(5,'Cricket Bat',7000,5),
(6,'Mobile Phones',35000,1),
(7,'Hoodie',6700,2);

INSERT INTO Orders VALUES
(1,'2026-03-01',1),
(2,'2026-03-02',2),
(3,'2026-03-03',3),
(4,'2026-02-29',4),
(5,'2026-03-04',5),
(6,'2026-03-15',6),
(7,'2026-03-21',7);

INSERT INTO Order_Items VALUES
(1,1,1,2),
(2,2,2,1),
(3,3,3,2),
(4,4,4,1),
(5,5,5,4);

