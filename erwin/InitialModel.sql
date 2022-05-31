
CREATE OR REPLACE TABLE POS_HAJOCA
(
	Customer_Account_Number VARCHAR NOT NULL ,
	Customer_Name VARCHAR NULL ,
	Store_ID VARCHAR NOT NULL ,
	Vendor_Description VARCHAR NULL ,
	Customer_Material_Number VARCHAR NULL ,
	Moen_Product_Line VARCHAR NULL ,
	Moen_Material_Number VARCHAR NOT NULL ,
	Moen_Material_Description VARCHAR NULL ,
	Calendar_Day VARCHAR NOT NULL ,
	Branch_Sold_to_Number VARCHAR NOT NULL ,
	Branch_Ship_to_Number VARCHAR NULL ,
	Branch_Ship_Name VARCHAR NULL ,
	Shipping_Units VARCHAR NULL ,
	Unit_Price VARCHAR NULL ,
	Extended_Price VARCHAR NULL ,
	Customer_Zip_Code VARCHAR NULL ,
	Customer_Sales_Source VARCHAR NULL ,
	Customer_Branch_Street_Address VARCHAR NULL ,
	Customer_Branch_City VARCHAR NULL ,
	Customer_Branch_State VARCHAR NULL ,
	Customer_Branch_Zip_Code VARCHAR NULL ,
	Moen_UPC VARCHAR NULL ,
	Moen_SAP_Customer_Number VARCHAR NULL ,
	Customer_Store_Inventory VARCHAR NULL ,
	Store_Available_Qty VARCHAR NULL ,
	Customer_Showroom_Name VARCHAR NULL ,
	FILE_NAME VARCHAR NOT NULL ,
	FILE_TIMESTAMP TIMESTAMP_NTZ NOT NULL ,
	Current_Flag INTEGER NULL 
);

CREATE OR REPLACE TABLE POS_TIGRIS
(
	Customer_Account_Number VARCHAR NULL ,
	Customer_Name VARCHAR NULL ,
	Store_ID VARCHAR NULL ,
	Vendor_Description VARCHAR NULL ,
	Customer_Material_Number VARCHAR NULL ,
	Moen_Product_Line VARCHAR NULL ,
	Moen_Material_Number VARCHAR NOT NULL ,
	Moen_Material_Description VARCHAR NULL ,
	Calendar_Day VARCHAR NOT NULL ,
	Branch_Sold_to_Number VARCHAR NOT NULL ,
	Branch_Ship_to_Number VARCHAR NULL ,
	Branch_Ship_Name VARCHAR NULL ,
	Shipping_Units VARCHAR NULL ,
	Unit_Price VARCHAR NULL ,
	Extended_Price VARCHAR NULL ,
	Customer_Zip_Code VARCHAR NULL ,
	Customer_Sales_Source VARCHAR NULL ,
	Customer_Branch_Street_Address VARCHAR NULL ,
	Customer_Branch_City VARCHAR NULL ,
	Customer_Branch_State VARCHAR NULL ,
	Customer_Branch_Zip_Code VARCHAR NULL ,
	Moen_UPC VARCHAR NULL ,
	Moen_SAP_Customer_Number VARCHAR NULL ,
	Customer_Store_Inventory VARCHAR NULL ,
	Store_Available_Qty VARCHAR NULL ,
	Customer_Showroom_Name VARCHAR NULL ,
	FILE_NAME VARCHAR NOT NULL ,
	FILE_TIMESTAMP TIMESTAMP_NTZ NOT NULL 
);

ALTER TABLE POS_HAJOCA
	ADD CONSTRAINT XPKPOS_HAJOCA PRIMARY KEY (FILE_NAME, FILE_TIMESTAMP, Calendar_Day, Moen_Material_Number, Branch_Sold_to_Number);

ALTER TABLE POS_TIGRIS
	ADD CONSTRAINT XPKPOS_TIGRIS PRIMARY KEY (FILE_NAME, FILE_TIMESTAMP, Calendar_Day, Moen_Material_Number, Branch_Sold_to_Number);
