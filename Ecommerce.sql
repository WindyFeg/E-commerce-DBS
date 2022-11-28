drop database if exists `sql_ecommerce`;
create database `sql_ecommerce`;
use  `sql_ecommerce`;

set names utf8 ;
set character_set_client = utf8;

drop table if exists `sys`.`item`;
CREATE TABLE `sys`.`item` (
  `ItemID` VARCHAR(4) NOT NULL,
  `ICategoryID` VARCHAR(4) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `IDescription` VARCHAR(200) NOT NULL,
  `ItemLocation` VARCHAR(45) NOT NULL,
  `Price` INT NOT NULL,
  `ItemImage` LONGBLOB NULL,
  `Brand` VARCHAR(45) NOT NULL,
  `Stock` INT NOT NULL,
  `Comment` VARCHAR(200) NULL,
  PRIMARY KEY (`ItemID`))
COMMENT = 'Store all data of item in shop';

INSERT INTO `sys`.`item` (`ItemID`, `ICategoryID`, `Name`, `IDescription`, `ItemLocation`, `Price`, `Brand`, `Stock`) VALUES ('I_01', 'C_01', 'Áo khoác', 'Áo khoác là loại áo mặc bên ngoài, được sử dụng bởi cả nam và nữ, nhằm mục đích giữ ấm hoặc tạo tính thời trang', 'Vietnam', '400000', 'Shoppea', '99');
INSERT INTO `sys`.`item` (`ItemID`, `ICategoryID`, `Name`, `IDescription`, `ItemLocation`, `Price`, `Brand`, `Stock`) VALUES ('I_02', 'C_01', 'Áo Polo', 'Áo polo là loại áo thun cổ bẻ, về hình thức cổ áo giống với cổ sơ mi', 'Vietnam', '200000', 'Shoppea', '99');
INSERT INTO `sys`.`item` (`ItemID`, `ICategoryID`, `Name`, `IDescription`, `ItemLocation`, `Price`, `Brand`, `Stock`) VALUES ('I_03', 'C_01', 'Áo sơ mi', 'là loại hàng may mặc bao bọc lấy thân mình và hai cánh tay của cơ thể', 'Vietnam', '300000', 'Shoppea', '99');
INSERT INTO `sys`.`item` (`ItemID`, `ICategoryID`, `Name`, `IDescription`, `ItemLocation`, `Price`, `Brand`, `Stock`) VALUES ('I_04', 'C_02', 'Quần short', 'Quần short là những chiếc quần ngắn từ đầu gối trở lên, nó có nhiều chất liệu khác nhau. Quần Short vốn là một biến tấu của chiếc quần dài', 'Vietnam', '250000', 'Shoppea', '99');
INSERT INTO `sys`.`item` (`ItemID`, `ICategoryID`, `Name`, `IDescription`, `ItemLocation`, `Price`, `Brand`, `Stock`) VALUES ('I_05', 'C_02', 'Quần jeans', 'à một loại quần xuất xứ từ các nước phương Tây', 'Vietnam', '200000', 'Shoppea', '99');
INSERT INTO `sys`.`item` (`ItemID`, `ICategoryID`, `Name`, `IDescription`, `ItemLocation`, `Price`, `Brand`, `Stock`) VALUES ('I_06', 'C_03', 'Mũ lưỡi trai', 'Mũ lưỡi trai hay nón kết là một loại mũ được phổ biến rộng rãi ở nhiều quốc gia trên thế giới', 'Vietnam', '100000', 'Shoppea', '99');

drop table if exists `sys`.`category`;
CREATE TABLE `sys`.`category` (
  `CategoryID` VARCHAR(4) NOT NULL,
  `CName` VARCHAR(45) NOT NULL,
  `CDescription` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`CategoryID`))
COMMENT = 'Store all type of category ';

INSERT INTO `sys`.`category` (`CategoryID`, `CName`, `CDescription`) VALUES ('C_01', 'Áo', 'Áo là phần trang phục được mặc ở phần trên của cơ thể');
INSERT INTO `sys`.`category` (`CategoryID`, `CName`, `CDescription`) VALUES ('C_02', 'Quần', 'Quần là loại trang phục mặc từ eo đến mắt cá chân hoặc che đến đầu gối, cao hoặc thấp hơn đầu gối tùy loại, che phủ từng chân riêng biệt');
INSERT INTO `sys`.`category` (`CategoryID`, `CName`, `CDescription`) VALUES ('C_03', 'Mũ', 'Mũ là vật dụng để che đầu');

-- USER
drop table if exists `sys`.`user`;
CREATE TABLE `sys`.`user` (
  `UserID` INT NOT NULL,
  `UserName` VARCHAR(255) NOT NULL,
  `UserFName` VARCHAR(255) NOT NULL,
  `UserLNname` VARCHAR(255) NOT NULL,
  `Password` VARCHAR(255) NOT NULL,
  `Email` VARCHAR(255) NOT NULL,
  `Phone` VARCHAR(15) NOT NULL,
  `Address1` VARCHAR(255) NOT NULL,
  `Address2` VARCHAR(255),
  `City` VARCHAR(255) NOT NULL,
  `Country` VARCHAR(255) NOT NULL,
  `PostalCode` VARCHAR(255) NOT NULL,
  `Type` VARCHAR(255) NOT NULL,
  `Provider` VARCHAR(255) NOT NULL,
  `AccountNo` VARCHAR(255),
  `ExpireDate` DATE NOT NULL,
  `Voucher` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`UserID`)
);


-- CUSTOMER
drop table if exists `sys`.`customer`;
CREATE TABLE `sys`.`customer`(
  `CustomerID` INT PRIMARY KEY REFERENCES `sys`.`user`(`UserID`),
  `C_RatingID` INT PRIMARY KEY,
  `SuccessOrder` VARCHAR(255)[],
  `PendingOrder` VARCHAR(255)[],
  `FailedOrder` VARCHAR(255)[]
  );

  -- SHIPPER
drop table if exists `sys`.`shipper`;
CREATE TABLE `sys`.`shipper`(
  `ShipperID` INT PRIMARY KEY REFERENCES `sys`.`user`(`UserID`),
  `VehicleType` VARCHAR(255) NOT NULL,
  `LicensePlate` VARCHAR(255) NOT NULL,
  `ShipperName` VARCHAR(255) NOT NULL
  );


-- ADMIN
drop table if exists `sys`.`admin`;
CREATE TABLE `sys`.`admin` (
  `AdminID` INT PRIMARY KEY REFERENCES `sys`.`user`(`UserID`)
);




-- PROMOTION
drop table if exists `sys`.`promotion`;
CREATE TABLE `sys`.`promotion` (
  `PromotionID` INT NOT NULL,
  `Description` VARCHAR(255) NOT NULL,
  `PromotionName` VARCHAR(255) NOT NULL,
  `PromotionDuration` DATE NOT NULL,
  `BeginTime` DATE NOT NULL,
  `EndTime` DATE NOT NULL,
  PRIMARY KEY (`PromotionID`)
);

-- SAMPLE
drop table if exists `sys`.`sample`;
CREATE TABLE `sys`.`sample`(
  `SampleID` INT PRIMARY KEY REFERENCES `sys`.`promotion`(`PromotionID`),
  `Condition` VARCHAR(255)
  );

-- VOUCHER
drop table if exists `sys`.`voucher`;
CREATE TABLE `sys`.`voucher`(
  `V_Promotion_ID` INT PRIMARY KEY REFERENCES `sys`.`promotion`(`PromotionID`),
  `VoucherCode` VARCHAR(255) PRIMARY KEY NOT NULL,
  `VoucherName` VARCHAR(255) NOT NULL,
  `Rate` FLOAT NOT NULL,
  `ExpireDate` DATE NOT NULL,
  `Active` INT NOT NULL,
  `MoneyDiscount` FLOAT NOT NULL
  );

-- ORDER
drop table if exists `sys`.`order`;
CREATE TABLE `sys`.`order`(
  `OrderID` INT PRIMARY KEY NOT NULL,
  `SendDate` DATE NOT NULL,
  `NoDeliver` INT NOT NULL,
  `ExpectedDeliverDate` DATE,
  `O_Location` VARCHAR(255) NOT NULL,
  `Cash` INT NOT NULL,
  `Card` INT NOT NULL,
  `TotalPayment` FLOAT NOT NULL,
  `State` VARCHAR(255) NOT NULL

)


-- RATING 
drop table if exists `sys`.`rating`;
CREATE TABLE `sys`.`rating` (
    `RatingID` INT PRIMARY KEY REFERENCES `sys`.`customer`(`CRatingID`),
    `ItemID` INT PRIMARY KEY REFERENCES `sys`.`item`(`ItemID`),
    `Description` VARCHAR(255) NOT NULL
)







-- GIVEAWAY
drop table if exists `sys`.`giveaway`;
CREATE TABLE `sys`.`giveaway` (
    `GASampleID` INT PRIMARY KEY REFERENCES `sys`.`sample`(`SampleID`),
    `GAItemID` INT PRIMARY KEY REFERENCES `sys`.`item`(`ItemID`),
    `Quantity` INT NOT NULL
)

-- CONTAIN
drop table if exists `sys`.`contain`;
CREATE TABLE `sys`.`contain`(
  `C_OrderID` INT PRIMARY KEY REFERENCES `sys`.`order`(`OrderID`),
  `C_ItemID` INT PRIMARY KEY REFERENCES `sys`.`item`(`ItemID`),
  `Quantity` INT NOT NULL
);
