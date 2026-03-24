-- 1. Create Product Dimension
CREATE TABLE Dim_Product (
    Product_ID INT IDENTITY(1,1) PRIMARY KEY, 
    Product_Name VARCHAR(255),               
    Category VARCHAR(100),                   
    Sub_Category VARCHAR(100),               
    Brand VARCHAR(100),                       
    Colour VARCHAR(50),                      
    Size VARCHAR(20)                         
);