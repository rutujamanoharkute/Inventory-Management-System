
Use DMDD_Team_3


CREATE TABLE SupplierInfo

(

IdSupplierInfo int Identity Primary Key,
SupplierFirstName varchar(45),
ContactNo varchar(45),
AddressLine1 varchar(45),
City varchar(45),
Zip varchar(45)

)


CREATE TABLE Inventory

(

Inventory_id int Identity Primary key,
ProductId Int references Product(idProduct),
SupplierId int references SupplierInfo(IdsupplierInfo),
Inventory_count int,
store_id int references StoreInfo(idStoreInfo)

)





CREATE TABLE ProductBrand

(
IdProductBrand INT Identity Primary key,
ProductBrandName varchar(45)
);





CREATE Table SupplierBrand

(

IdSupplier int references SupplierInfo(IdsupplierInfo),
IdProductBrand int  references ProductBrand(idProductBrand)
Primary key (IdSupplier, IdProductBrand)

)



CREATE TABLE SupplierInvoices
(

IdSupplierInvoices INT Identity Primary Key,
IdProduct INT references Product(IdProduct),
Amount Varchar(45),
PaymentType Varchar(45),
DateOfPayment Varchar(45),
StatusOfSupply Varchar(45),
idSupplierInfo INT references SupplierInfo(idSupplierInfo)

);

CREATE TABLE StoreInfo
(
IdStoreInfo INT Identity Primary Key,
StoreAddressLine1 Varchar(45),
City Varchar(45),
State Varchar(45),
Zip INT

);

CREATE TABLE EmployeeInfo
(
idEmployeeInfo INT Identity Primary Key,
EmployeeFirstName varchar(45),
EmployeeLastName varchar(45),
ContactNo varchar(45),
EmployeeShift varchar(45),
store_id INT references StoreInfo(IdStoreInfo)
);




CREATE TABLE EmployeeSales
(

idEmployeeSales INT Identity Primary Key,
DateOfSales DATETIME,
SalesAmount INT,
id_Employee int references EmployeeInfo(idEmployeeInfo)

);



create table Product
(
IdProduct int identity Primary key,
ProductName varchar(45),
ProductDescrip varchar(45),
ProductCategory_id int references ProductCategory(idProductCategory),
idProductBrand int references ProductBrand(idProductBrand),
ProductPrice int
);

Alter table Product 
Add ProductName varchar(45),
ProductDescrip varchar(45),
ProductCategory_id int references ProductCategory(idProductCategory),
IdProductBrand int references ProductBrand(idProductBrand),
ProductPrice int




create table ProductStatus
(
id_Product_status int identity Primary Key,
ExpiryDate datetime,
QuantityAvailable int,
id_Product int references Product(IdProduct)
);


create table ProductCategory
(
idProductCategory int identity Primary Key,
CategoryName varchar(45)
);





CREATE TABLE paymentdetails (
    idPaymentDetails int identity PRIMARY KEY,
    idProductOrderDetails int references productorderdetails(idProductOrderDetails) ,
    PaymentType VARCHAR(45),
   
);



CREATE TABLE productorderdetails(
    idProductOrderDetails int identity PRIMARY KEY,
    OrderQuantity VARCHAR (45),
    customer_id int references customer(idCustomer),
    idProductOffer VARCHAR(45),
    idProductCart int references ProductCart(ProductCartID),
    OrderDate Date
);





Create table productorderHeader(
    idProductheaderDetails int identity PRIMARY KEY,
    idProductOrderDetails int references productorderdetails(idProductOrderDetails) ,
    id_Product int references Product(IdProduct),
    PricePerUnit VARCHAR(45)
)

Create table CartorderHeader(
    idCartheaderDetails int identity PRIMARY KEY,
    idProductCart int references ProductCart(ProductCartID),
    id_Product int references Product(IdProduct),
    PricePerUnit VARCHAR(45)
)



CREATE TABLE customer(
    idCustomer int identity PRIMARY KEY,
    CustomerName VARCHAR(45),
    AddressLine1 varchar(45),
    ContactNo varchar(45),
    City varchar(45),
    Zip varchar(45)
    
);


CREATE TABLE ProductCart

(

ProductCartID int Identity Primary Key,
ProductQuantity int,
TotalAmount decimal(13,2),


)


CREATE TABLE Customermembership

(

member_id int Primary Key,
customer_id int references customer(idCustomer),
store_id int references StoreInfo(IdStoreInfo),
MemberShipType Varchar(45)

)



CREATE TABLE ProductOffers

(
ProductOfferId int Identity Primary Key,
OfferPercent decimal,
ProductId int  references Product(IdProduct),
MemberShipType Varchar(45)
)



CREATE TABLE ProductRatings

(

Ratingid int Identity Primary Key,
Comment varchar(45),
Points int,
CustomerId int references customer(idcustomer),
ProductId int references Product(IdProduct)
)
-------------------------Table constraints-------------------------------

Create function CheckOfferGold(@prodofferId int)
Returns int
begin
	Declare @offerpercent int = 100, @type varchar(40), @checkresult int = 0
	
	select @type = MemberShipType from ProductOffers
	Select @offerpercent = offerPercent from ProductOffers
	if @offerpercent between 49 and 60 and @type <> 'Gold'
		set @checkresult = 1
    return @checkresult;
end



Alter table ProductOffers Add constraint validgold Check (dbo.CheckOfferGold(ProductOfferId) = 0);


ALTER TABLE ProductOffers
DROP CONSTRAINT validgold;


Create function CheckOfferPlatinum(@prodofferId int)
Returns int
begin
	Declare @offerpercent int = 100, @type varchar
	Declare @checkresult int = 0
	select @type = MemberShipType from ProductOffers
	Select @offerpercent = offerPercent from ProductOffers
	if   @offerpercent between 59 and 100 and @type <> 'Platinum'
		set @checkresult = 1
	
	return @checkresult
end


Alter table ProductOffers Add constraint validPlatinum Check (dbo.CheckOfferPlatinum(ProductOfferId) = 0);


ALTER TABLE ProductOffers
DROP CONSTRAINT validPlatinum;

----------------------------------------xxxxxxxxxxxxxxxxx-----------------------------------




----------------Computed column function--------------------------------------------------

CREATE FUNCTION CalcPurchase(@idProductOrderDetails INT)
RETURNS Money
BEGIN
   	 DECLARE @total MONEY 
   	 Declare @quantity int = (Select OrderQuantity from productorderdetails where idProductOrderDetails=@idProductOrderDetails);
   	 Declare @price  int = (Select PricePerUnit from productorderHeader where idProductOrderDetails=@idProductOrderDetails);
   	 set @total = @quantity * @price
   	 Return @total
END
   
Alter table paymentdetails
ADD PaymentTotal AS (dbo.CalcPurchase(idProductOrderDetails))


Drop function CalcPurchase

select * from Product p 

----------------------------------------xxxxxxxxxxxxxxxxx-----------------------------------


----------------------------------------------Views----------------------------------------------------------


CREATE View[Top3EmployeeSalesCorrespondingtostore] AS

select top 3 id_Employee, e.EmployeeFirstName,

e.store_id,SUM(es.SalesAmount) as totalsales from EmployeeSales es

join EmployeeInfo e

on e.idEmployeeInfo  = es.id_Employee

group by es.id_Employee, e.store_id, e.EmployeeFirstName

order by totalsales desc


select * from Top3EmployeeSalesCorrespondingtostore
Select * from InventoryCheckwithSupplier



CREATE View[InventoryCheckwithSupplier] AS

Select p.ProductName, ps.QuantityAvailable,

DATEDIFF(month  ,ps.ExpiryDate,GETDATE()) as Months_Remaining_for_expiry ,

si.SupplierFirstName ,si.ContactNo, pb.ProductBrandName  from SupplierBrand sb

join SupplierInfo si

on sb.IdSupplier = si.IdSupplierInfo

join ProductBrand pb

on sb.IdProductBrand = pb.idProductBrand

join Product p

on p.ProductBrand_ID = pb.idProductBrand

join ProductStatus ps

on ps.IdProduct = p.IdProduct

where ps.QuantityAvailable < 5

and DATEDIFF(month  ,ps.ExpiryDate,GETDATE()) < 8

------------------------------------------xxxxxx---------------------------------------------------


------------------StoredProcedure------------------------------------------
CREATE  PROCEDURE _addtoCart @cartid int,@customerid int,@productid int, @quantity int

AS

Declare @product_count INT;

Declare @expiry_date DATE;

Declare @price Float;

Declare @total_price float;

Declare @lastCartOrderHeader INT;

Declare @lastCartID INT;

SET @product_count =

    (SELECT  ps.QuantityAvailable from ProductStatus ps where ps.IdProduct = @productid)

SET @expiry_date =

     (SELECT  ps2.ExpiryDate from ProductStatus ps2 where ps2.IdProduct = @productid)

SET @price =

    (SELECT p.ProductPrice  from Product p where p.IdProduct = @productid)

SET @lastCartOrderHeader =

    (SELECT TOP 1 ch.idCartheaderDetails from CartorderHeader ch ORDER BY ch.idCartheaderDetails DESC)

SET @lastCartID =

    (Select TOP 1 pc.ProductCartID from ProductCart pc Order by pc.ProductCartID DESC)



IF @quantity < @product_count

    BEGIN

        SET @total_price = @quantity * @price

        

        SET IDENTITY_INSERT CartorderHeader ON

        INSERT INTO CartorderHeader(idCartheaderDetails,id_Cart,id_Product,id_customer,Price)

        values(@lastCartOrderHeader + 1,@cartid,@productid,@customerid,@total_price)

END

Else

    BEGIN

        PRINT 'Product is Unavailable'

        Print @total_price

        print @quantity

    END

    

    Exec _addtoCart @cartid = 100002,@customerid = 120,@productid = 50019 , @quantity = 3

------------------------------------------xxxxxx---------------------------------------------------
    
    
---------------------------------------DataEncrpytion--------------------------------------------
    
 Create MASTER KEY
ENCRYPTION BY PASSWORD = 'Test_P@sswOrd'   

CREATE CERTIFICATE MembershipCertificate
With SUBJECT = 'DMDDTeam3 certificate',
EXPIRY_DATE = '2026-10-31'

CREATE SYMMETRIC KEY MembershipEncryptionKey
With ALGORITHM = AES_128
ENCRYPTION BY CERTIFICATE MembershipCertificate;

CREATE or ALTER TRIGGER EncryptMemberShipID ON 
dbo.Customermembership 
AFTER INSERT, UPDATE
AS 
BEGIN
		OPEN SYMMETRIC KEY MembershipEncryptionKey
		DECRYPTION BY CERTIFICATE MembershipCertificate;	
		
		update Customermembership  SET member_id  = EncryptByKey(Key_GUID(N'MembershipEncryptionKey'),CONVERT(VARBINARY, member_id));

		CLOSE SYMMETRIC KEY MembershipEncryptionKey;
END
    
   
-----------------------------------------------------xxxxxx---------------------------------------------------



