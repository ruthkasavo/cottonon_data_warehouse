-- Create Date Dimension
CREATE TABLE Dim_Date (
    Date_ID INT PRIMARY KEY,                  
    Full_Date DATE,                           
    Day_of_Week VARCHAR(20),                  
    Month VARCHAR(20),                        
    Year INT                                  
);