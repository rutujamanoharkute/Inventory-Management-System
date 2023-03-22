INSERT INTO DMDD_Team_3.dbo.customer (AddressLine1,ContactNo,City,Zip,firstname,lastname) VALUES
	 (N'72 saint Alphonsus street',N'6179925499',N'Boston',N'2120',N'Thor',N'Odinson'),
	 (N'89 sheridan street',N'6179914550',N'Boston',N'2130',N'Tony',N'Stark'),
	 (N'151 park drive',N'6198555622',N'Boston',N'2110',N'Clint',N'Barton'),
	 (N'118 stone way park',N'8595562200',N'San Antonio',N'4550',N'Bruce',N'Banner'),
	 (N'77 gotham street',N'6598444022',N'San Antonio',N'4520',N'Bruce',N'Wayne'),
	 (N'667 Manhattan',N'8005002200',N'New York',N'1233',N'Steve',N'Rogers'),
	 (N'85 Brooklyn street',N'9587445566',N'New York',N'1255',N'Peter',N'Parker'),
	 (N'69 Harlem Street',N'5589985441',N'New York',N'1296',N'Natasha',N'Romanov'),
	 (N'77 Miami Street',N'6179925448',N'Miami',N'3201',N'Brie',N'Larson'),
	 (N'55 Miami Street',N'8959925449',N'Miami',N'3201',N'Barry',N'Allen');
	 

	
INSERT INTO DMDD_Team_3.dbo.Customermembership (customer_id,store_id,MemberShipType) VALUES
	 (120,3001,N'Standard'),
	 (130,3001,N'Gold'),
	 (140,3001,N'Platinum'),
	 (150,3002,N'Gold'),
	 (160,3002,N'Gold'),
	 (170,3003,N'Gold'),
	 (180,3003,N'Platinum'),
	 (190,3003,N'Standard'),
	 (1110,3004,N'Standard'),
	 (1120,3004,N'Gold');
	 
	

INSERT INTO DMDD_Team_3.dbo.EmployeeInfo (EmployeeFirstName,EmployeeLastName,ContactNo,EmployeeShift,store_id) VALUES
	 (N'Morgan',N'Stanley',N'6179925489',N'1',3001),
	 (N'James',N'Daniel',N'6179914558',N'2',3001),
	 (N'jim',N'Halpert',N'6179925476',N'3',3001),
	 (N'Dwight',N'L',N'8764456666',N'1',3002),
	 (N'Michael',N'Scott',N'5436678890',N'2',3002),
	 (N'Pam',N'Halpert',N'4356678976',N'1',3003),
	 (N'Stanley',N'Hudson',N'4356657389',N'2',3003),
	 (N'Arya',N'Iyer',N'3245536654',N'3',3003),
	 (N'Agni',N'Shah',N'9876345563',N'1',3004),
	 (N'Jane',N'Frost',N'7365534435',N'2',3004);
	
	


	
	
INSERT INTO DMDD_Team_3.dbo.EmployeeSales (DateOfSales,SalesAmount,id_Employee) VALUES
	 ('2022-01-02 00:00:00.0',125,4009),
	 ('2021-08-10 00:00:00.0',342,4003),
	 ('2021-08-10 00:00:00.0',987,4005),
	 ('2022-01-02 00:00:00.0',900,4003),
	 ('2022-01-03 00:00:00.0',543,4007),
	 ('2021-08-10 00:00:00.0',678,4010),
	 ('2019-03-04 00:00:00.0',456,4006),
	 ('2019-05-01 00:00:00.0',209,4009),
	 ('2019-01-05 00:00:00.0',540,4003),
	 ('2018-09-09 00:00:00.0',420,4005);
	
	
	
INSERT INTO DMDD_Team_3.dbo.Inventory (ProductId,SupplierId,Inventory_count,store_id) VALUES
	 (50010,6001,89,3001),
	 (50011,6002,55,3002),
	 (50012,6003,44,3003),
	 (50013,6004,65,3004),
	 (50014,6005,15,3005),
	 (50015,6006,23,3006),
	 (50016,6007,56,3007),
	 (50017,6008,46,3008),
	 (50018,6009,87,3009),
	 (50019,6010,78,3010);
	
	
	
INSERT INTO DMDD_Team_3.dbo.paymentdetails (idProductOrderDetails,PaymentType,PaymentTotal) VALUES
	 (880001,N'Debit Card',1068.0000),
	 (880002,N'Credit Card',952.0000),
	 (880003,N'Cash',195.0000),
	 (880005,N'Cash',650.0000),
	 (880004,N'Debit Card',78.0000),
	 (880007,N'Credit Card',310.0000),
	 (880008,N'Debit Card',212.0000),
	 (880009,N'Debit Card',86.0000),
	 (880010,N'Cash',891.0000);
	
	
INSERT INTO DMDD_Team_3.dbo.Product (ProductName,ProductDescrip,ProductCategory_id,ProductBrand_ID,ProductPrice) VALUES
	 (N'Peas',N'Food',8006,99006,20),
	 (N'Banana',N'Food',8005,99006,40),
	 (N'Dustbin',N'Homecare',8008,99005,30),
	 (N'Hood MIlk',N'Food',8003,99001,20),
	 (N'Pork',N'Food',8004,99006,50),
	 (N'Bacon',N'Food',8004,99006,60),
	 (N'NavneetBook',N'Stationary',8013,99004,40),
	 (N'Knife',N'Tool',8008,99008,30),
	 (N'earrings nova',N'Jewl',8015,99007,20),
	 (N'DoveMoisturizer',N'Bodycare',8012,99005,50);
INSERT INTO DMDD_Team_3.dbo.Product (ProductName,ProductDescrip,ProductCategory_id,ProductBrand_ID,ProductPrice) VALUES
	 (N'LipBalm',N'Bodycare',8012,99005,30);
	
	
	
INSERT INTO DMDD_Team_3.dbo.ProductBrand (ProductBrandName) VALUES
	 (N'Brand_1'),
	 (N'Brand_2'),
	 (N'Brand_3'),
	 (N'Brand_4'),
	 (N'Brand_5'),
	 (N'Brand_6'),
	 (N'Brand_7'),
	 (N'Brand_8'),
	 (N'Brand_9'),
	 (N'Brand_10');
INSERT INTO DMDD_Team_3.dbo.ProductBrand (ProductBrandName) VALUES
	 (N'Brand_11');
	
	
	INSERT INTO DMDD_Team_3.dbo.ProductCart (ProductQuantity,TotalAmount,AddressLine1) VALUES
	 (3,2000.93,N'98 Alphone Street'),
	 (5,4532.32,N'83 Moore Street'),
	 (9,6549.87,N'10 Tremont Street'),
	 (6,4800.88,N'35 Fenway Road'),
	 (8,6456.75,N'25 Brookline'),
	 (7,5004.82,N'23 NorthRoad'),
	 (4,3000.45,N'65 Ridge Street'),
	 (9,900045.78,N'225 Riverway'),
	 (6,8793.75,N'76 DayStreet'),
	 (1,100.25,N'98 CopleyStreet');
	
	INSERT INTO DMDD_Team_3.dbo.ProductCategory (CategoryName) VALUES
	 (N'Antibiotics'),
	 (N'Ayurvedics'),
	 (N'Milk Products'),
	 (N'Meat'),
	 (N'Fruits'),
	 (N'Vegetables'),
	 (N'Poutry'),
	 (N'Kitchen appliances'),
	 (N'Home furniture'),
	 (N'Helmets and headgears');
INSERT INTO DMDD_Team_3.dbo.ProductCategory (CategoryName) VALUES
	 (N'Racquets'),
	 (N'Body lotions'),
	 (N'Files and binders'),
	 (N'Cutting tools'),
	 (N'Jewellery');
	
	
	INSERT INTO DMDD_Team_3.dbo.ProductOffers (OfferPercent,ProductId,MemberShipType) VALUES
	 (10,50010,N'Gold'),
	 (40,50011,N'Gold'),
	 (30,50012,N'Gold'),
	 (40,50013,N'Gold'),
	 (50,50014,N'Platinum'),
	 (30,50015,N'Gold'),
	 (20,50016,N'Gold'),
	 (5,50017,N'Standard'),
	 (10,50018,N'Gold'),
	 (65,50019,N'Platinum');
	
	
INSERT INTO DMDD_Team_3.dbo.ProductRatings (Comment,Points,CustomerId,ProductId) VALUES
	 (N'good',9,120,50010),
	 (N'bad ',8,130,50011),
	 (N'best',7,140,50012),
	 (N'worst',6,150,50013),
	 (N'good',7,160,50014),
	 (N'good',4,170,50015),
	 (N'bad ',5,180,50016),
	 (N'best',6,190,50017),
	 (N'worst',9,1110,50018),
	 (N'good',7,1120,50019);
INSERT INTO DMDD_Team_3.dbo.ProductRatings (Comment,Points,CustomerId,ProductId) VALUES
	 (N'',8,NULL,50020);

INSERT INTO DMDD_Team_3.dbo.ProductStatus (QuantityAvailable,ExpiryDate,IdProduct) VALUES
	 (8,'2019-05-05 00:00:00.0',50010),
	 (5,'2019-05-06 00:00:00.0',50011),
	 (7,'2019-05-07 00:00:00.0',50012),
	 (2,'2019-05-08 00:00:00.0',50013),
	 (6,'2019-05-09 00:00:00.0',50014),
	 (3,'2019-05-10 00:00:00.0',50015),
	 (1,'2019-05-11 00:00:00.0',50016),
	 (7,'2019-05-12 00:00:00.0',50017),
	 (4,'2019-05-13 00:00:00.0',50018),
	 (9,'2024-02-02 00:00:00.0',50019);
INSERT INTO DMDD_Team_3.dbo.ProductStatus (QuantityAvailable,ExpiryDate,IdProduct) VALUES
	 (3,'2022-04-21 00:00:00.0',50020);
	
	
INSERT INTO DMDD_Team_3.dbo.StoreInfo (StoreAddressLine1,City,State,Zip) VALUES
	 (N'FisherAve',N'Boston',N'Massachuttes',2120),
	 (N'ParkerSt',N'Boston',N'Massachuttes',2130),
	 (N'RiverSide',N'Boston',N'Massachuttes',2110),
	 (N'Assembly',N'San Antonio',N'Texas',4550),
	 (N'Symphony',N'San Antonio',N'Texas',4520),
	 (N'GovernmentCentre',N'New York',N'NY',1233),
	 (N'Boylston',N'New York',N'NY',1255),
	 (N'HuntingtonAve',N'New York',N'NY',1296),
	 (N'Hillside',N'Miami',N'Florida',3201),
	 (N'TremontSt',N'Miami',N'Florida',3201);
	
INSERT INTO DMDD_Team_3.dbo.SupplierBrand (IdSupplier,IdProductBrand) VALUES
	 (6001,99006),
	 (6002,99001),
	 (6003,99002),
	 (6003,99008),
	 (6004,99007),
	 (6005,99003),
	 (6007,99004),
	 (6009,99005);

	
INSERT INTO DMDD_Team_3.dbo.SupplierInfo (SupplierFirstName,ContactNo,AddressLine1,City,Zip) VALUES
	 (N'FarmFresh',N'6179925499',N'Boston',N'Boston',N'2120'),
	 (N'Mother Dairy',N'6179914550',N'Boston',N'Boston',N'2130'),
	 (N'Home Goods',N'6198555622',N'Boston',N'Boston',N'2110'),
	 (N'US Electronics',N'8595562200',N'San Antonio',N'San Antonio',N'4550'),
	 (N'Star Cosmetics',N'6598444022',N'San Antonio',N'San Antonio',N'4520'),
	 (N'Brown Bakery',N'8005002200',N'New York',N'New York',N'1233'),
	 (N'Class Mate',N'9587445566',N'New York',N'New York',N'1255'),
	 (N'Dicks Sporting',N'5589985441',N'New York',N'New York',N'1296'),
	 (N'Mob Cleaners',N'6179925448',N'Miami',N'Miami',N'3201'),
	 (N'CVS ',N'8959925449',N'Miami',N'Miami',N'3201');
	
	
INSERT INTO DMDD_Team_3.dbo.SupplierInvoices (IdProduct,Amount,PaymentType,DateOfPayment,StatusOfSupply,idSupplierInfo) VALUES
	 (50010,N'90000',N'Zell',N'5/5/19',N'Delivered',6001),
	 (50011,N'3000',N'Check',N'5/6/19',N'Pending',6002),
	 (50012,N'2000',N'WireTransfer',N'5/7/19',N'Pending',6003),
	 (50013,N'50000',N'GooglePay',N'5/8/19',N'Delivered',6008),
	 (50014,N'60000',N'WireTransfer',N'5/9/19',N'Pending',6005),
	 (50015,N'700000',N'Check',N'5/10/19',N'Delivered',6002),
	 (50016,N'300000',N'Zell',N'5/11/19',N'Pending',6007),
	 (50017,N'4999',N'Check',N'5/12/19',N'Delivered',6008),
	 (50018,N'2334',N'WireTransfer',N'5/13/19',N'Delivered',6009),
	 (50019,N'65444',N'GooglePay',N'5/14/19',N'Delivered',6002);
