# Inventory-Management-System
##### This is an Inventory Management System that allows users to manage their inventory of products. The system is designed to be user-friendly and easy to use.

### Features
##### Add products to inventory
##### Remove products from inventory
##### Update product details
##### View current inventory status
##### Generate reports on inventory usage and sales
##### Entity Relationship Diagram (ERD)
##### The ERD for the Inventory Management System has been normalized to 3NF to remove repetitive or common groups, attributes that are not dependent on ##### the Primary key have been put into a separate column, and associative tables or Bridge tables have been used to remove many-to-many relationships.







## Entity Relationship Diagram:
### Normalized to 3NF
#### 1NF- Removing all the repetative or common groups
#### 2NF- Removing all the attributes which are not dependent on Primary key and putting them into seperate column
#### 3NF- Associative tables or Bridge tables to remove many to many relationship

### Cardinality:
The cardinality of the Inventory Management System includes one-to-one, many-to-one, and many-to-many relationships between entities.
#### one to one
#### Many to one 
#### Many to many

<img width="407" alt="image" src="https://user-images.githubusercontent.com/114360071/227017292-b59ff569-d00c-4816-9e54-62e2ee8baa70.png">

#### Conclusion
##### The Inventory Management System is a useful tool for managing inventory and generating reports on inventory usage and sales. It is designed to be user-friendly and easy to use, and can be easily set up on a local machine.


#### Technologies Used

##### Database: MSSQL
##### Setup
##### To set up the Inventory Management System, follow these steps:

##### Clone the repository to your local machine
##### Create a database in MSSQL
##### Import the database schema from database.sql
##### Update the database credentials in config.php
##### Start the application using a local server
