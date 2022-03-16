CREATE SCHEMA IF NOT EXISTS Clean_And_Go ;
USE Clean_And_Go ;

CREATE TABLE IF NOT EXISTS Clean_And_Go.Supplier 
(
  ID_Number VARCHAR(10) NOT NULL,
  FullName VARCHAR(45) NOT NULL,
  address VARCHAR(45) NULL,
  City varchar(45),
  State Varchar(45),
  Zipcode varchar(45),
  telephone_number VARCHAR(12) NULL,
  current_balance decimal(10,2) NULL,
  PRIMARY KEY (ID_Number)
  );

CREATE TABLE IF NOT EXISTS Clean_And_Go.Service 
(
  ID_Number VARCHAR(10) NOT NULL,
  name VARCHAR(45) NULL,
  description VARCHAR(200) NULL,
  rate_charged decimal(10,2) NULL,
  hours_worked DECIMAL(10,2) NULL,
  PRIMARY KEY (ID_Number)
  );

CREATE TABLE IF NOT EXISTS Clean_And_Go.Cleaning_supplies 
(
  name VARCHAR(45) NOT NULL,
  description_of_use VARCHAR(200) NULL,
  Current_inventory int NULL,
  safety_stock INT NULL,
  Supplier_ID_Number VARCHAR(10) NOT NULL,
  Service_ID_Number VARCHAR(10) NULL,
  UnitPrice decimal(10,2),
  PRIMARY KEY (name),
  FOREIGN KEY (Supplier_ID_Number) REFERENCES Clean_And_Go.Supplier (ID_Number)
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (Service_ID_Number) REFERENCES Clean_And_Go.Service (ID_Number)
  ON DELETE CASCADE ON UPDATE CASCADE
  );

CREATE TABLE IF NOT EXISTS Clean_And_Go.Customer (
  ID_Number VARCHAR(10) NOT NULL,
  Name VARCHAR(45) NOT NULL,
  Address VARCHAR(45) NULL,
  City varchar(45), 
  State varchar(45),
  Zipcode varchar(5),
  email VARCHAR(45) NULL,
  telephone_number VARCHAR(12) NULL,
  cc_number VARCHAR(45) NULL,
  current_balance DECIMAL(10,2) NULL,
  PRIMARY KEY (ID_Number));

CREATE TABLE IF NOT EXISTS Clean_And_Go.Employee (
  ID_Number VARCHAR(10) NOT NULL,
  name VARCHAR(45) NULL,
  address VARCHAR(45) NULL,
  gender VARCHAR(45) NULL,
  employment_date date NULL,
  position VARCHAR(45) NULL,
  wage decimal(10,2) not null,
  schedule VARCHAR(200) NULL,
  PRIMARY KEY (ID_Number));

CREATE TABLE IF NOT EXISTS Clean_And_Go.Equipment 
(
  ID_Number VARCHAR(10) NOT NULL,
  brand_name VARCHAR(45) NULL,
  purchase_date DATE NULL,
  purchase_Price decimal(10,2) NULL,
  EquipmentName VARCHAR(45) NULL,
  maintenence_schedule varchar(200) NULL,
  Supplier_ID_Number VARCHAR(10) NOT NULL,
  Service_ID_Number VARCHAR(10),
  MaintenenceCharge decimal(10,2),
  PRIMARY KEY (ID_Number),
  FOREIGN KEY (Supplier_ID_Number) REFERENCES Clean_And_Go.Supplier (ID_Number)
  ON DELETE CASCADE ON UPDATE cascade,
  FOREIGN KEY (Service_ID_Number) REFERENCES Clean_And_Go.Service (ID_Number)
  ON DELETE CASCADE ON UPDATE cascade
  );
  
  CREATE TABLE IF NOT EXISTS Clean_And_Go.Equipment_schedule 
(
  date DATE NOT NULL,
  Equipment_ID_Number VARCHAR(10) NOT NULL,
  Year INT NOT NULL,
  hours INT NULL,
  schedule_description VARCHAR(200) NULL,
  PRIMARY KEY (Equipment_ID_Number, date, Year),
  FOREIGN KEY (Equipment_ID_Number) REFERENCES Clean_And_Go.Equipment (ID_Number)
  ON DELETE CASCADE ON UPDATE cascade
  );

CREATE TABLE IF NOT EXISTS Clean_And_Go.employee_schedule 
(
  date DATE NOT NULL,
  Employee_ID_Number VARCHAR(10) NOT NULL,
  Year INT NOT NULL,
  hours INT NULL,
  schedule_description VARCHAR(200) NULL,
  PRIMARY KEY (Employee_ID_Number, date, Year),
  FOREIGN KEY (Employee_ID_Number) REFERENCES Clean_And_Go.Employee (ID_Number)
  ON DELETE CASCADE ON UPDATE cascade
  );

CREATE TABLE IF NOT EXISTS Clean_And_Go.equipment_maintenence_Schedule 
(
  Equipment_ID_Number VARCHAR(10) NOT NULL,
  date DATE NOT NULL,
  year INT NOT NULL,
  scheduled_hours INT NULL,
  description VARCHAR(200) NULL,
  PRIMARY KEY (Equipment_ID_Number, year, date),
  FOREIGN KEY (Equipment_ID_Number) REFERENCES Clean_And_Go.Equipment (ID_Number)
  ON DELETE CASCADE ON UPDATE CASCADE
  );
  
create table if not exists Clean_And_Go.Expense (
ExpenseID int not null,
ExpenseType varchar(45),
Primary key (ExpenseID)
);
  
CREATE TABLE IF NOT EXISTS Clean_And_Go.Transaction 
(
  Transaction_ID_Number VARCHAR(45) NOT NULL,
  Supplier_ID_Number VARCHAR(10) null,
  Cleaning_supplies_name VARCHAR(45) null,
  Equipment_ID_Number VARCHAR(10) null,
  transaction_date DATE NULL,
  Quantity INT NULL,
  due_date DATE NULL,
  description VARCHAR(200) NULL,
  delivery_date DATE NULL,
  AmountDue decimal(10,2),
  ExpenseType int,
  FOREIGN KEY (Supplier_ID_Number) REFERENCES Clean_And_Go.Supplier (ID_Number),
  FOREIGN KEY (Cleaning_supplies_name) REFERENCES Clean_And_Go.Cleaning_supplies (name),
  FOREIGN KEY (Equipment_ID_Number) REFERENCES Clean_And_Go.Equipment (ID_Number),
  FOREIGN KEY (ExpenseType) REFERENCES Clean_And_Go.Expense (ExpenseID),
  PRIMARY KEY (Transaction_ID_Number)
  );

CREATE TABLE IF NOT EXISTS Clean_And_Go.Customer_Service (
  Service_ID_Number VARCHAR(10) NOT NULL,
  Employee_ID_Number VARCHAR(10) NOT NULL,
  Customer_ID_Number VARCHAR(10) NOT NULL,
  Satisfaction_Level VARCHAR(45) NULL,
  Date DATE NULL,
  Amount_Charged decimal(10,2) NULL,
  description VARCHAR(200) NULL,
  FOREIGN KEY (Service_ID_Number) REFERENCES Clean_And_Go.Service (ID_Number)
  ON DELETE CASCADE ON UPDATE CASCADE,
  foreign key (Employee_ID_Number) REFERENCES Clean_And_Go.Employee (ID_Number)
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (Customer_ID_Number) REFERENCES Clean_And_Go.Customer (ID_Number)
  ON DELETE CASCADE ON UPDATE CASCADE,
  PRIMARY KEY (Service_ID_Number, Employee_ID_Number, Customer_ID_Number)
  );
  




