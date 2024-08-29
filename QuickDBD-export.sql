CREATE TABLE `Order_Dim` (
    `Row_ID` int  NOT NULL ,
    `Order_ID` varchar(20)  NOT NULL ,
    `Customer_ID` varchar(20)  NOT NULL ,
    `Product_ID` varchar(20)  NOT NULL ,
    `Delivery_ID` varchar(20)  NOT NULL ,
    `Sales` float  NOT NULL ,
    PRIMARY KEY (
        `Row_ID`
    )
);

CREATE TABLE `Customer_Dim` (
    `Customer_ID` varchar(50)  NOT NULL ,
    `Customer_Name` varchar(50)  NOT NULL ,
    `Segment` varchar(30)  NOT NULL ,
    PRIMARY KEY (
        `Customer_ID`
    )
);

CREATE TABLE `Product_Dim` (
    `Product_ID` varchar(20)  NOT NULL ,
    `Product_Name` varchar(60)  NOT NULL ,
    `Category` varchar(50)  NOT NULL ,
    `Sub_Category` varchar(50)  NOT NULL ,
    PRIMARY KEY (
        `Product_ID`
    )
);

CREATE TABLE `Delivery_Dim` (
    `Delivery_ID` int  NOT NULL ,
    `Destination_ID` int  NOT NULL ,
    `Order_Date` date  NOT NULL ,
    `Ship_Date` date  NOT NULL ,
    `Ship_Mode` varchar(20)  NOT NULL ,
    PRIMARY KEY (
        `Delivery_ID`
    )
);

CREATE TABLE `Destination_Dim` (
    `Destination_ID` int  NOT NULL ,
    `Country` varchar(40)  NOT NULL ,
    `City` varchar(40)  NOT NULL ,
    `State` varchar(40)  NOT NULL ,
    `Postal_Code` varchar(20)  NOT NULL ,
    `Region` varchar(10)  NOT NULL ,
    PRIMARY KEY (
        `Destination_ID`
    )
);


