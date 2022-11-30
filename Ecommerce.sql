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

-- =CONCAT("INSERT `sys`.`user` (`UserID`, `Phone`, `Password`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES('",A2,"','",B2,"','",C2,"','",D2,"','",E2,"','",F2,"','",G2,"','",H2,"','",I2,"','",K2,"','",L2,"')")
INSERT `sys`.`user` (`UserID`, `Phone`, `Password`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES('1','523444365','admin','admin','admin@gmail.com','Minh Hoàng','Võ','Ho Chi Minh','32 Phan Xích Long - Phú Nhuận','725000','Vietnam')
INSERT `sys`.`user` (`UserID`, `Phone`, `Password`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES('2','333214324','khanh12345','12323','gonzalo.bergstrom@towne.com','Quốc Khánh','Bùi','Ho Chi Minh','125 Trương Định - Tân Bình','700915','Vietnam')
INSERT `sys`.`user` (`UserID`, `Phone`, `Password`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES('3','823388343','minhqlcn1235','42133','ukerluke@strosin.com','Nhật Minh','Phạm','Ho Chi Minh','219 Hòa Hảo - Quận 10','700910','Vietnam')
INSERT `sys`.`user` (`UserID`, `Phone`, `Password`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES('4','831123333','nhansuper654','44163','sfeil@yahoo.com','Trọng Nhân','Trần','Ho Chi Minh','25 Hậu Giang - Quận 6','746000','Vietnam')
INSERT `sys`.`user` (`UserID`, `Phone`, `Password`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES('5','461635152','nhut258','32442','fisher.gustave@bernhard.com','Minh Nhựt','Trần','Ho Chi Minh','52 Lê Văn Duyệt - Quận 9','715000','Vietnam')
INSERT `sys`.`user` (`UserID`, `Phone`, `Password`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES('6','453561346','dinhramos444','53261','gbogan@thiel.biz','Phương Đình','Trần','Ho Chi Minh','12 Bạch Đằng - Bình Thạnh','717000','Vietnam')
INSERT `sys`.`user` (`UserID`, `Phone`, `Password`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES('7','666112661','huy123','44311','whitney55@yahoo.com','Đình Phong','Trần','Ho Chi Minh','24 Võ Văn Ngân - Thủ Đức','720100','Vietnam')
INSERT `sys`.`user` (`UserID`, `Phone`, `Password`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES('8','555266443','thuanpham05','56155','cooper.christiansen@blick.com','Gia Nghi','Nguyễn','Ho Chi Minh','45 Xuân Diệu - Thủ Đức','721500','Vietnam')
INSERT `sys`.`user` (`UserID`, `Phone`, `Password`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES('9','241344241','vy123','33431','howe.tyra@gmail.com','Tường Lâm','Lê','Ho Chi Minh','78 Kỳ Hòa - Quận 10','700940','Vietnam')
INSERT `sys`.`user` (`UserID`, `Phone`, `Password`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES('10','666545245','canhxuan578','51126','feest.michaela@yahoo.com','Chấn Khang','Lâm','Ho Chi Minh','98 Quang Trung - Gò Vấp','728100','Vietnam')
INSERT `sys`.`user` (`UserID`, `Phone`, `Password`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES('11','134861136','xuan23','as5d1','xuan23@gmail.com','Xuân Bách','Trần','Ho Chi Minh','Lý Thánh Tông - Quận Tân Phú','715000','Vietnam')
INSERT `sys`.`user` (`UserID`, `Phone`, `Password`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES('12','311649622','corn12','asfsga','Iilovecorn@yahoo.com','Đình Huy','Ngô','Ho Chi Minh','Chử Đồng Tử - Quận 10','717000','Vietnam')
INSERT `sys`.`user` (`UserID`, `Phone`, `Password`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES('13','150619498','lyluan_1','lylausn4','lyluanchinhtri@yahoo.com','Lý Gia Huy','Nguyễn','Ho Chi Minh','45 Lý thường Kiệt - Quận 10','720100','Vietnam')
INSERT `sys`.`user` (`UserID`, `Phone`, `Password`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES('14','206615195','Study2','agzfd26s5','strongasfu@gmail.com','Mạnh Quân','Lý','Ho Chi Minh','786A Hai Bà Trưng - Quận 1','721500','Vietnam')

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
