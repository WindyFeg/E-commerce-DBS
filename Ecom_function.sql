
DROP function IF EXISTS `full_name`;

DELIMITER $$

CREATE FUNCTION `full_name` (first_name CHAR(255), last_name CHAR(255))
RETURNS CHAR(255) DETERMINISTIC
BEGIN

RETURN CONCAT(first_name,' ',last_name);
END$$

DELIMITER ;
