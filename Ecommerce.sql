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

