SELECT dc.Customer_ID, dc.First_Name, dc.Last_Name, dc.Email_Address, dc.Gender, 
dc.Membership_Status, dc.City 
FROM Dim_Customer dc;

select fs.Sales_ID, fs.Date_Key, fs.Product_Key, fs.Customer_Key, fs.Store_Key, 
fs.Quantity_Sold, fs.Unit_Price, fs.Total_Tax, fs.Net_Revenue from Fact_Sales fs 

select ds.Store_ID, ds.Store_Name, ds.Province, ds.City, ds.Store_Type, ds.Manager_Name from Dim_Store ds 

--Can you list the Product_Name and the total Quantity_Sold for every sale?
SELECT 
	dp.Product_ID,
	dp.Product_Name,
	fs.Quantity_Sold
FROM Fact_Sales fs 
LEFT JOIN  Dim_Product dp  
	ON dp.Product_ID = fs.Product_KEY
ORDER BY fs.Quantity_Sold DESC 

--Can you show the Sales_ID alongside the Store_Name where each sale occurred?
SELECT 
	fs.Sales_ID ,
	ds.Store_Name
FROM Fact_Sales fs 
LEFT JOIN  Dim_Store ds  
	ON ds.Store_ID  = fs.Store_Key

--How much Net_Revenue was generated specifically in the 'Gauteng' province?
SELECT  
	ds.Province, 
	SUM(fs.Net_Revenue) as province_net_revenue
FROM Fact_Sales fs 
LEFT JOIN  Dim_Store ds  
	ON ds.Store_ID  = fs.Store_Key
WHERE ds.Province = 'Gauteng'
GROUP BY ds.Province 

--Can you find the First_Name and Last_Name of every customer who has a 'Gold' membership status and purchased an item?


SELECT DISTINCT 
    dc.First_Name,      
    dc.Last_Name,       
    dc.Membership_Status 
FROM Fact_Sales fs      
INNER JOIN Dim_Customer dc 
    ON dc.Customer_ID = fs.Customer_Key 
WHERE dc.Membership_Status = 'Gold';     
