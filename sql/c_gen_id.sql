DELIMITER $$
DROP PROCEDURE IF EXISTS `nextIDGen`$$
CREATE PROCEDURE `nextIDGen`(IN pTableName CHAR(50))
BEGIN
SET @sql = CONCAT('UPDATE ', pTableName, ' SET next_val = (@nextValue := next_val +1)');
PREPARE stmt FROM @sql;
EXECUTE stmt;
SELECT @nextValue as nextValue;
END$$
DELIMITER ;
