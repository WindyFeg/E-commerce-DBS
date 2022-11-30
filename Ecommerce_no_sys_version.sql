drop database if exists `sql_ecommerce`;
create database `sql_ecommerce`;
use  `sql_ecommerce`;

set names utf8 ;
set character_set_client = utf8;

drop table if exists `item`;
CREATE TABLE `item` (
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

INSERT INTO  `item` (`ItemID`, `ICategoryID`, `Name`, `IDescription`, `ItemLocation`, `Price`, `Brand`, `Stock`) VALUES ('I_01', 'C_01', 'Áo khoác', 'Áo khoác là loại áo mặc bên ngoài, được sử dụng bởi cả nam và nữ, nhằm mục đích giữ ấm hoặc tạo tính thời trang', 'Vietnam', '400000', 'Shoppea', '99');
INSERT INTO  `item` (`ItemID`, `ICategoryID`, `Name`, `IDescription`, `ItemLocation`, `Price`, `Brand`, `Stock`) VALUES ('I_02', 'C_01', 'Áo Polo', 'Áo polo là loại áo thun cổ bẻ, về hình thức cổ áo giống với cổ sơ mi', 'Vietnam', '200000', 'Shoppea', '99');
INSERT INTO  `item` (`ItemID`, `ICategoryID`, `Name`, `IDescription`, `ItemLocation`, `Price`, `Brand`, `Stock`) VALUES ('I_03', 'C_01', 'Áo sơ mi', 'là loại hàng may mặc bao bọc lấy thân mình và hai cánh tay của cơ thể', 'Vietnam', '300000', 'Shoppea', '99');
INSERT INTO  `item` (`ItemID`, `ICategoryID`, `Name`, `IDescription`, `ItemLocation`, `Price`, `Brand`, `Stock`) VALUES ('I_04', 'C_02', 'Quần short', 'Quần short là những chiếc quần ngắn từ đầu gối trở lên, nó có nhiều chất liệu khác nhau. Quần Short vốn là một biến tấu của chiếc quần dài', 'Vietnam', '250000', 'Shoppea', '99');
INSERT INTO  `item` (`ItemID`, `ICategoryID`, `Name`, `IDescription`, `ItemLocation`, `Price`, `Brand`, `Stock`) VALUES ('I_05', 'C_02', 'Quần jeans', 'à một loại quần xuất xứ từ các nước phương Tây', 'Vietnam', '200000', 'Shoppea', '99');
INSERT INTO  `item` (`ItemID`, `ICategoryID`, `Name`, `IDescription`, `ItemLocation`, `Price`, `Brand`, `Stock`) VALUES ('I_06', 'C_03', 'Mũ lưỡi trai', 'Mũ lưỡi trai hay nón kết là một loại mũ được phổ biến rộng rãi ở nhiều quốc gia trên thế giới', 'Vietnam', '100000', 'Shoppea', '99');

drop table if exists  `category`;
CREATE TABLE  `category` (
  `CategoryID` VARCHAR(4) NOT NULL,
  `CName` VARCHAR(45) NOT NULL,
  `CDescription` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`CategoryID`))
COMMENT = 'Store all type of category ';

INSERT INTO  `category` (`CategoryID`, `CName`, `CDescription`) VALUES ('C_01', 'Áo', 'Áo là phần trang phục được mặc ở phần trên của cơ thể');
INSERT INTO  `category` (`CategoryID`, `CName`, `CDescription`) VALUES ('C_02', 'Quần', 'Quần là loại trang phục mặc từ eo đến mắt cá chân hoặc che đến đầu gối, cao hoặc thấp hơn đầu gối tùy loại, che phủ từng chân riêng biệt');
INSERT INTO  `category` (`CategoryID`, `CName`, `CDescription`) VALUES ('C_03', 'Mũ', 'Mũ là vật dụng để che đầu');
INSERT INTO  `category` (`CategoryID`, `CName`, `CDescription`) VALUES ('C_04', 'Tất', 'Tất là một loại vật dụng đi vào bàn chân người vào mùa lạnh hoặc khi đi giày');
INSERT INTO  `category` (`CategoryID`, `CName`, `CDescription`) VALUES ('C_05', 'Giày ', 'Giày là một vật dụng đi vào bàn chân con người để bảo vệ và làm êm chân trong');


-- USER
drop table if exists  `user`;
CREATE TABLE  `user` (
  `UserID` INT NOT NULL,
  `Phone` VARCHAR(15) NOT NULL,
  `UserName` VARCHAR(255) NOT NULL,
  `Password` VARCHAR(255) NOT NULL,
  `Email` VARCHAR(255) NOT NULL,
  `UserFName` VARCHAR(255) NOT NULL,
  `UserLNname` VARCHAR(255) NOT NULL,
  `City` VARCHAR(255) NOT NULL,
  `Address1` VARCHAR(255) NOT NULL,
  `Address2` VARCHAR(255),
  `PostalCode` VARCHAR(255) NOT NULL,
  `Country` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`UserID`)
);

INSERT INTO  `user` (`UserID`, `Phone`, `UserName`, `Password`, `Email`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES ('1', '523444365', 'admin', 'admin', 'admin@gmail.com', 'Minh Hoàng', 'Võ', 'Ho Chi Minh', '32 Phan Xích Long - Phú Nhuận', '725000', 'Vietnam');
INSERT INTO  `user` (`UserID`, `Phone`, `UserName`, `Password`, `Email`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES ('2', '333214324', 'khanh12345', '12323', 'gonzalo.bergstrom@towne.com', 'Quốc Khánh', 'Bùi', 'Ho Chi Minh', '125 Trương Định - Tân Bình', '700915', 'Vietnam');
INSERT INTO  `user` (`UserID`, `Phone`, `UserName`, `Password`, `Email`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES ('3', '823388343', 'minhqlcn1235', '42133', 'ukerluke@strosin.com', 'Nhật Minh', 'Phạm', 'Ho Chi Minh', '219 Hòa Hảo - Quận 10', '700910', 'Vietnam');
INSERT INTO  `user` (`UserID`, `Phone`, `UserName`, `Password`, `Email`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES ('4', '831123333', 'nhansuper654', '44163', 'sfeil@yahoo.com', 'Trọng Nhân', 'Trần', 'Ho Chi Minh', '25 Hậu Giang - Quận 6', '746000', 'Vietnam');
INSERT INTO  `user` (`UserID`, `Phone`, `UserName`, `Password`, `Email`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES ('5', '461635152', 'nhut258', '32442', 'fisher.gustave@bernhard.com', 'Minh Nhựt', 'Trần', 'Ho Chi Minh', '52 Lê Văn Duyệt - Quận 9', '715000', 'Vietnam');
INSERT INTO  `user` (`UserID`, `Phone`, `UserName`, `Password`, `Email`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES ('6', '453561346', 'dinhramos444', '53261', 'gbogan@thiel.biz', 'Phương Đình', 'Trần', 'Ho Chi Minh', '12 Bạch Đằng - Bình Thạnh', '717000', 'Vietnam');
INSERT INTO  `user` (`UserID`, `Phone`, `UserName`, `Password`, `Email`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES ('7', '666112661', 'huy123', '44311', 'whitney55@yahoo.com', 'Đình Phong', 'Trần', 'Ho Chi Minh', '24 Võ Văn Ngân - Thủ Đức', '720100', 'Vietnam');
INSERT INTO  `user` (`UserID`, `Phone`, `UserName`, `Password`, `Email`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES ('8', '555266443', 'thuanpham05', '56155', 'cooper.christiansen@blick.com', 'Gia Nghi', 'Nguyễn', 'Ho Chi Minh', '45 Xuân Diệu - Thủ Đức', '721500', 'Vietnam');
INSERT INTO  `user` (`UserID`, `Phone`, `UserName`, `Password`, `Email`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES ('9', '241344241', 'vy123', '33431', 'howe.tyra@gmail.com', 'Tường Lâm', 'Lê', 'Ho Chi Minh', '78 Kỳ Hòa - Quận 10', '700940', 'Vietnam');
INSERT INTO  `user` (`UserID`, `Phone`, `UserName`, `Password`, `Email`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES ('10', '666545245', 'canhxuan578', '51126', 'feest.michaela@yahoo.com', 'Chấn Khang', 'Lâm', 'Ho Chi Minh', '98 Quang Trung - Gò Vấp', '728100', 'Vietnam');
INSERT INTO  `user` (`UserID`, `Phone`, `UserName`, `Password`, `Email`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES ('11', '134861136', 'xuan23', 'as5d1', 'xuan23@gmail.com', 'Xuân Bách', 'Trần', 'Ho Chi Minh', 'Lý Thánh Tông - Quận Tân Phú', '715000', 'Vietnam');
INSERT INTO  `user` (`UserID`, `Phone`, `UserName`, `Password`, `Email`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES ('12', '311649622', 'corn12', 'asfsga', 'Iilovecorn@yahoo.com', 'Đình Huy', 'Ngô', 'Ho Chi Minh', 'Chử Đồng Tử - Quận 10', '717000', 'Vietnam');
INSERT INTO  `user` (`UserID`, `Phone`, `UserName`, `Password`, `Email`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES ('13', '150619498', 'lyluan_1', 'lylausn4', 'lyluanchinhtri@yahoo.com', 'Lý Gia Huy', 'Nguyễn', 'Ho Chi Minh', '45 Lý thường Kiệt - Quận 10', '720100', 'Vietnam');
INSERT INTO  `user` (`UserID`, `Phone`, `UserName`, `Password`, `Email`, `UserFName`, `UserLNname`, `City`, `Address1`, `PostalCode`, `Country`) VALUES ('14', '206615195', 'Study2', 'agzfd26s5', 'strongasfu@gmail.com', 'Mạnh Quân', 'Lý', 'Ho Chi Minh', '786A Hai Bà Trưng - Quận 1', '721500', 'Vietnam');



-- ADMIN 
drop table if exists  `admin`;
CREATE TABLE  `admin` (
  `AdminID` INT NOT NULL,
  PRIMARY KEY (`AdminID`));

INSERT INTO  `admin` (`AdminID`) VALUES ('1');

-- CUSTOMER
drop table if exists  `customer`;
CREATE TABLE  `customer` (
  `cusRatingID` VARCHAR(255) NOT NULL,
  `cID` VARCHAR(255) NOT NULL,
  `failedOrder` INT NULL,
  `pendingOrder` INT NULL,
  `successOrder` INT NULL,
  PRIMARY KEY (`cID`, `cusRatingID`));
  
INSERT INTO  `customer` (`cusRatingID`, `cID`, `failedOrder`, `pendingOrder`, `successOrder`) VALUES ('R_01', '2', '0', '1', '0');
INSERT INTO  `customer` (`cusRatingID`, `cID`, `failedOrder`, `pendingOrder`, `successOrder`) VALUES ('R_02', '3', '0', '0', '1');
INSERT INTO  `customer` (`cusRatingID`, `cID`, `failedOrder`, `pendingOrder`, `successOrder`) VALUES ('R_03', '4', '0', '0', '2');
INSERT INTO  `customer` (`cusRatingID`, `cID`, `failedOrder`, `pendingOrder`, `successOrder`) VALUES ('R_04', '5', '0', '0', '2');
INSERT INTO  `customer` (`cusRatingID`, `cID`, `failedOrder`, `pendingOrder`, `successOrder`) VALUES ('R_05', '6', '1', '0', '2');

  -- SHIPPER
  drop table if exists  `shipper`;
  CREATE TABLE  `shipper` (
  `sID` INT NOT NULL,
  `vehicleType` VARCHAR(255) NULL,
  `licensePlate` VARCHAR(255) NULL,
  `shipperName` VARCHAR(255) NULL,
  PRIMARY KEY (`sID`));
  
INSERT INTO  `shipper` (`sID`, `vehicleType`, `licensePlate`, `shipperName`) VALUES ('7', 'motorcycle ', '94H3-1245', 'Trần Đình Phong');
INSERT INTO  `shipper` (`sID`, `vehicleType`, `licensePlate`, `shipperName`) VALUES ('8', 'motorcycle ', '35H3-12444', 'Nguyễn Gia Nghi');
INSERT INTO  `shipper` (`sID`, `vehicleType`, `licensePlate`, `shipperName`) VALUES ('9', 'motorcycle ', '91A4-2374', 'Lê Tường Lâm');
INSERT INTO  `shipper` (`sID`, `vehicleType`, `licensePlate`, `shipperName`) VALUES ('10', 'motorcycle ', '14E3-5748', 'Lâm Chấn Khang');
INSERT INTO  `shipper` (`sID`, `vehicleType`, `licensePlate`, `shipperName`) VALUES ('11', 'motorcycle ', '62M3-3536', 'Trần Xuân Bách');
INSERT INTO  `shipper` (`sID`, `vehicleType`, `licensePlate`, `shipperName`) VALUES ('12', 'motorcycle ', '63B3-85039', 'Ngô Đình Huy');
INSERT INTO  `shipper` (`sID`, `vehicleType`, `licensePlate`, `shipperName`) VALUES ('13', 'motorcycle ', '59B1-15698', 'Nguyễn Lý Gia Huy');
INSERT INTO  `shipper` (`sID`, `vehicleType`, `licensePlate`, `shipperName`) VALUES ('14', 'motorcycle ', '60G1-15596', 'Lý Mạnh Quân');

  -- ORDER
drop table if exists  `order`;
CREATE TABLE  `order` (
  `orderID` VARCHAR(255) NOT NULL,
  `cID` INT NOT NULL,
  `sendDate` VARCHAR(255) NULL,
  `noDelivered` INT NULL,
  `expectedDeliveryDate` DATETIME NULL,
  `oLocation` VARCHAR(255) NULL,
  `cash` TINYINT NULL,
  `card` TINYINT NULL,
  `totalPayment` INT NULL,
  `state` VARCHAR(255) NULL,
  PRIMARY KEY (`orderID`, `cID`));
  
  INSERT INTO  `order` (`orderID`, `cID`, `sendDate`, `noDelivered`, `expectedDeliveryDate`, `oLocation`, `cash`, `card`, `totalPayment`, `state`) VALUES ('O_01', '2', '2022-11-25 12:00:00', '9', '2022-12-5 12:00:00', '32 Phan Xích Long - Phú Nhuận', '1', '0', '500000', 'Pending Order');
INSERT INTO  `order` (`orderID`, `cID`, `sendDate`, `noDelivered`, `expectedDeliveryDate`, `oLocation`, `cash`, `card`, `totalPayment`, `state`) VALUES ('O_02', '3', '2022-11-8 12:00:00', '7', '2022-11-15 12:00:00', '219 Hòa Hảo - Quận 10', '0', '1', '1100000', 'Success Order');
INSERT INTO  `order` (`orderID`, `cID`, `sendDate`, `noDelivered`, `expectedDeliveryDate`, `oLocation`, `cash`, `card`, `totalPayment`, `state`) VALUES ('O_03', '4', '2022-10-20 12:00:00', '2', '2022-10-25 12:00:00', '12 Bạch Đằng - Bình Thạnh', '1', '0', '300000', 'Success Order');
INSERT INTO  `order` (`orderID`, `cID`, `sendDate`, `noDelivered`, `expectedDeliveryDate`, `oLocation`, `cash`, `card`, `totalPayment`, `state`) VALUES ('O_04', '4', '2022-10-31 12:00:00', '3', '2022-11-5 12:00:00', '25 Hậu Giang - Quận 6', '1', '0', '950000', 'Success Order');
INSERT INTO  `order` (`orderID`, `cID`, `sendDate`, `noDelivered`, `expectedDeliveryDate`, `oLocation`, `cash`, `card`, `totalPayment`, `state`) VALUES ('O_05', '5', '2022-9-5 12:00:00', '1', '2022-9-10 12:00:00', '24 Võ Văn Ngân - Thủ Đức', '0', '1', '150000', 'Success Order');
INSERT INTO  `order` (`orderID`, `cID`, `sendDate`, `noDelivered`, `expectedDeliveryDate`, `oLocation`, `cash`, `card`, `totalPayment`, `state`) VALUES ('O_06', '5', '2022-11-10 12:00:00', '6', '2022-11-15 12:00:00', '78 Kỳ Hòa - Quận 10', '1', '0', '950000', 'Failed Order');


-- VOUCHER
drop table if exists  `voucher`;
CREATE TABLE  `voucher` (
  `vPromotionID` VARCHAR(255) NOT NULL,
  `voucherCode` VARCHAR(255) NOT NULL,
  `vName` VARCHAR(45) NULL,
  `rate` INT NULL,
  `expiredDate` DATETIME NULL,
  `validActive` TINYINT NULL,
  `moneyDiscount` INT NULL,
  PRIMARY KEY (`vPromotionID`, `voucherCode`));
  
INSERT INTO  `voucher` (`vPromotionID`, `voucherCode`, `vName`, `rate`, `expiredDate`, `validActive`, `moneyDiscount`) VALUES ('V_01', 'BLACKFRIDAY', 'Sale BlackFriday', '20', '2022-12-30 23:59:59', '0', '100000');
INSERT INTO  `voucher` (`vPromotionID`, `voucherCode`, `vName`, `rate`, `expiredDate`, `validActive`, `moneyDiscount`) VALUES ('V_02', 'AFF11FINAL', 'Free Ship', '15', '2022-12-15 23:59:59', '0', '50000');
INSERT INTO  `voucher` (`vPromotionID`, `voucherCode`, `vName`, `rate`, `expiredDate`, `validActive`, `moneyDiscount`) VALUES ('V_03', 'WEE78', 'Happy Weekend ', '0', '2022-12-31 23:59:59', '1', '50000');
INSERT INTO  `voucher` (`vPromotionID`, `voucherCode`, `vName`, `rate`, `expiredDate`, `validActive`, `moneyDiscount`) VALUES ('V_04', 'T11BANMOI30K2', 'New Users', '25', '2022-11-30 23:59:59', '1', '70000');
INSERT INTO  `voucher` (`vPromotionID`, `voucherCode`, `vName`, `rate`, `expiredDate`, `validActive`, `moneyDiscount`) VALUES ('V_05', 'SPPP3NOV8K', 'Discount 20,000 VND Minimum order 0 VND', '10', '2022-11-30 23:59:59', '0', '20000');
INSERT INTO  `voucher` (`vPromotionID`, `voucherCode`, `vName`, `rate`, `expiredDate`, `validActive`, `moneyDiscount`) VALUES ('V_06', 'LIFEMC11A', 'New Users', '15', '2022-12-2 23:59:59', '0', '15000');
INSERT INTO  `voucher` (`vPromotionID`, `voucherCode`, `vName`, `rate`, `expiredDate`, `validActive`, `moneyDiscount`) VALUES ('V_07', 'LIFEMC11B', 'New Users', '20', '2022-11-30 23:59:59', '1', '45000');
INSERT INTO  `voucher` (`vPromotionID`, `voucherCode`, `vName`, `rate`, `expiredDate`, `validActive`, `moneyDiscount`) VALUES ('V_08', 'COSBK100K', 'Discount 25.000 VND Minimum order 99.000 VND', '30', '2022-12-9 23:59:59', '1', '25000');
INSERT INTO  `voucher` (`vPromotionID`, `voucherCode`, `vName`, `rate`, `expiredDate`, `validActive`, `moneyDiscount`) VALUES ('V_09', 'LIFEMC11C', 'New Users', '15', '2022-12-5 23:59:59', '0', '35000');
INSERT INTO  `voucher` (`vPromotionID`, `voucherCode`, `vName`, `rate`, `expiredDate`, `validActive`, `moneyDiscount`) VALUES ('V_10', 'LIFEMC11BPA', 'New Users', '25', '2022-11-30 00:00:00 ', '0', '40000');

-- RATTING
drop table if exists  `rating`;
CREATE TABLE  `rating` (
  `ratingID` VARCHAR(255) NOT NULL,
  `rItemID` VARCHAR(255) NULL,
  `score` INT NULL,
  PRIMARY KEY (`ratingID`));
  
INSERT INTO  `rating` (`ratingID`, `rItemID`, `score`) VALUES ('R_1', 'I_01', '7');
INSERT INTO  `rating` (`ratingID`, `rItemID`, `score`) VALUES ('R_2', 'I_07', '8');
INSERT INTO  `rating` (`ratingID`, `rItemID`, `score`) VALUES ('R_3', 'I_03', '10');
INSERT INTO  `rating` (`ratingID`, `rItemID`, `score`) VALUES ('R_4', 'I_09', '6');
INSERT INTO  `rating` (`ratingID`, `rItemID`, `score`) VALUES ('R_5', 'I_05', '7');
INSERT INTO  `rating` (`ratingID`, `rItemID`, `score`) VALUES ('R_6', 'I_06', '9');
INSERT INTO  `rating` (`ratingID`, `rItemID`, `score`) VALUES ('R_7', 'I_03', '5');
INSERT INTO  `rating` (`ratingID`, `rItemID`, `score`) VALUES ('R_8', 'I_08', '8');
INSERT INTO  `rating` (`ratingID`, `rItemID`, `score`) VALUES ('R_9', 'I_04', '6');
INSERT INTO  `rating` (`ratingID`, `rItemID`, `score`) VALUES ('R_10', 'I_10', '7');
 
  -- SAMPLE
  drop table if exists  `sample`;
  CREATE TABLE  `sample` (
  `sampleID` VARCHAR(255) NOT NULL,
  `promotionID` VARCHAR(255) NOT NULL,
  `condition` VARCHAR(255) NULL,
  PRIMARY KEY (`sampleID`, `promotionID`));
  
  INSERT INTO  `sample` (`sampleID`, `promotionID`, `condition`) VALUES ('S_01', 'P_05', 'Khách hàng đã mua ít nhất 5 đơn trị giá > 200000 tại shop');
INSERT INTO  `sample` (`sampleID`, `promotionID`, `condition`) VALUES ('S_02', 'P_06', 'áp dụng cho sản phẩm cùng loại');
INSERT INTO  `sample` (`sampleID`, `promotionID`, `condition`) VALUES ('S_03', 'P_06', 'áp dụng cho sản phẩm cùng loại');
INSERT INTO  `sample` (`sampleID`, `promotionID`, `condition`) VALUES ('S_04', 'P_06', 'áp dụng cho sản phẩm cùng loại');
INSERT INTO  `sample` (`sampleID`, `promotionID`, `condition`) VALUES ('S_05', 'P_07', 'Khách hàng đã mua ít nhất 2 đơn trị giá > 100000 tại shop');

-- GIVE AWAY
   drop table if exists  `giveaway`;
  CREATE TABLE  `giveaway` (
  `gaSampleID` VARCHAR(255) NOT NULL,
  `gaItemID` VARCHAR(255) NOT NULL,
  `quantity` INT NULL,
  PRIMARY KEY (`gaSampleID`, `gaItemID`));
  
  INSERT INTO  `giveaway` (`gaSampleID`, `gaItemID`, `quantity`) VALUES ('S_01', 'I_06', '20');
INSERT INTO  `giveaway` (`gaSampleID`, `gaItemID`, `quantity`) VALUES ('S_01', 'I_02', '10');
INSERT INTO  `giveaway` (`gaSampleID`, `gaItemID`, `quantity`) VALUES ('S_01', 'I_03', '5');

  
  -- CONTAIN
  drop table if exists  `contain`;
  CREATE TABLE  `contain` (
  `cOrderID` VARCHAR(255) NOT NULL,
  `cItemID` VARCHAR(255) NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`cOrderID`, `cItemID`));
  
  INSERT INTO  `contain` (`cOrderID`, `cItemID`, `quantity`) VALUES ('O-01', 'I_06', '1');
INSERT INTO  `contain` (`cOrderID`, `cItemID`, `quantity`) VALUES ('O-01', 'I_02', '1');
INSERT INTO  `contain` (`cOrderID`, `cItemID`, `quantity`) VALUES ('O-01', 'I_05', '1');
INSERT INTO  `contain` (`cOrderID`, `cItemID`, `quantity`) VALUES ('O-02', 'I_06', '1');
INSERT INTO  `contain` (`cOrderID`, `cItemID`, `quantity`) VALUES ('O-02', 'I_01', '2');
INSERT INTO  `contain` (`cOrderID`, `cItemID`, `quantity`) VALUES ('O-02', 'I_02', '1');
INSERT INTO  `contain` (`cOrderID`, `cItemID`, `quantity`) VALUES ('O-03', 'I_03', '1');
INSERT INTO  `contain` (`cOrderID`, `cItemID`, `quantity`) VALUES ('O-04', 'I_04', '1');
INSERT INTO  `contain` (`cOrderID`, `cItemID`, `quantity`) VALUES ('O-04', 'I_05', '1');
INSERT INTO  `contain` (`cOrderID`, `cItemID`, `quantity`) VALUES ('O-04', 'I_06', '1');
INSERT INTO  `contain` (`cOrderID`, `cItemID`, `quantity`) VALUES ('O-04', 'I_07', '2');
INSERT INTO  `contain` (`cOrderID`, `cItemID`, `quantity`) VALUES ('O-05', 'I_08', '3');
INSERT INTO  `contain` (`cOrderID`, `cItemID`, `quantity`) VALUES ('O-06', 'I_09', '1');
INSERT INTO  `contain` (`cOrderID`, `cItemID`, `quantity`) VALUES ('O-06', 'I_10', '1');
INSERT INTO  `contain` (`cOrderID`, `cItemID`, `quantity`) VALUES ('O-06', 'I_05', '1');
INSERT INTO  `contain` (`cOrderID`, `cItemID`, `quantity`) VALUES ('O-06', 'I_02', '2');

-- PROMOTION
  drop table if exists  `promotion`;
  CREATE TABLE  `promotion` (
  `promotionID` VARCHAR(255) NOT NULL,
  `description` VARCHAR(255) NULL,
  `pName` VARCHAR(255) NULL,
  `duration` VARCHAR(255) NULL,
  `beginTime` DATETIME NULL,
  `endTime` VARCHAR(45) NULL,
  PRIMARY KEY (`promotionID`));

INSERT INTO  `promotion` (`promotionID`, `description`, `pName`, `duration`, `beginTime`, `endTime`) VALUES ('P_01', 'Black Friday là ngày mua sắm lớn với nhiều chiến dịch giảm giá sâu, nhiều deal hấp dẫn', 'Sale BlackFriday', '1 tuần', '2022-11-23 00:00:00', '2022-11-30 23:59:59');
INSERT INTO  `promotion` (`promotionID`, `description`, `pName`, `duration`, `beginTime`, `endTime`) VALUES ('P_02', 'Cuối tuần không biết mặc gì, hãy đến với chúng tôi vì chúng tôi biết bạn cần mặc gì', 'Happy weekend ', '2 ngày', '2022-12-2 00:00:00', '2022-12-3 23:59:59');
INSERT INTO  `promotion` (`promotionID`, `description`, `pName`, `duration`, `beginTime`, `endTime`) VALUES ('P_03', 'chương trình khuyến mãi đặc biệt trên shop, cung cấp cho khách hàng những ưu đãi giảm giá vô cùng hấp dẫn áp dụng cho một số sản phẩm nhất định trong khung thời gian giới hạn', 'Flash SALE', '2 giờ', '2022-11-15 00:00:00', '2022-11-15 02:00:00');
INSERT INTO  `promotion` (`promotionID`, `description`, `pName`, `duration`, `beginTime`, `endTime`) VALUES ('P_04', 'Nhằm tạo điều kiện cho trẻ em nghèo vùng biên giới được đón Tết Trung thu vui tươi và ý nghĩa', 'Đêm ấm áp', '1 ngày', '2022-6-24 00:00:00', '2022-6-24 23:59:59');
INSERT INTO  `promotion` (`promotionID`, `description`, `pName`, `duration`, `beginTime`, `endTime`) VALUES ('P_05', 'Trải nghiệm thử sản phẩm mẫu của chúng tôi hoàn toàn miễn phí', 'Free sample', '3 ngày', '2022-8-17 00:00:00', '2022-8-20 23:59:59');
INSERT INTO  `promotion` (`promotionID`, `description`, `pName`, `duration`, `beginTime`, `endTime`) VALUES ('P_06', 'Chương trình mua 2 tính tiền 3 áp dụng cho mọi sản phẩm cùng loại', 'Buy 2 get 3', '1 tuần', '2022-12-10 00:00:00', '2022-12-17 23:59:59');
INSERT INTO  `promotion` (`promotionID`, `description`, `pName`, `duration`, `beginTime`, `endTime`) VALUES ('P_07', 'Tặng ngẫu nhiên cho khách hàng mua 2 món có trị giá > 100K', 'Lovely customer', '1 tháng', '2022-11-11 00:00:00', '2022-12-11 23:59:59');







