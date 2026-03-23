-- Create Customer Dimension
CREATE TABLE Dim_Customer (
    Customer_ID INT IDENTITY(1,1) PRIMARY KEY,  
    First_Name VARCHAR(100),                  
    Last_Name VARCHAR(100),                   
    Email_Address VARCHAR(255),               
    Gender VARCHAR(50),                       
    Membership_Status VARCHAR(50),            
    City VARCHAR(100)                         
);