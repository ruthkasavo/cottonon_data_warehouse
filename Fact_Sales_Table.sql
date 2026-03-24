-- Create Sales Fact Table
CREATE TABLE Fact_Sales (
    Sales_ID INT IDENTITY(1,1) PRIMARY KEY,    
    Date_Key INT FOREIGN KEY REFERENCES Dim_Date(Date_ID),       
    Product_Key INT FOREIGN KEY REFERENCES Dim_Product(Product_ID), 
    Customer_Key INT FOREIGN KEY REFERENCES Dim_Customer(Customer_ID), 
    Store_Key INT FOREIGN KEY REFERENCES Dim_Store(Store_ID),    
    Quantity_Sold INT,                        
    Unit_Price DECIMAL(10, 2),                
    Total_Tax DECIMAL(10, 2),                 
    Net_Revenue DECIMAL(12, 2)                
);