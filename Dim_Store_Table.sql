-- Create Store Dimension
CREATE TABLE Dim_Store (
    Store_ID INT IDENTITY(1,1) PRIMARY KEY,    
    Store_Name VARCHAR(255),                  
    Province VARCHAR(100),                    
    City VARCHAR(100),                        
    Store_Type VARCHAR(100),                  
    Manager_Name VARCHAR(255)                 
);