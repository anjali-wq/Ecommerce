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

-- example data

-- real data below'

INSERT INTO BILLING  (InvoiceID,InvoiceDate,InvoiceTotal,PaymentType,EmployeeID,OrderDetailID,DiscountID)
values ('INV001','2018-01-25',500,'CASH','EMP003','OD001','DIS01')

INSERT INTO BILLING  (InvoiceID,InvoiceDate,InvoiceTotal,PaymentType,EmployeeID,OrderDetailID,DiscountID)
values ('INV002','2018-03-25',800.52,'CARD','EMP004','OD002','DIS02')

INSERT INTO BILLING  (InvoiceID,InvoiceDate,InvoiceTotal,PaymentType,EmployeeID,OrderDetailID,DiscountID)
values ('INV003','2018-09-12',50.36,'CARD','EMP003','OD003',null)

INSERT INTO BILLING  (InvoiceID,InvoiceDate,InvoiceTotal,PaymentType,EmployeeID,OrderDetailID,DiscountID)
values ('INV004','2018-06-14',150.61,'CARD','EMP003','OD004','DIS01')

INSERT INTO BILLING  (InvoiceID,InvoiceDate,InvoiceTotal,PaymentType,EmployeeID,OrderDetailID,DiscountID)
values ('INV005','2018-04-06',167,'CASH','EMP004','OD002','DIS02')

INSERT INTO ORDER_DETAILS (OrderDetailID,OrderID,ProductID,Quantity)
VALUES ('OD001',001,'PROD001',2)

INSERT INTO ORDER_DETAILS (OrderDetailID,OrderID,ProductID,Quantity)
VALUES ('OD002',001,'PROD002',3)

INSERT INTO ORDER_DETAILS (OrderDetailID,OrderID,ProductID,Quantity)
VALUES ('OD003',001,'PROD006',2)

INSERT INTO ORDER_DETAILS (OrderDetailID,OrderID,ProductID,Quantity)
VALUES ('OD004',002,'PROD002',1)

INSERT INTO ORDER_DETAILS (OrderDetailID,OrderID,ProductID,Quantity)
VALUES ('OD005',002,'PROD008',2)

INSERT INTO ORDER_DETAILS (OrderDetailID,OrderID,ProductID,Quantity)
VALUES ('OD006',003,'PROD009',1)

INSERT INTO ORDER_DETAILS (OrderDetailID,OrderID,ProductID,Quantity)
VALUES ('OD007',003,'PROD010',1)

INSERT INTO ORDER_DETAILS (OrderDetailID,OrderID,ProductID,Quantity)
VALUES ('OD008',004,'PROD005',2)

INSERT INTO ORDER_DETAILS (OrderDetailID,OrderID,ProductID,Quantity)
VALUES ('OD009',005,'PROD007',3)

INSERT INTO ORDER_DETAILS (OrderDetailID,OrderID,ProductID,Quantity)
VALUES ('OD008',006,'PROD005',2)

INSERT INTO ORDER_DETAILS (OrderDetailID,OrderID,ProductID,Quantity)
VALUES ('OD008',006,'PROD007',3)

INSERT INTO ORDER_DETAILS (OrderDetailID,OrderID,ProductID,Quantity)
VALUES ('OD009',007,'PROD003',2)

INSERT INTO ORDER_DETAILS (OrderDetailID,OrderID,ProductID,Quantity)
VALUES ('OD010',007,'PROD004',1)

INSERT INTO ORDER_DETAILS (OrderDetailID,OrderID,ProductID,Quantity)
VALUES ('OD011',008,'PROD009',2)

INSERT INTO ORDER_DETAILS (OrderDetailID,OrderID,ProductID,Quantity)
VALUES ('OD012',008,'PROD003',1)

INSERT INTO ORDER_DETAILS (OrderDetailID,OrderID,ProductID,Quantity)
VALUES ('OD013',009,'PROD002',3)

INSERT INTO ORDER_DETAILS (OrderDetailID,OrderID,ProductID,Quantity)
VALUES ('OD014',009,'PROD007',2)

insert into CUSTOMER_ORDER (OrderID,CustomerID)
values (1,'CT001')
insert into CUSTOMER_ORDER (OrderID,CustomerID)
values (2,'CT002')
insert into CUSTOMER_ORDER (OrderID,CustomerID)
values (3,'CT003')
insert into CUSTOMER_ORDER (OrderID,CustomerID)
values (4,'CT005')
insert into CUSTOMER_ORDER (OrderID,CustomerID)
values (5,'CT006')

INSERT INTO REVIEW (ReviewID,ReviewDescription,CustomerID)
values('REV001','<ReviewDescription><Review>Wide range of products</Review><Rating>4</Rating><Date>2018-01-25</Date></ReviewDescription>','CT001')
INSERT INTO REVIEW (ReviewID,ReviewDescription,CustomerID)
values('REV002','<ReviewDescription><Review>Very bad slow service</Review><Rating>1</Rating><Date>2018-03-25</Date></ReviewDescription>','CT002')
INSERT INTO REVIEW (ReviewID,ReviewDescription,CustomerID)
values('REV003','<ReviewDescription><Review>Checkout was fast</Review><Rating>5</Rating><Date>2018-04-25</Date></ReviewDescription>','CT003')
INSERT INTO REVIEW (ReviewID,ReviewDescription,CustomerID)
values('REV004','<ReviewDescription><Review>Limited number of brands available</Review><Rating>3</Rating><Date>2018-05-25</Date></ReviewDescription>','CT004')

INSERT INTO PRODUCT (ProductID,ProductType,Brand,Price,WarehouseID)
VALUES ('PROD001','Grocery','Rice','250','WARE1')
INSERT INTO PRODUCT (ProductID,ProductType,Brand,Price,WarehouseID)
VALUES ('PROD002','Grocery','Wheat','150','WARE2')
INSERT INTO PRODUCT (ProductID,ProductType,Brand,Price,WarehouseID)
VALUES ('PROD003','Beverage','Pepsi','50','WARE1')
INSERT INTO PRODUCT (ProductID,ProductType,Brand,Price,WarehouseID)
VALUES ('PROD004','Beverage','Fanta','45','WARE2')
INSERT INTO PRODUCT (ProductID,ProductType,Brand,Price,WarehouseID)
VALUES ('PROD005','Soap','Hamam','25','WARE1')
INSERT INTO PRODUCT (ProductID,ProductType,Brand,Price,WarehouseID)
VALUES ('PROD006','Soap','Lux','30','WARE2')
INSERT INTO PRODUCT (ProductID,ProductType,Brand,Price,WarehouseID)
VALUES ('PROD007','Kitchen tools','Knife','50','WARE1')
INSERT INTO PRODUCT (ProductID,ProductType,Brand,Price,WarehouseID)
VALUES ('PROD008','Kitchen tools','Frying Pan','80','WARE2')
INSERT INTO PRODUCT (ProductID,ProductType,Brand,Price,WarehouseID)
VALUES ('PROD009','Clothing','Adidas-Pant','450','WARE1')
INSERT INTO PRODUCT (ProductID,ProductType,Brand,Price,WarehouseID)
VALUES ('PROD010','Clothing','Adidas-T-shirt','350','WARE2')

INSERT INTO DISCOUNT (DiscountID,DiscountName,DiscountDescription)
values ('DIS01','CASH5','5% OFF on Cash Payment')
INSERT INTO DISCOUNT (DiscountID,DiscountName,DiscountDescription)
values ('DIS02','CARD10','10% OFF on Card Payment')

INSERT INTO CUSTOMER(CustomerID,FirstName,LastName,Address,Email,CustomerType)
VALUES ('CT001','Rakesh','Sharma','Dames Street','rakesh.sharma@gmail.com','Prime')

INSERT INTO CUSTOMER(CustomerID,FirstName,LastName,Address,Email,CustomerType)
VALUES ('CT002','Mukesh','Verma','College Street','mukesh.verma@gmail.com','Prime')

INSERT INTO CUSTOMER(CustomerID,FirstName,LastName,Address,Email,CustomerType)
VALUES ('CT003','Kajal','Agarwal','Kings Street','kajal.agarwal@gmail.com','New')

INSERT INTO CUSTOMER(CustomerID,FirstName,LastName,Address,Email,CustomerType)
VALUES ('CT004','Vidhi','Jain','Grand Canal','vidhi.jain@gmail.com','New')

INSERT INTO CUSTOMER(CustomerID,FirstName,LastName,Address,Email,CustomerType)
VALUES ('CT005','Viraj','Yadav','Aston Quay','viraj.yadav@gmail.com','New')

INSERT INTO CUSTOMER(CustomerID,FirstName,LastName,Address,Email,CustomerType)
VALUES ('CT006','Vaibhav','Mehta','Docks','vaibhav.mehta@gmail.com','Prime')

INSERT INTO CUSTOMER(CustomerID,FirstName,LastName,Address,Email,CustomerType)
VALUES ('CT007','Rahul','Shah','College Street','rahul.shah@gmail.com','New')

INSERT INTO CUSTOMER(CustomerID,FirstName,LastName,Address,Email,CustomerType)
VALUES ('CT008','Preeti','Kohli','Queens Quay','preeti.kohle@gmail.com','Prime')

INSERT INTO WAREHOUSE (WarehouseID,WarehouseDetails)
values ('WARE1','<WarehouseDetails>
		<ProductID>PROD001</ProductID><ProductType>Rice</ProductType><Brand>Basmati</Brand><SectionName>Groceries</SectionName><RackNo>1</RackNo><Quantity>100</Quantity>
		<ProductID>PROD002</ProductID><ProductType>Wheat</ProductType><Brand>Tata</Brand><SectionName>Groceries</SectionName><RackNo>2</RackNo><Quantity>95</Quantity>
		<ProductID>PROD003</ProductID><ProductType>Soap</ProductType><Brand>Lux</Brand><SectionName>Soaps</SectionName><RackNo>3</RackNo><Quantity>90</Quantity>
		<ProductID>PROD004</ProductID><ProductType>Soap</ProductType><Brand>Hamam</Brand><SectionName>Soaps</SectionName><RackNo>4</RackNo><Quantity>93</Quantity>
		<ProductID>PROD005</ProductID><ProductType>Beverage</ProductType><Brand>Pepsi</Brand><SectionName>Beverages</SectionName><RackNo>5</RackNo><Quantity>86</Quantity>
		<ProductID>PROD006</ProductID><ProductType>Beverage</ProductType><Brand>Fanta</Brand><SectionName>Beverages</SectionName><RackNo>6</RackNo><Quantity>80</Quantity>
		<ProductID>PROD007</ProductID><ProductType>Kitchen Tool</ProductType><Brand>King Knife</Brand><SectionName>Kitchen Tools</SectionName><RackNo>7</RackNo><Quantity>75</Quantity>
		<ProductID>PROD008</ProductID><ProductType>Kitchen Tool</ProductType><Brand>Prestige Frying Pan</Brand><SectionName>Kitchen Tools</SectionName><RackNo>8</RackNo><Quantity>70</Quantity>
		<ProductID>PROD009</ProductID><ProductType>Cloth</ProductType><Brand>Addidas Pant</Brand><SectionName>Kitchen Tools</SectionName><RackNo>9</RackNo><Quantity>63</Quantity>
		<ProductID>PROD010</ProductID><ProductType>Cloth</ProductType><Brand>Addidas T Shirt</Brand><SectionName>Clothes</SectionName><RackNo>10</RackNo><Quantity>60</Quantity></WarehouseDetails>')

INSERT INTO WAREHOUSE (WarehouseID,WarehouseDetails)
values ('WARE2','<WarehouseDetails>
		<ProductID>PROD001</ProductID><ProductType>Rice</ProductType><Brand>Basmati</Brand><SectionName>Groceries</SectionName><RackNo>1</RackNo><Quantity>100</Quantity>
		<ProductID>PROD002</ProductID><ProductType>Wheat</ProductType><Brand>Tata</Brand><SectionName>Groceries</SectionName><RackNo>2</RackNo><Quantity>95</Quantity>
		<ProductID>PROD003</ProductID><ProductType>Soap</ProductType><Brand>Lux</Brand><SectionName>Soaps</SectionName><RackNo>3</RackNo><Quantity>90</Quantity>
		<ProductID>PROD004</ProductID><ProductType>Soap</ProductType><Brand>Hamam</Brand><SectionName>Soaps</SectionName><RackNo>4</RackNo><Quantity>93</Quantity>
		<ProductID>PROD005</ProductID><ProductType>Beverage</ProductType><Brand>Pepsi</Brand><SectionName>Beverages</SectionName><RackNo>5</RackNo><Quantity>86</Quantity>
		<ProductID>PROD006</ProductID><ProductType>Beverage</ProductType><Brand>Fanta</Brand><SectionName>Beverages</SectionName><RackNo>6</RackNo><Quantity>80</Quantity>
		<ProductID>PROD007</ProductID><ProductType>Kitchen Tool</ProductType><Brand>King Knife</Brand><SectionName>Kitchen Tools</SectionName><RackNo>7</RackNo><Quantity>75</Quantity>
		<ProductID>PROD008</ProductID><ProductType>Kitchen Tool</ProductType><Brand>Prestige Frying Pan</Brand><SectionName>Kitchen Tools</SectionName><RackNo>8</RackNo><Quantity>70</Quantity>
		<ProductID>PROD009</ProductID><ProductType>Cloth</ProductType><Brand>Addidas Pant</Brand><SectionName>Kitchen Tools</SectionName><RackNo>9</RackNo><Quantity>63</Quantity>
		<ProductID>PROD010</ProductID><ProductType>Cloth</ProductType><Brand>Addidas T Shirt</Brand><SectionName>Clothes</SectionName><RackNo>10</RackNo><Quantity>60</Quantity></WarehouseDetails>')

INSERT INTO SALARY (SalaryGrade,Salary)
VALUES ('A',10000)
INSERT INTO SALARY (SalaryGrade,Salary)
VALUES ('B',8000)
INSERT INTO SALARY (SalaryGrade,Salary)
VALUES ('C',6000)
INSERT INTO SALARY (SalaryGrade,Salary)
VALUES ('D',3000)

INSERT INTO EMPLOYEE (EmployeeID,FirstName,LastName,Gender,DOB,Address,Email,Designation,EmployeeType,SalaryGrade,WarehouseID)
VALUES ('EMP001','Bob','Aldrin','M','1990-01-25','Aston Quay','bob.aldrin@gmail.com','Manager','Full-Time','A',null)

INSERT INTO EMPLOYEE (EmployeeID,FirstName,LastName,Gender,DOB,Address,Email,Designation,EmployeeType,SalaryGrade,WarehouseID)
VALUES ('EMP002','Alice','Smith','F','1990-05-25','Queens Quay','alice.smith@gmail.com','Manager','Full-Time','A',null)

INSERT INTO EMPLOYEE (EmployeeID,FirstName,LastName,Gender,DOB,Address,Email,Designation,EmployeeType,SalaryGrade,WarehouseID)
VALUES ('EMP003','Frank','Brown','M','1991-04-02','Kings Street','frank.brown@gmail.com','Cashier','Full-Time','B',null)

INSERT INTO EMPLOYEE (EmployeeID,FirstName,LastName,Gender,DOB,Address,Email,Designation,EmployeeType,SalaryGrade,WarehouseID)
VALUES ('EMP004','Ester','White','F','1989-03-07','Grand Canal','ester.white@gmail.com','Cashier','Full-Time','B',null)

INSERT INTO EMPLOYEE (EmployeeID,FirstName,LastName,Gender,DOB,Address,Email,Designation,EmployeeType,SalaryGrade,WarehouseID)
VALUES ('EMP005','Olive','Green','F','1990-03-11','Grand Canal','olive.green@gmail.com','Sales','Full-Time','B',null)

INSERT INTO EMPLOYEE (EmployeeID,FirstName,LastName,Gender,DOB,Address,Email,Designation,EmployeeType,SalaryGrade,WarehouseID)
VALUES ('EMP006','Daniel','Scott','M','1992-11-16','Aston Quay','daniel.scott@gmail.com','Sales','Full-Time','B',null)

INSERT INTO EMPLOYEE (EmployeeID,FirstName,LastName,Gender,DOB,Address,Email,Designation,EmployeeType,SalaryGrade,WarehouseID)
VALUES ('EMP007','Harvey','Specter','M','1990-10-27','College Green','harvey.specter@gmail.com','Warehouse Manager','Full-Time','A','WARE1')

INSERT INTO EMPLOYEE (EmployeeID,FirstName,LastName,Gender,DOB,Address,Email,Designation,EmployeeType,SalaryGrade,WarehouseID)
VALUES ('EMP008','Mike','Ross','M','1990-09-25','Dames Street','mike.ross@gmail.com','Warehouse Manager','Full-Time','A','WARE2')

INSERT INTO EMPLOYEE (EmployeeID,FirstName,LastName,Gender,DOB,Address,Email,Designation,EmployeeType,SalaryGrade,WarehouseID)
VALUES ('EMP009','Oliver','Warne','M','1990-04-20','Docks','oliver.warne@gmail.com','Cleaner','Part-Time','D',null)

INSERT INTO EMPLOYEE (EmployeeID,FirstName,LastName,Gender,DOB,Address,Email,Designation,EmployeeType,SalaryGrade,WarehouseID)
VALUES ('EMP010','Joe','Root','M','1995-09-20','Aston Quay','joe.root@gmail.com','Cleaner','Part-Time','D',null)

INSERT INTO EMPLOYEE (EmployeeID,FirstName,LastName,Gender,DOB,Address,Email,Designation,EmployeeType,SalaryGrade,WarehouseID)
VALUES ('EMP011','Justin','Langer','M','1990-04-29','College Street','justin.langer@gmail.com','Cleaner','Full-Time','C',null)

INSERT INTO EMPLOYEE (EmployeeID,FirstName,LastName,Gender,DOB,Address,Email,Designation,EmployeeType,SalaryGrade,WarehouseID)
VALUES ('EMP012','Mathew','Bevan','M','1990-08-14','Dames Street','mathew.bevan@gmail.com','Cleaner','Full-Time','C',null)

INSERT INTO EMPLOYEE (EmployeeID,FirstName,LastName,Gender,DOB,Address,Email,Designation,EmployeeType,SalaryGrade,WarehouseID)
VALUES ('EMP012','Mathew','Bevan','M','1990-08-14','Dames Street','mathew.bevan@gmail.com','Cleaner','Full-Time','C',null)

INSERT INTO EMPLOYEE (EmployeeID,FirstName,LastName,Gender,DOB,Address,Email,Designation,EmployeeType,SalaryGrade,WarehouseID)
VALUES ('EMP013','Lisa','Ray','F','1991-07-26','Kings Street','lisa.ray@gmail.com','Warehouse Assistant','Full-Time','B','WARE2')

INSERT INTO EMPLOYEE (EmployeeID,FirstName,LastName,Gender,DOB,Address,Email,Designation,EmployeeType,SalaryGrade,WarehouseID)
VALUES ('EMP014','Rosy','Connor','F','1991-02-14','Dames Street','rosy.bevan@gmail.com','Warehouse Assistant','Full-Time','B','WARE1')