DELIMITER $$
DROP PROCEDURE IF EXISTS `nextIDAch`$$
CREATE PROCEDURE `nextIDAch`(IN transDate CHAR(50))
BEGIN
SET @sql = CONCAT('UPDATE customer_secuencia_ach SET next_val = (@nextValue := next_val +1) WHERE transfer_date="',transDate,'"');
PREPARE stmt FROM @sql;
EXECUTE stmt;
SELECT @nextValue as nextValue;
END$$
DELIMITER ;
